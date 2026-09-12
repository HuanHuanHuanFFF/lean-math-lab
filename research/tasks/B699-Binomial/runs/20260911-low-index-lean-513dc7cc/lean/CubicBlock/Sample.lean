import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBlock.Audit
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBlock.Ground

/-! Actual old i11 (2,3) block 0, bound to the generic complete checker.
This is one certificate-consumer loop. Neither an initial B699 height nor the
old full 2^109 descent nor a complete original i11 statement is claimed. -/

set_option maxRecDepth 100000
set_option maxHeartbeats 800000
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CubicBlockSampleAccepted

open Math.B699.CubicExponentBlock

theorem sample_checked : blockCheck 2 3 45 1 18 10 174456611 = true := by
  decide +kernel

/-- Every natural second exponent and positive cofactors are quantified. -/
theorem excludes_actual_sample_block (a b A C : ℕ)
    (hua : 45 ≤ a) (hau : a ≤ 46) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hdist : Nat.dist (2 ^ a * A) (3 ^ b * C) ≤ 10)
    (hsmallA : A ^ 3 ≤ min (2 ^ a * A) (3 ^ b * C))
    (hsmallC : C ^ 3 ≤ min (2 ^ a * A) (3 ^ b * C)) : False := by
  exact blockCheck_sound sample_checked hua hau hA hC hdist hsmallA hsmallC

theorem full_exponent_interval (a : ℕ) (hlo : 45 ≤ a) (hhi : a ≤ 46) :
    a = 45 ∨ a = 46 := by omega

theorem tamper_inverse_rejected : blockCheck 2 3 45 1 18 10 174456612 = false := by
  decide +kernel

theorem tamper_endpoint_rejected : blockCheck 2 3 45 2 18 10 174456611 = false := by
  decide +kernel

end Math.B699.CubicBlockSampleAccepted

#print axioms Math.B699.CubicBlockSampleAccepted.sample_checked
#print axioms Math.B699.CubicBlockSampleAccepted.excludes_actual_sample_block
#print axioms Math.B699.CubicBlockSampleAccepted.full_exponent_interval
#print axioms Math.B699.CubicBlockSampleAccepted.tamper_inverse_rejected
#print axioms Math.B699.CubicBlockSampleAccepted.tamper_endpoint_rejected
