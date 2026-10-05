import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.ElementaryCount
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.IntegerCountBridge

/-!
Section 4 analytic tail of the fixed prime-optimization paper.
The exact three-window normalization (A) is still an explicit input.
This removes a count-comparison dependency; it does not prove B699 by itself.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1600000

open Real
namespace B699TailUniform

theorem log_131072 : log (131072 : ℝ) = 17 * log 2 := by
  have h := Real.log_pow (2 : ℝ) 17
  norm_num at h
  exact h

/-- Needed body of Mathlib Log/Monotone.lean:50, localized to its log premise
to avoid importing the unrelated negMulLog/rpow comparison family. -/
theorem log_div_bound {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) (hlog : 1 ≤ log a) :
    log b / b ≤ log a / a := by
  have hb : 0 < b := ha.trans_le hab
  have hba : 0 ≤ b / a - 1 := by
    rwa [le_sub_iff_add_le, le_div_iff₀ ha, zero_add, one_mul]
  rw [div_le_iff₀ hb, ← sub_le_sub_iff_right (log a)]
  calc
    log b - log a = log (b / a) := by rw [log_div hb.ne' ha.ne']
    _ ≤ b / a - 1 := log_le_sub_one_of_pos (div_pos hb ha)
    _ ≤ log a * (b / a - 1) := le_mul_of_one_le_left hba hlog
    _ = log a / a * b - log a := by ring

theorem large_index_bounds {x rho : ℝ} (hx : 131072 ≤ x) (hrho : 0 ≤ rho)
    (hec : rho ≤ log 4 / (log x - 3 / 2)) :
    rho ≤ 225 / 1661 ∧ rho * log x ≤ 23800 / 14949 ∧
      3 * log x / x ≤ 425 / 1572864 := by
  have hxp : 0 < x := by linarith
  have hlog := Real.log_le_log (by norm_num : (0 : ℝ) < 131072) hx
  rw [log_131072] at hlog
  have hlo : 952 / 81 ≤ log x := by
    linarith [B699TailCount.log_two_lower]
  have hd : 0 < log x - 3 / 2 := by linarith
  have hc : log (4 : ℝ) ≤ 25 / 18 := by
    rw [B699TailCount.log_four]
    linarith [B699TailCount.log_two_upper]
  have hec' := (le_div_iff₀ hd).mp hec
  have hm := mul_le_mul_of_nonneg_left hlo hrho
  have hr : rho ≤ 225 / 1661 := by nlinarith [hec', hm]
  have hrl : rho * log x ≤ 23800 / 14949 := by nlinarith [hec', hr]
  have hbaseLog : 1 ≤ log (131072 : ℝ) := by
    rw [log_131072]
    linarith [B699TailCount.log_two_lower]
  have hmono := log_div_bound (by norm_num : (0 : ℝ) < 131072) hx hbaseLog
  rw [log_131072] at hmono
  have hsmall : 3 * log x / x ≤ 425 / 1572864 := by
    have hu := B699TailCount.log_two_upper
    rw [mul_div_assoc]
    nlinarith [hmono, hu]
  exact ⟨hr, hrl, hsmall⟩

/-- The exact positive margin in the paper excludes every ratio at least 4096. -/
theorem normalized_excludes_4096 {x rho X h : ℝ}
    (hx : 131072 ≤ x) (hrho : 0 ≤ rho)
    (hec : rho ≤ log 4 / (log x - 3 / 2))
    (hX : 4096 ≤ X) (hh : h ≤ 1 / 4096)
    (hA : (1 / 3 - 5 / (3 * x) - rho) * log X ≤
      rho * log x + 3 * log x / x - log (1 - h)) : False := by
  obtain ⟨hr, hrl, hsmall⟩ := large_index_bounds hx hrho hec
  have hxp : 0 < x := by linarith
  have hdiv : 5 / (3 * x) ≤ 5 / 393216 := by
    apply (div_le_iff₀ (by positivity : (0 : ℝ) < 3 * x)).mpr
    nlinarith [hx]
  have halpha : 43076229 / 217710592 ≤ 1 / 3 - 5 / (3 * x) - rho := by
    linarith [hr, hdiv]
  have hlog := Real.log_le_log (by norm_num : (0 : ℝ) < 4096) hX
  have hlog4096 : log (4096 : ℝ) = 12 * log 2 := by
    have hp := Real.log_pow (2 : ℝ) 12
    norm_num at hp
    exact hp
  rw [hlog4096] at hlog
  have hloglow : 672 / 81 ≤ log X := by
    linarith [hlog, B699TailCount.log_two_lower]
  have hm := mul_le_mul halpha hloglow (by norm_num : (0 : ℝ) ≤ 672 / 81)
    (by linarith : 0 ≤ 1 / 3 - 5 / (3 * x) - rho)
  have herr := B699TailIC.neg_log_one_sub_le_4095 hh
  nlinarith [hm, hA, hrl, hsmall, herr]

/-- Full normalization input with the actual inclusive small-prime count.
It remains a separate obligation from the count-comparison proved here. -/
def Normalized (n i : ℕ) : Prop :=
  (1 / 3 - 5 / (3 * (i : ℝ)) - (Nat.primeCounting (i - 1) : ℝ) / i) *
      log ((n : ℝ) / i) ≤
    (Nat.primeCounting (i - 1) : ℝ) / i * log (i : ℝ) +
      3 * log (i : ℝ) / i - log (1 - ((i : ℝ) - 1) / n)

/-- The paper's all-n analytic count tail, conditional only on normalization. -/
theorem normalized_height_131072 {n i : ℕ} (hi : 131072 ≤ i)
    (hA : Normalized n i) : n < 4096 * i := by
  by_contra h
  have hn : 4096 * i ≤ n := by omega
  have hir : (131072 : ℝ) ≤ i := by exact_mod_cast hi
  have hip : (0 : ℝ) < i := by linarith
  have hnr : (4096 : ℝ) * i ≤ n := by exact_mod_cast hn
  have hnp : (0 : ℝ) < n := by nlinarith
  have hec' := B699TailCount.elementary_primeCounting_bound
    (x := (i : ℝ)) (by linarith : (128 : ℝ) ≤ i)
  simp only [Nat.floor_natCast] at hec'
  have hcount : (Nat.primeCounting (i - 1) : ℝ) ≤ Nat.primeCounting i := by
    exact_mod_cast Nat.monotone_primeCounting (Nat.sub_le i 1)
  have hec : (Nat.primeCounting (i - 1) : ℝ) / i ≤
      log 4 / (log (i : ℝ) - 3 / 2) := by
    apply (div_le_iff₀ hip).mpr
    calc
      (Nat.primeCounting (i - 1) : ℝ) ≤ Nat.primeCounting i := hcount
      _ ≤ log 4 * i / (log (i : ℝ) - 3 / 2) := hec'
      _ = log 4 / (log (i : ℝ) - 3 / 2) * i := by ring
  have hX : (4096 : ℝ) ≤ (n : ℝ) / i := (le_div_iff₀ hip).mpr hnr
  have hh : ((i : ℝ) - 1) / n ≤ 1 / 4096 := by
    apply (div_le_iff₀ hnp).mpr
    nlinarith [hnr]
  exact normalized_excludes_4096 hir (by positivity) hec hX hh hA

end B699TailUniform

#check @B699TailUniform.normalized_height_131072
#print axioms B699TailUniform.large_index_bounds
#print axioms B699TailUniform.normalized_excludes_4096
#print axioms B699TailUniform.normalized_height_131072
