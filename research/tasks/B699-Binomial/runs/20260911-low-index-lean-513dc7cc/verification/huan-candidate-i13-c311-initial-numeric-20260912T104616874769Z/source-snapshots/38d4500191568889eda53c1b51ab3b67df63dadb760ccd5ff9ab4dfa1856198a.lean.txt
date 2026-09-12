import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Normalization
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I13C311Shared

/-! UNCOMPILED fixed c7d5 actual Q/E numerical parameters. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Math.B699.I13C311QE
open Math.B699.ElementaryFactorialBound

def qLambda : ℚ := 451 / 100000
def eLambda : ℚ := 973 / 1000000
def qBase : ℚ := beta 7 5 * qLambda
def eBase : ℚ := beta 7 5 * eLambda
def eConstant (delta : ℕ) : ℚ := if delta = 0 then 11 / 100 else 1 / 2

theorem fixed_bases_pos : 0 < qLambda ∧ 0 < eLambda ∧ 0 < qBase ∧ 0 < eBase := by
  norm_num [qLambda, eLambda, qBase, eBase, beta]

end Math.B699.I13C311QE
#print axioms Math.B699.I13C311QE.fixed_bases_pos
