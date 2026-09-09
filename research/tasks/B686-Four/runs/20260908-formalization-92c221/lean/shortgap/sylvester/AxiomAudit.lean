import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.shortgap.sylvester.Consumer
import Lean.Util.CollectAxioms

open Lean Elab Command

namespace B686SylvesterSchurAudit

def checkAllowedAxioms (declarations allowed : Array Name) : CommandElabM Unit := do
  for declaration in declarations do
    let axioms ← Lean.collectAxioms declaration
    let unexpected := axioms.filter (fun name => !allowed.contains name)
    unless unexpected.isEmpty do
      throwError "Unexpected transitive axioms for {declaration}: {unexpected}"
    logInfo m!"AXIOM_AUDIT_PASS {declaration}: {axioms}"

run_cmd checkAllowedAxioms #[
  `Erdos699Formalization.sylvester_schur_of_index_le_forty_eight,
  `Erdos699Formalization.sylvester_schur_of_index_ge_four_thousand_eight_hundred_forty,
  `Erdos699Formalization.sylvester_schur_of_index_lt_four_thousand_eight_hundred_forty,
  `Erdos699Formalization.sylvester_schur,
  `B686SylvesterSchur.sylvester_schur_product] #[`propext, `Classical.choice, `Quot.sound]

end B686SylvesterSchurAudit
