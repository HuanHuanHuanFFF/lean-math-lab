import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.Consumer
import Lean.Util.CollectAxioms

open Lean Elab Command

namespace B686QuarterRungeAudit

/-- A failing guard for unexpected axioms in the complete transitive closure. -/
def checkAllowedAxioms (declarations allowed : Array Name) : CommandElabM Unit := do
  for declaration in declarations do
    let axioms ← Lean.collectAxioms declaration
    let unexpected := axioms.filter (fun name => !allowed.contains name)
    unless unexpected.isEmpty do
      throwError "Unexpected transitive axioms for {declaration}: {unexpected}"
    logInfo m!"AXIOM_AUDIT_PASS {declaration}: {axioms}"

run_cmd checkAllowedAxioms #[
  `B686QuarterRunge.adjacentSquareRoot_sq,
  `B686QuarterRunge.pairedSquareRoot_sq,
  `B686QuarterRunge.centered_rootPolynomial_eq,
  `B686QuarterRunge.squaredError_degree,
  `B686QuarterRunge.upperRemainder_tendsto,
  `B686QuarterRunge.lowerRemainder_tendsto,
  `B686QuarterCauchy.jump_representation_upper,
  `B686QuarterCauchy.jump_representation_real,
  `B686QuarterRunge.upperRemainder_eq_alternating_integral,
  `B686QuarterRunge.quarterErrorIntegral_pos,
  `B686QuarterRunge.quarterErrorIntegral_strictAnti,
  `B686QuarterRunge.quarterErrorIntegral_le,
  `B686QuarterRunge.quarterPolynomial_eval_eq_density_add_error,
  `B686QuarterRunge.centered_not_four_above_threshold,
  `B686QuarterRunge.n_lt_explicit_bound,
  `B686QuarterRunge.n_add_k_lt_explicit_bound,
  `B686QuarterRunge.original_product_consumers,
  `B686QuarterRunge.four_dvd_product_consumers] #[`propext, `Classical.choice, `Quot.sound]

end B686QuarterRungeAudit
