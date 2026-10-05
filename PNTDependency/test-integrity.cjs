const fs = require('node:fs');
const path = require('node:path');
const crypto = require('node:crypto');
const {spawnSync} = require('node:child_process');
const root = __dirname;
const scratch = path.join(root, '.integrity-probe');
const manifest = JSON.parse(fs.readFileSync(path.join(root, 'provenance.json'), 'utf8'));
const hash = file => crypto.createHash('sha256').update(fs.readFileSync(file)).digest('hex');
const before = hash(path.join(root, 'provenance.json'));
const files = [...manifest.modules.map(m => m.path), ...manifest.provenance_files.map(f => f.path),
  'provenance.json', 'lakefile.toml', 'lean-toolchain',
  ...fs.readdirSync(root).filter(f => f.endsWith('.cjs'))];
const protectedHashes = Object.fromEntries(files.map(f => [f, hash(path.join(root, f))]));
let passed = false;
const receipt = {verification_status: 'in_progress', started_at: new Date().toISOString(),
  script_sha256: hash(__filename), manifest_sha256: before};
try {
  fs.rmSync(scratch, {recursive: true, force: true});
  for (const file of files) {
    const target = path.join(scratch, file);
    fs.mkdirSync(path.dirname(target), {recursive: true});
    fs.copyFileSync(path.join(root, file), target);
  }
  fs.appendFileSync(path.join(scratch, 'src/MainlineWeightedPrimes.lean'),
    '\n-- Deliberate integrity-test mutation in disposable copy.\n');
  const result = spawnSync(process.execPath, [path.join(scratch, 'replay.cjs')], {
    encoding: 'utf8', timeout: 10000, killSignal: 'SIGKILL', maxBuffer: 2 * 1024 * 1024,
  });
  const text = (result.stdout || '') + (result.stderr || '');
  const failed = JSON.parse(fs.readFileSync(path.join(scratch, 'replay-receipt.json'), 'utf8'));
  receipt.rejected_before_compilation = result.status === 1 && !result.error &&
    text.includes('Source integrity mismatch: src/MainlineWeightedPrimes.lean') &&
    failed.verification_status === 'failed' && failed.compiled.length === 0;
  receipt.original_sources_unchanged = files.every(file =>
    hash(path.join(root, file)) === protectedHashes[file]);
  passed = receipt.rejected_before_compilation && receipt.original_sources_unchanged;
  receipt.verification_status = passed ? 'passed' : 'failed';
} catch (error) {
  receipt.verification_status = 'failed';
  receipt.error = error.stack || String(error);
} finally {
  fs.rmSync(scratch, {recursive: true, force: true});
  receipt.disposable_copy_removed = !fs.existsSync(scratch);
  receipt.finished_at = new Date().toISOString();
  fs.writeFileSync(path.join(root, 'integrity-receipt.json'), JSON.stringify(receipt, null, 2) + '\n');
  console.log(JSON.stringify(receipt, null, 2));
  process.exitCode = passed ? 0 : 1;
}
