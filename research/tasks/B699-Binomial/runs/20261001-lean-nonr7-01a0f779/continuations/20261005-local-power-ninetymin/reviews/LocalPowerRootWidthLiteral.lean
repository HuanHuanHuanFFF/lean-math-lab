import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerRootWidth

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699LocalPowerVerify20261005

theorem bernoulli_step_literal {k : Nat} (hk : 2 ≤ k) :
    (1 + 1 / 4095 : ℝ) ≤ (1 + 1 / (4095 * (k : ℝ))) ^ k :=
  B699LocalPowerWidth20261005.bernoulli_step hk

theorem ratio_root_bound_literal {k : Nat} (hk : 2 ≤ k) :
    (1 + 1 / 4095 : ℝ) ^ ((1 : ℝ) / k) ≤ 1 + 1 / (4095 * (k : ℝ)) :=
  B699LocalPowerWidth20261005.ratio_root_bound hk

-- The literal fixes the paper's ratio r = 4096 / 4095 explicitly.
theorem local_root_width_literal {x : ℝ} {k : Nat} (hx : 0 ≤ x) (hk : 2 ≤ k) :
    ((4096 : ℝ) / 4095 * x) ^ ((1 : ℝ) / k) - x ^ ((1 : ℝ) / k) ≤
      x ^ ((1 : ℝ) / k) / (4095 * (k : ℝ)) := by
  rw [show (4096 : ℝ) / 4095 * x = x + x / 4095 by ring]
  exact B699LocalPowerWidth20261005.local_root_width hx hk

end B699LocalPowerVerify20261005

#print axioms B699LocalPowerVerify20261005.bernoulli_step_literal
#print axioms B699LocalPowerVerify20261005.ratio_root_bound_literal
#print axioms B699LocalPowerVerify20261005.local_root_width_literal
