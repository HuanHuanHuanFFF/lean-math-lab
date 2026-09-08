import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.Consumer
import Lean.Util.CollectAxioms

open Lean Elab Command

namespace B686CenteredRungeAudit

/-- Executable acceptance guard; unexpected transitive axioms fail elaboration. -/
def checkAllowedAxioms (declarations allowed : Array Name) : CommandElabM Unit := do
  for declaration in declarations do
    let axioms ← Lean.collectAxioms declaration
    let unexpected := axioms.filter (fun name => !allowed.contains name)
    unless unexpected.isEmpty do
      throwError "Unexpected transitive axioms for {declaration}: {unexpected}"
    logInfo m!"AXIOM_AUDIT_PASS {declaration}: {axioms}"

run_cmd checkAllowedAxioms #[
  `B686CenteredRunge.squareRootProduct_coeff_bound,
  `B686CenteredRunge.rootPolynomial_coeff_bound,
  `B686CenteredRunge.errorPolynomial_degree,
  `B686CenteredRunge.errorPolynomial_odd_ne_zero,
  `B686CenteredRunge.errorPolynomial_coeff_bound,
  `B686CenteredRunge.valueControl_of_coeff_bounds,
  `B686CenteredRunge.centered_not_four_above_threshold,
  `B686CenteredRunge.n_lt_explicit_bound,
  `B686CenteredRunge.n_add_k_lt_explicit_bound,
  `B686CenteredRunge.original_product_consumers] #[`propext, `Classical.choice, `Quot.sound]

end B686CenteredRungeAudit
