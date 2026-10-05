// A disposable Lake consumer checks the exact local-package interface offline.
const fs = require('node:fs');
const path = require('node:path');
const crypto = require('node:crypto');
const {spawnSync} = require('node:child_process');
const {auditOutput} = require('./audit-output.cjs');
const root = __dirname;
const consumer = path.join(root, '.integration-consumer');
const parent = path.dirname(root);
const pntManifest = JSON.parse(fs.readFileSync(path.join(root, 'provenance.json'), 'utf8'));
const foundation = JSON.parse(fs.readFileSync(path.join(parent, 'lake-manifest.json'), 'utf8'));
const mathlibManifest = JSON.parse(fs.readFileSync(path.join(parent,
  '.lake/packages/mathlib/lake-manifest.json'), 'utf8'));
const packageNames = new Set(['mathlib', ...mathlibManifest.packages.map(p => p.name)]);
const packages = foundation.packages.filter(p => packageNames.has(p.name));
const bridge = path.join(parent, 'OddZetaMixed/PrimeWeightedRates.lean');
const hash = file => crypto.createHash('sha256').update(fs.readFileSync(file)).digest('hex');
const write = (relative, text) => {
  const file = path.join(consumer, relative);
  fs.mkdirSync(path.dirname(file), {recursive: true});
  fs.writeFileSync(file, text);
};
const expected = ['weighted_prime_quadratic_rate', 'h158_prime_content54_rate',
  'h158_prime_content55_rate', 'h158_prime_content56_rate',
  'h158_prime_content_three_bands_rate'].map(t => 'OddZetaMixed.' + t);
const receipt = {verification_status: 'in_progress', started_at: new Date().toISOString(),
  bridge_sha256: hash(bridge), manifest_sha256: hash(path.join(root, 'provenance.json')),
  script_sha256: hash(__filename), audit_parser_sha256: hash(path.join(root, 'audit-output.cjs')),
  consumer_configuration_only: true, main_configuration_modified: false,
  no_cache_downloads: true, source_package: root, expected_declarations: expected};
const save = () => fs.writeFileSync(path.join(root, 'integration-receipt.json'), JSON.stringify(receipt, null, 2) + '\n');
save();
try {
  fs.rmSync(consumer, {recursive: true, force: true});
  write('lakefile.toml', 'name = "PNTConsumerCheck"\nversion = "0.1.0"\n' +
    'defaultTargets = ["Consumer"]\n\n[[require]]\nname = "oddZetaPNTDependency"\n' +
    'path = ".."\n\n[[lean_lib]]\nname = "Consumer"\n' +
    'roots = ["Consumer", "OddZetaMixed.PrimeWeightedRates"]\n');
  write('lean-toolchain', 'leanprover/lean4:v4.34.0-rc2\n');
  write('lake-manifest.json', JSON.stringify({version: '1.2.0', packagesDir: '.lake/packages',
    packages: [{type: 'path', dir: '..', name: 'oddZetaPNTDependency',
      manifestFile: 'lake-manifest.json', configFile: 'lakefile.toml', inherited: false},
      ...packages.map(p => ({...p, inherited: true}))],
    name: 'PNTConsumerCheck', lakeDir: '.lake', fixedToolchain: false}, null, 2) + '\n');
  write('OddZetaMixed/PrimeWeightedRates.lean', fs.readFileSync(bridge));
  write('Consumer.lean', 'import OddZetaMixed.PrimeWeightedRates\n' +
    expected.map(t => `#check ${t}\n#print axioms ${t}`).join('\n') + '\n');
  fs.mkdirSync(path.join(consumer, '.lake/packages'), {recursive: true});
  for (const pkg of packages) fs.symlinkSync(path.resolve(parent, '.lake/packages', pkg.name),
    path.join(consumer, '.lake/packages', pkg.name), 'dir');
  const lake = path.join(process.env.HOME, '.elan/bin/lake');
  const env = {...process.env, ELAN_TOOLCHAIN: 'leanprover/lean4:v4.34.0-rc2'};
  delete env.LEAN_PATH;
  delete env.LEAN_SYSROOT;
  const start = Date.now();
  const result = spawnSync(lake, ['--no-cache', 'build', 'Consumer'], {cwd: consumer,
    env, encoding: 'utf8', timeout: 600000, killSignal: 'SIGKILL', maxBuffer: 32 * 1024 * 1024});
  const output = (result.stdout || '') + (result.stderr || '');
  fs.writeFileSync(path.join(root, 'integration-build.log'), output);
  receipt.returncode = result.status;
  receipt.error = result.error?.message;
  receipt.elapsed_seconds = (Date.now() - start) / 1000;
  if (result.status !== 0 || result.error) throw Error('Lake consumer failed:\n' + output);
  const audit = spawnSync(lake, ['env', 'lean', 'Consumer.lean'], {cwd: consumer,
    env, encoding: 'utf8', timeout: 120000, killSignal: 'SIGKILL', maxBuffer: 8 * 1024 * 1024});
  const text = (audit.stdout || '') + (audit.stderr || '');
  fs.writeFileSync(path.join(root, 'integration-audit.log'), text);
  if (audit.status !== 0 || audit.error) throw Error('Consumer audit failed:\n' + text);
  receipt.target_axioms = auditOutput(text, expected);
  receipt.transitive_axioms_standard_only = true;
  receipt.bridge_unchanged = hash(bridge) === receipt.bridge_sha256;
  if (!receipt.bridge_unchanged) throw Error('Bridge changed during integration test');
  receipt.configuration_unchanged = hash(path.join(root, 'provenance.json')) === receipt.manifest_sha256 &&
    hash(__filename) === receipt.script_sha256 &&
    hash(path.join(root, 'audit-output.cjs')) === receipt.audit_parser_sha256;
  if (!receipt.configuration_unchanged) throw Error('Integration inputs changed during test');
  receipt.verification_status = 'passed';
  receipt.mathlib = pntManifest.mathlib;
  console.log(text);
} catch (error) {
  receipt.verification_status = 'failed';
  receipt.error = error.stack || String(error);
  console.error(receipt.error);
  process.exitCode = 1;
} finally {
  receipt.finished_at = new Date().toISOString();
  save();
  console.log(JSON.stringify(receipt, null, 2));
}
