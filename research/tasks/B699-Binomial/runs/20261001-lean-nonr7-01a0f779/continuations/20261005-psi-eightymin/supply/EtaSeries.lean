module
public import Mathlib.Analysis.SpecificLimits.Normed
public import Mathlib.Analysis.Normed.Group.FunctionSeries
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.Positivity
public import Lean.Elab.Tactic.NormCast
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699EtaSeries20261005

noncomputable def seriesTerm (n : Nat) (q : ℝ) : ℝ := q ^ n / (n.factorial : ℝ) ^ 2
noncomputable def kernelSeries (q : ℝ) : ℝ := ∑' n : Nat, seriesTerm n q

theorem term_nonneg {q : ℝ} (hq : 0 ≤ q) (n : Nat) : 0 ≤ seriesTerm n q := by
  dsimp [seriesTerm]
  positivity

theorem term_majorant {q : ℝ} (hq : q ∈ Set.Icc (0 : ℝ) 81) (n : Nat) :
    ‖seriesTerm n q‖ ≤ (81 : ℝ) ^ n / (n.factorial : ℝ) := by
  have hf0 : (0 : ℝ) < (n.factorial : ℝ) := by exact_mod_cast Nat.factorial_pos n
  have hf1 : (1 : ℝ) ≤ (n.factorial : ℝ) := by
    exact_mod_cast (Nat.succ_le_iff.mpr (Nat.factorial_pos n))
  rw [Real.norm_eq_abs, abs_of_nonneg (term_nonneg hq.1 n)]
  dsimp [seriesTerm]
  calc
    q ^ n / (n.factorial : ℝ) ^ 2 ≤ (81 : ℝ) ^ n / (n.factorial : ℝ) ^ 2 :=
      div_le_div_of_nonneg_right (pow_le_pow_left₀ hq.1 hq.2 n) (sq_nonneg _)
    _ ≤ (81 : ℝ) ^ n / (n.factorial : ℝ) :=
      div_le_div_of_nonneg_left (by positivity) hf0 (by nlinarith)

theorem series_summable {q : ℝ} (hq : q ∈ Set.Icc (0 : ℝ) 81) :
    Summable (fun n : Nat => seriesTerm n q) := by
  have hnorm : Summable (fun n : Nat => ‖seriesTerm n q‖) :=
    (Real.summable_pow_div_factorial 81).of_nonneg_of_le
      (fun n => norm_nonneg _) (fun n => term_majorant hq n)
  exact hnorm.of_norm

theorem series_ge_one {q : ℝ} (hq : q ∈ Set.Icc (0 : ℝ) 81) :
    1 ≤ kernelSeries q := by
  have h := (series_summable hq).le_tsum 0 (fun n _ => term_nonneg hq.1 n)
  simpa [kernelSeries, seriesTerm] using h

theorem series_continuousOn : ContinuousOn kernelSeries (Set.Icc (0 : ℝ) 81) := by
  apply continuousOn_tsum
    (fun n => (continuous_id.pow n).div_const ((n.factorial : ℝ) ^ 2) |>.continuousOn)
    (Real.summable_pow_div_factorial 81)
  intro n q hq
  exact term_majorant hq n

end B699EtaSeries20261005
#print axioms B699EtaSeries20261005.term_nonneg
#print axioms B699EtaSeries20261005.term_majorant
#print axioms B699EtaSeries20261005.series_summable
#print axioms B699EtaSeries20261005.series_ge_one
#print axioms B699EtaSeries20261005.series_continuousOn
