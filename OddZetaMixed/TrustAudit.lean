import Lean

open Lean Elab Command

/-- Fail compilation on every non-foundational axiom, including `sorryAx`.
This checks transitive dependencies, not just project source text. -/
elab "audit_project_axioms " ns:ident : command => do
  let env ← getEnv
  let rootName := ns.getId
  let mut checked : Nat := 0
  let mut theorems : Nat := 0
  for (name, info) in env.constants.toList do
    if rootName.isPrefixOf name then
      checked := checked + 1
      if info.isTheorem then
        theorems := theorems + 1
      let axioms ← collectAxioms name
      for ax in axioms do
        unless #[``propext, ``Classical.choice, ``Quot.sound].contains ax do
          throwError "Unexpected axiom {ax} in {name}"
  if checked == 0 then
    throwError "Axiom audit matched no declarations for {rootName}"
  logInfo m!"Axiom audit passed: {checked} declarations, {theorems} theorem declarations in {rootName}; only propext, Classical.choice, Quot.sound allowed."
