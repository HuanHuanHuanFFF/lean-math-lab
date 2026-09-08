import Mathlib.Analysis.SpecialFunctions.Stirling
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-! A uniform conversion from factorial product bounds to support density. -/

namespace B686CanonicalDensity

open Filter Real

noncomputable section

/-- The entropy term is absorbed by `k²`, uniformly in the support size. -/
theorem factorial_entropy_bound (s k : ℕ) (hk : 2 ≤ k) :
    2 * (s : ℝ) * log k ≤ log (s.factorial : ℝ) + (k : ℝ) ^ 2 := by
  rcases eq_or_ne s 0 with rfl | hs
  · simp
  have hspos : (0 : ℝ) < s := by exact_mod_cast Nat.pos_of_ne_zero hs
  have hkpos : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
  have hstirling := Stirling.le_log_factorial_stirling hs
  have hlogs : 0 ≤ log (s : ℝ) := log_nonneg (by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hs)
  have hlogpi : 0 ≤ log (2 * π) := log_nonneg (by linarith [two_le_pi])
  have hfac : (s : ℝ) * log s - s ≤ log (s.factorial : ℝ) := by linarith
  have hlog := log_le_sub_one_of_pos (show 0 < (k : ℝ) ^ 2 / s by positivity)
  rw [log_div (by positivity) hspos.ne', log_pow] at hlog
  have hmul : (s : ℝ) * (2 * log k - log s) ≤ (k : ℝ) ^ 2 - s := by
    calc
      _ ≤ (s : ℝ) * ((k : ℝ) ^ 2 / s - 1) :=
        mul_le_mul_of_nonneg_left hlog hspos.le
      _ = _ := by field_simp
  linarith

/-- The lower-block product and endpoint bound give a logarithmic estimate. -/
theorem support_log_bound (s P X k : ℕ) (hk : 2 ≤ k)
    (hfac : (s + 1).factorial ≤ P) (hprod : P ≤ X ^ k) :
    2 * (s : ℝ) * log k ≤ (k : ℝ) * log X + (k : ℝ) ^ 2 := by
  have hsp : s.factorial ≤ X ^ k := (Nat.factorial_le (by omega)).trans (hfac.trans hprod)
  have hh := log_le_log (by exact_mod_cast s.factorial_pos) (show (s.factorial : ℝ) ≤ (X : ℝ) ^ k by exact_mod_cast hsp)
  rw [log_pow] at hh
  exact (factorial_entropy_bound s k hk).trans (by linarith)

def growthError (C B : ℕ) (k : ℕ) : ℝ :=
  (log C + log B + 1) / (2 * log k) + 1 / (2 * (k : ℝ))

theorem growthError_tendsto (C B : ℕ) :
    Tendsto (growthError C B) atTop (nhds 0) := by
  have hk : Tendsto (fun k : ℕ => (k : ℝ)) atTop atTop := tendsto_natCast_atTop_atTop
  have hlog : Tendsto (fun k : ℕ => log (k : ℝ)) atTop atTop :=
    tendsto_log_atTop.comp hk
  have h₁ : Tendsto (fun k : ℕ => (log C + log B + 1) / (2 * log k)) atTop (nhds 0) :=
    tendsto_const_nhds.div_atTop (hlog.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
  have h₂ : Tendsto (fun k : ℕ => (1 : ℝ) / (2 * (k : ℝ))) atTop (nhds 0) :=
    tendsto_const_nhds.div_atTop (hk.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
  change Tendsto (fun k : ℕ => (log C + log B + 1) / (2 * log k) +
    (1 : ℝ) / (2 * (k : ℝ))) atTop (nhds 0)
  simpa only [add_zero] using h₁.add h₂

/-- Explicit error bound, uniform in all data of the arithmetic instance. -/
theorem density_le_of_power_growth (a : ℝ) (C B s P X k e : ℕ)
    (hC : 1 ≤ C) (hB : 1 ≤ B) (hk : 2 ≤ k)
    (hfac : (s + 1).factorial ≤ P) (hprod : P ≤ X ^ k)
    (hX : X ≤ C * B ^ k * k ^ (e + 1)) (he : (e : ℝ) ≤ a * k) :
    (s : ℝ) / (k : ℝ) ^ 2 ≤ a / 2 + growthError C B k := by
  have hkpos : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
  have hkone : (1 : ℝ) ≤ k := by exact_mod_cast (show 1 ≤ k by omega)
  have hlogpos : 0 < log (k : ℝ) := log_pos (by exact_mod_cast hk)
  have hCpos : (0 : ℝ) < C := by exact_mod_cast (show 0 < C by omega)
  have hBpos : (0 : ℝ) < B := by exact_mod_cast (show 0 < B by omega)
  have hXpos : 0 < X := by
    have hp := (Nat.factorial_pos (s + 1)).trans_le (hfac.trans hprod)
    exact Nat.pos_of_ne_zero (fun hh => by simp [hh, show k ≠ 0 by omega] at hp)
  have hheight := log_le_log (by exact_mod_cast hXpos)
    (show (X : ℝ) ≤ (C : ℝ) * (B : ℝ) ^ k * (k : ℝ) ^ (e + 1) by exact_mod_cast hX)
  rw [log_mul (by positivity) (by positivity), log_mul hCpos.ne' (by positivity),
    log_pow, log_pow] at hheight
  push_cast at hheight
  have hlogC : 0 ≤ log (C : ℝ) := log_nonneg (by exact_mod_cast hC)
  have hCscale : log (C : ℝ) ≤ (k : ℝ) * log C := by nlinarith
  have he' := mul_le_mul_of_nonneg_right he hlogpos.le
  have hheight' : log (X : ℝ) ≤
      (k : ℝ) * (log C + log B) + (a * k + 1) * log k := by nlinarith
  have hlog := support_log_bound s P X k hk hfac hprod
  have hmain := mul_le_mul_of_nonneg_left hheight' hkpos.le
  have hbound : 2 * (s : ℝ) * log k ≤
      (k : ℝ) ^ 2 * (log C + log B + 1) +
        (a * (k : ℝ) ^ 2 + k) * log k := by nlinarith
  have hid : (a / 2 + growthError C B k) * (k : ℝ) ^ 2 * (2 * log k) =
      (k : ℝ) ^ 2 * (log C + log B + 1) +
        (a * (k : ℝ) ^ 2 + k) * log k := by
    unfold growthError
    field_simp
    ring
  apply (div_le_iff₀ (sq_pos_of_pos hkpos)).2
  apply (mul_le_mul_iff_left₀ (show 0 < 2 * log (k : ℝ) by positivity)).mp
  rw [hid]
  nlinarith

/-- An endpoint exponent `a*k + O(1)` yields eventual support density `a/2`. -/
theorem eventual_density_of_power_growth (a : ℝ) (C B : ℕ)
    (hC : 1 ≤ C) (hB : 1 ≤ B) (ε : ℝ) (hε : 0 < ε) :
    ∃ K : ℕ, ∀ k s P X e : ℕ, K ≤ k →
      (s + 1).factorial ≤ P → P ≤ X ^ k →
      X ≤ C * B ^ k * k ^ (e + 1) → (e : ℝ) ≤ a * k →
      (s : ℝ) / (k : ℝ) ^ 2 ≤ a / 2 + ε := by
  have hevent : ∀ᶠ k : ℕ in atTop, growthError C B k < ε :=
    (growthError_tendsto C B).eventually (gt_mem_nhds hε)
  obtain ⟨K, hK⟩ := eventually_atTop.1 hevent
  refine ⟨max K 2, ?_⟩
  intro k s P X e hk hfac hprod hX he
  have hk2 : 2 ≤ k := (le_max_right K 2).trans hk
  have hh := density_le_of_power_growth a C B s P X k e hC hB hk2 hfac hprod hX he
  have herr := hK k ((le_max_left K 2).trans hk)
  linarith

end

end B686CanonicalDensity
