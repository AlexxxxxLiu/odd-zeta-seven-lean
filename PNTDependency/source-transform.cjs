// Exact source transformations; full upstream originals need not be distributed.
const crypto = require('node:crypto');
const hash = text => crypto.createHash('sha256').update(text).digest('hex');

function uniqueIndex(text, marker) {
  const index = text.indexOf(marker);
  if (index < 0 || text.indexOf(marker, index + marker.length) >= 0)
    throw Error('Missing or ambiguous transformation boundary: ' + marker);
  return index;
}

function transformWiener(original, manifest) {
  const patch = manifest.compatibility_patch;
  uniqueIndex(original, patch.before);
  const compatible = patch.notice + original.replace(patch.before, patch.after);
  const pruning = manifest.source_pruning;
  const start = uniqueIndex(compatible, pruning.start_marker);
  const end = uniqueIndex(compatible, pruning.end_marker);
  if (end <= start || hash(compatible.slice(start, end)) !== pruning.removed_sha256)
    throw Error('Pruned source block does not match the pinned record');
  return compatible.slice(0, start) + compatible.slice(end);
}

function transformConsequences(original, manifest) {
  return original.slice(0, uniqueIndex(original, manifest.theta_prefix_boundary));
}

function transformArchitectTactic(original, manifest) {
  const pruning = manifest.architect_pruning;
  uniqueIndex(original, pruning.header_before);
  const text = original.replace(pruning.header_before, pruning.header_after);
  const start = uniqueIndex(text, pruning.start_marker);
  const end = uniqueIndex(text, pruning.end_marker);
  if (end <= start || hash(text.slice(start, end)) !== pruning.removed_sha256)
    throw Error('Pruned tactic block does not match the pinned record');
  return pruning.notice + text.slice(0, start) + text.slice(end);
}

module.exports = {uniqueIndex, transformWiener, transformConsequences, transformArchitectTactic};
