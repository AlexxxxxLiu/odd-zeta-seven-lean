// Compare the selected source with exact upstream Git objects, without copying originals.
const fs = require('node:fs');
const path = require('node:path');
const crypto = require('node:crypto');
const {execFileSync} = require('node:child_process');
const {transformWiener, transformConsequences, transformArchitectTactic} = require('./source-transform.cjs');
const root = __dirname;
const manifest = JSON.parse(fs.readFileSync(path.join(root, 'provenance.json'), 'utf8'));
const args = process.argv.slice(2);
const value = key => {
  const index = args.indexOf(key);
  if (index < 0 || !args[index + 1]) throw Error('Required: ' + key + ' CHECKOUT_PATH');
  return path.resolve(args[index + 1]);
};
const repositories = {pnt: value('--pnt-checkout'), architect: value('--architect-checkout')};
const sha = data => crypto.createHash('sha256').update(data).digest('hex');
function original(project, file) {
  return execFileSync('git', ['show', `${manifest.upstream[project].commit}:${file}`],
    {cwd: repositories[project], maxBuffer: 16 * 1024 * 1024});
}
let checked = 0;
for (const row of manifest.modules) {
  if (!repositories[row.project]) continue;
  const relative = row.module === 'MainlineThetaPrefix' ?
    'PrimeNumberTheoremAnd/Consequences.lean' : row.module.replaceAll('.', '/') + '.lean';
  const bytes = original(row.project, relative);
  if (sha(bytes) !== row.original_sha256) throw Error('Original hash mismatch: ' + relative);
  let text = bytes.toString('utf8');
  if (row.module === 'PrimeNumberTheoremAnd.Wiener') text = transformWiener(text, manifest);
  if (row.module === 'MainlineThetaPrefix') text = transformConsequences(text, manifest);
  if (row.module === 'Architect.Tactic') text = transformArchitectTactic(text, manifest);
  if (!Buffer.from(text).equals(fs.readFileSync(path.join(root, row.path))))
    throw Error('Selected source differs from declared transformation: ' + row.path);
  checked += 1;
}
for (const project of Object.keys(repositories)) {
  const bytes = original(project, 'LICENSE');
  if (!bytes.equals(fs.readFileSync(path.join(root, 'licenses', project + '-LICENSE'))))
    throw Error('License mismatch: ' + project);
}
if (!original('pnt', 'CITATION.cff').equals(fs.readFileSync(path.join(root, 'licenses/PNT-CITATION.cff'))))
  throw Error('Upstream citation mismatch');
console.log(JSON.stringify({status: 'passed', upstream_modules_checked: checked,
  network_used: false, upstream_files_copied: false}, null, 2));
