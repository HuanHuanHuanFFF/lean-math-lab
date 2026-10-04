import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerRootWidth
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699HalfhourVerify20261005

theorem bernoulli_step_exact {k : Nat} (hk : 2 ≤ k) :
    (1 + 1 / 4095 : ℝ) ≤ (1 + 1 / (4095 * (k : ℝ))) ^ k :=
  B699LocalPowerWidth20261005.bernoulli_step hk

theorem ratio_root_bound_exact {k : Nat} (hk : 2 ≤ k) :
    (1 + 1 / 4095 : ℝ) ^ ((1 : ℝ) / k) ≤ 1 + 1 / (4095 * (k : ℝ)) :=
  B699LocalPowerWidth20261005.ratio_root_bound hk

theorem local_root_width_exact {x : ℝ} {k : Nat} (hx : 0 ≤ x) (hk : 2 ≤ k) :
    (x + x / 4095) ^ ((1 : ℝ) / k) - x ^ ((1 : ℝ) / k) ≤
      x ^ ((1 : ℝ) / k) / (4095 * (k : ℝ)) :=
  B699LocalPowerWidth20261005.local_root_width hx hk

end B699HalfhourVerify20261005
#print B699HalfhourVerify20261005.bernoulli_step_exact
#print B699HalfhourVerify20261005.ratio_root_bound_exact
#print B699HalfhourVerify20261005.local_root_width_exact
#print axioms B699HalfhourVerify20261005.bernoulli_step_exact
#print axioms B699HalfhourVerify20261005.ratio_root_bound_exact
#print axioms B699HalfhourVerify20261005.local_root_width_exact
