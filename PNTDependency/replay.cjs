// Compile every non-Mathlib dependency from the pinned source snapshot.
const fs = require('node:fs');
const path = require('node:path');
const crypto = require('node:crypto');
const {spawnSync} = require('node:child_process');
const {auditOutput, selfTest} = require('./audit-output.cjs');
const root = __dirname;
const evidence = path.join(root, '.replay');
const build = path.join(evidence, 'build');
const sha = value => crypto.createHash('sha256').update(value).digest('hex');
const hashFile = file => sha(fs.readFileSync(file));
const receiptPath = path.join(root, 'replay-receipt.json');
const manifest = JSON.parse(fs.readFileSync(path.join(root, 'provenance.json'), 'utf8'));
const packages = path.resolve(process.env.PNT_MATHLIB_PACKAGES || path.join(root, '../.lake/packages'));
const lean = process.env.PNT_LEAN || path.join(process.env.HOME,
  '.elan/toolchains/leanprover--lean4---v4.34.0-rc2/bin/lean');
const receipt = {verification_status: 'in_progress', started_at: new Date().toISOString(),
  network_used: false, old_pnt_artifacts_used: false, compiled: [],
  scope: manifest.scope, h158_global_arithmetic_bound_proved: false};
const save = () => fs.writeFileSync(receiptPath, JSON.stringify(receipt, null, 2) + '\n');
function check(condition, message) { if (!condition) throw Error(message); }
function checkedRun(command, args, options = {}) {
  const result = spawnSync(command, args, {encoding: 'utf8', timeout: 10000,
    killSignal: 'SIGKILL', maxBuffer: 16 * 1024 * 1024, ...options});
  check(result.status === 0 && !result.error, `${command} failed: ${result.error || result.stderr || result.stdout}`);
  return result;
}
function validateSources() {
  const paths = [...manifest.modules.map(m => m.path), ...manifest.provenance_files.map(f => f.path)];
  const hashes = {};
  for (const row of [...manifest.modules, ...manifest.provenance_files]) {
    check(!path.isAbsolute(row.path) && !row.path.split('/').includes('..'), 'Unsafe source path');
    const actual = hashFile(path.join(root, row.path));
    check(actual === row.sha256, `Source integrity mismatch: ${row.path}`);
    hashes[row.path] = actual;
  }
  for (const [file, key] of [['lakefile.toml', 'lakefile_sha256'], ['lean-toolchain', 'toolchain_sha256']])
    check(hashFile(path.join(root, file)) === manifest.configuration[key], `Configuration mismatch: ${file}`);
  check(manifest.source_pruning && manifest.excluded_declarations.length === 4,
    'Missing source-selection record');
  for (const file of [...fs.readdirSync(root).filter(f => f.endsWith('.cjs')),
    'provenance.json', 'lakefile.toml', 'lean-toolchain'])
    hashes[file] = hashFile(path.join(root, file));
  return hashes;
}
function compile(source, output, env, name) {
  const args = ['-j1'];
  if (!name.startsWith('Architect')) args.push('-DautoImplicit=false', '-DrelaxedAutoImplicit=false');
  if (output) { fs.mkdirSync(path.dirname(output), {recursive: true}); args.push('-o', output); }
  args.push(source);
  const start = Date.now();
  const result = spawnSync(lean, args, {cwd: path.join(root, 'src'), env, encoding: 'utf8',
    timeout: 240000, killSignal: 'SIGKILL', maxBuffer: 16 * 1024 * 1024});
  const text = (result.stdout || '') + (result.stderr || '');
  const log = path.join(evidence, name.replaceAll('.', '_') + '.log');
  fs.writeFileSync(log, text);
  const record = {module: name, returncode: result.status, signal: result.signal,
    error: result.error?.message, elapsed_seconds: (Date.now() - start) / 1000,
    log: path.relative(root, log), args};
  receipt.compiled.push(record);
  save();
  check(result.status === 0 && !result.error, `Compile failed: ${name}\n${text}`);
  check(!text.includes('declaration uses `sorry`'), `Unfinished proof in ${name}`);
  console.log(`${name}: compiled (${record.elapsed_seconds}s)`);
  return text;
}
save();
try {
  receipt.audit_parser_tests = selfTest();
  const before = validateSources();
  receipt.input_sha256 = before;
  const mathlibManifestPath = path.join(packages, 'mathlib/lake-manifest.json');
  const parentManifestPath = path.join(root, '../lake-manifest.json');
  const parentManifest = JSON.parse(fs.readFileSync(parentManifestPath, 'utf8'));
  const packagePins = parentManifest.packages;
  check(packagePins.find(p => p.name === 'mathlib')?.rev === manifest.mathlib, 'Main Mathlib pin mismatch');
  const packageRoots = [];
  receipt.foundation_packages = [];
  for (const pkg of packagePins) {
    // A parent may add unrelated local packages. Only its pinned Mathlib closure is allowed.
    const mathlibClosure = JSON.parse(fs.readFileSync(mathlibManifestPath, 'utf8')).packages.map(p => p.name);
    if (pkg.name !== 'mathlib' && !mathlibClosure.includes(pkg.name)) continue;
    check(pkg.type === 'git' && /^[a-f0-9]{40}$/.test(pkg.rev), `Unpinned foundation: ${pkg.name}`);
    const dir = path.join(packages, pkg.name);
    const actual = checkedRun('git', ['rev-parse', 'HEAD'], {cwd: dir}).stdout.trim();
    check(actual === pkg.rev, `Foundation revision mismatch: ${pkg.name}`);
    const lib = path.join(dir, '.lake/build/lib/lean');
    check(!fs.existsSync(path.join(lib, 'PrimeNumberTheoremAnd')) &&
      !fs.existsSync(path.join(lib, 'MainlineThetaPrefix.olean')), 'Contaminated foundation search root');
    if (fs.existsSync(lib)) packageRoots.push(lib);
    receipt.foundation_packages.push({name: pkg.name, revision: actual,
      cache: fs.existsSync(lib) ? lib : null});
  }
  const expectedFoundation = new Set(['mathlib', ...JSON.parse(fs.readFileSync(mathlibManifestPath, 'utf8')).packages.map(p => p.name)]);
  check(receipt.foundation_packages.length === expectedFoundation.size &&
    receipt.foundation_packages.every(p => expectedFoundation.has(p.name)), 'Incomplete foundation closure');
  receipt.foundation_manifest_sha256 = hashFile(mathlibManifestPath);
  receipt.compiler = checkedRun(lean, ['--version']).stdout.trim();
  check(receipt.compiler.startsWith('Lean (version 4.34.0-rc2,'), 'Wrong compiler version');
  receipt.compiler_sha256 = hashFile(lean);
  fs.mkdirSync(evidence, {recursive: true});
  fs.rmSync(build, {recursive: true, force: true});
  fs.mkdirSync(build, {recursive: true});
  const env = {...process.env, LEAN_PATH: [build, ...packageRoots].join(path.delimiter)};
  delete env.LEAN_SYSROOT;
  delete env.LEAN_SRC_PATH;
  receipt.lean_path = env.LEAN_PATH.split(path.delimiter);
  const completed = new Set();
  const all = new Set(manifest.modules.map(m => m.module));
  for (const row of manifest.modules) {
    check(row.imports.filter(m => all.has(m)).every(m => completed.has(m)), 'Non-topological source closure');
    compile(path.join(root, row.path), path.join(build, row.module.replaceAll('.', '/') + '.olean'), env, row.module);
    completed.add(row.module);
  }
  const auditSource = path.join(evidence, 'TargetAudit.lean');
  fs.writeFileSync(auditSource, 'import PNTDependency\n' + manifest.audit_targets.map(t =>
    `#check ${t}\n#print axioms ${t}`).join('\n') + '\n');
  const text = compile(auditSource, null, env, 'TargetAudit');
  receipt.target_axioms = auditOutput(text, manifest.audit_targets);
  receipt.audited_targets = manifest.audit_targets.length;
  receipt.transitive_axioms_standard_only = true;
  const absenceSource = path.join(evidence, 'SourceSelectionAudit.lean');
  fs.writeFileSync(absenceSource, 'import PNTDependency\nimport Lean\nopen Lean in\nrun_cmd do\n' +
    '  let env <- getEnv\n  for name in [' +
    manifest.excluded_declarations.map(t => '`' + t).join(', ') + '] do\n' +
    '    if env.contains name then\n      throwError "Unexpected excluded declaration: {name}"\n');
  compile(absenceSource, null, env, 'SourceSelectionAudit');
  receipt.excluded_declarations_absent = true;
  receipt.admission_free_source_replay = true;
  check(JSON.stringify(validateSources()) === JSON.stringify(before), 'Inputs changed during replay');
  receipt.inputs_unchanged = true;
  receipt.verification_status = 'passed';
} catch (error) {
  receipt.verification_status = 'failed';
  receipt.error = error.stack || String(error);
  console.error(receipt.error);
  process.exitCode = 1;
} finally {
  receipt.finished_at = new Date().toISOString();
  save();
  console.log(JSON.stringify({verification_status: receipt.verification_status,
    compiled: receipt.compiled.length, audited_targets: receipt.audited_targets,
    receipt: receiptPath}, null, 2));
}
