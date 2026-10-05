const allowed = new Set(['propext', 'Classical.choice', 'Quot.sound']);

function auditOutput(text, expected) {
  const found = new Map();
  for (const match of text.matchAll(/'([^\n]+?)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)/g)) {
    if (found.has(match[1])) throw Error(`Duplicate axiom result: ${match[1]}`);
    found.set(match[1], (match[2] || '').split(',').map(s => s.trim()).filter(Boolean));
  }
  if (found.size !== expected.length || expected.some(name => !found.has(name)))
    throw Error('Incomplete or unexpected target axiom inventory');
  for (const [target, axioms] of found)
    for (const axiom of axioms)
      if (!allowed.has(axiom)) throw Error(`Rejected ${target}: ${axiom}`);
  return Object.fromEntries(found);
}

function selfTest() {
  auditOutput("'ok' depends on axioms: [propext, Classical.choice, Quot.sound]", ['ok']);
  auditOutput("'ok' does not depend on any axioms", ['ok']);
  auditOutput("'ok'' depends on axioms: [propext]", ["ok'"]);
  const bad = [
    '',
    "'wrong' depends on axioms: [propext]",
    "'ok' depends on axioms: [sorryAx]",
    "'ok' depends on axioms: [AnExternalPNT]",
    "'ok' depends on axioms: [Lean.ofReduceBool]",
    "'ok' depends on axioms: [propext]\n'ok' depends on axioms: [propext]",
    "'ok' depends on axioms: [propext]\n'extra' depends on axioms: [propext]",
  ];
  for (const text of bad) {
    let rejected = false;
    try { auditOutput(text, ['ok']); } catch { rejected = true; }
    if (!rejected) throw Error('Axiom audit negative test failed');
  }
  return {accepted: 3, rejected: bad.length};
}

module.exports = {auditOutput, selfTest};
if (require.main === module) console.log(JSON.stringify(selfTest()));
