import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.ThreeWindowSize
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.NormalizationConstants
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.WindowParameters
import Mathlib.NumberTheory.PrimeCounting

/-!
Actual source-connected three-window normalization: all large prime powers are
retained by the imported transfer theorem. The factorial normalization used in
the final theorem is proved in NormalizationConstants, not assumed as B699.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1600000

open Real
open B699LargePrimeStructure B699LowIndex
namespace B699TailWindows

theorem smallPrimeCount_eq (i : ℕ) : smallPrimeCount i = Nat.primeCounting (i - 1) := by
  change (Nat.primesBelow i).card = _
  rw [Nat.primesBelow_eq_primesLE_sub_one, Nat.primesLE_card_eq_primeCounting]

theorem windowFactorials_pos (s : ℕ) : 0 < windowFactorials s := by
  exact Finset.prod_pos (fun h _ => Nat.factorial_pos h)

theorem windowConstant_pos (i r s : ℕ) : 0 < windowConstant i r s := by
  unfold windowConstant
  exact Nat.mul_pos (Nat.mul_pos (by positivity) (Nat.pow_pos (windowFactorials_pos s)))
    (windowFactorials_pos _)

/-- The actual no-common branch supplies a complete integer inequality. -/
theorem noCommon_scaled_choose {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) :
    windowConstant i r s * (n.choose i) ^ (2 * s - r) ≤
      n ^ (smallPrimeCount i * (2 * s - r) + windowDegree i r s) := by
  have hsize := noCommon_three_window_size hi hij hjn hsi hno (r := r)
  have hupper := three_window_scaled_upper (i := i) (r := r) (s := s)
    (by omega : i ≤ n) (by omega : j ≤ n)
  calc
    _ ≤ windowConstant i r s *
        (n ^ (smallPrimeCount i * (2 * s - r)) * threeWindowProduct n i j r s) :=
      Nat.mul_le_mul_left _ hsize
    _ = n ^ (smallPrimeCount i * (2 * s - r)) *
        (windowConstant i r s * threeWindowProduct n i j r s) := by ring
    _ ≤ n ^ (smallPrimeCount i * (2 * s - r)) * n ^ windowDegree i r s :=
      Nat.mul_le_mul_left _ hupper
    _ = _ := by rw [pow_add]

/-- Natural-floor conventions exactly match the adopted normalization A. -/
def Normalized (n i : ℕ) : Prop :=
  (1 / 3 - 5 / (3 * (i : ℝ)) - (Nat.primeCounting (i - 1) : ℝ) / i) *
      log ((n : ℝ) / i) ≤
    (Nat.primeCounting (i - 1) : ℝ) / i * log (i : ℝ) +
      3 * log (i : ℝ) / i - log (1 - ((i : ℝ) - 1) / n)

/-- A general bridge from complete integer windows to A; final specialization
below supplies every displayed numerical hypothesis from proved bodies. -/
theorem normalized_of_window_data {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) (hlam : 0 < 2 * s - r)
    (hdegree : 3 * windowDegree i r s ≤ (2 * s - r) * (2 * i + 5))
    (hfactorial : ((2 * s - r : ℕ) : ℝ) * log (i.factorial : ℝ) ≤
      log (windowConstant i r s : ℝ) +
        (((2 * s - r : ℕ) : ℝ) * (i + 3) - windowDegree i r s) * log (i : ℝ)) :
    Normalized n i := by
  let lam := 2 * s - r
  let t := smallPrimeCount i
  let E := windowDegree i r s
  have hip : (0 : ℝ) < i := by exact_mod_cast (show 0 < i by omega)
  have hnp : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hlp : (0 : ℝ) < lam := by exact_mod_cast hlam
  have hcp : (0 : ℝ) < n.choose i := by exact_mod_cast Nat.choose_pos (show i ≤ n by omega)
  have hCp : (0 : ℝ) < windowConstant i r s := by exact_mod_cast windowConstant_pos i r s
  have hH := noCommon_scaled_choose hi hij hjn hsi hno (r := r)
  have hHr : (windowConstant i r s : ℝ) * (n.choose i : ℝ) ^ lam ≤
      (n : ℝ) ^ (t * lam + E) := by exact_mod_cast hH
  have hlogH := Real.log_le_log (mul_pos hCp (pow_pos hcp _)) hHr
  rw [Real.log_mul hCp.ne' (pow_ne_zero _ hcp.ne'), Real.log_pow, Real.log_pow] at hlogH
  simp only [Nat.cast_add, Nat.cast_mul] at hlogH
  have hD := Nat.pow_sub_le_descFactorial n i
  rw [Nat.descFactorial_eq_factorial_mul_choose] at hD
  have hDr : ((n + 1 - i : ℕ) : ℝ) ^ i ≤ (i.factorial : ℝ) * (n.choose i : ℝ) := by
    exact_mod_cast hD
  have hbp : (0 : ℝ) < (n + 1 - i : ℕ) := by
    exact_mod_cast (show 0 < n + 1 - i by omega)
  have hlogD := Real.log_le_log (pow_pos hbp _) hDr
  rw [Real.log_pow, Real.log_mul (by positivity) hcp.ne'] at hlogD
  have hfrac : 0 < 1 - ((i : ℝ) - 1) / n := by
    apply sub_pos.mpr
    apply (div_lt_one hnp).mpr
    have hni : (i : ℝ) ≤ n := by exact_mod_cast (show i ≤ n by omega)
    linarith
  have hbase : ((n + 1 - i : ℕ) : ℝ) = (n : ℝ) * (1 - ((i : ℝ) - 1) / n) := by
    rw [Nat.cast_sub (by omega : i ≤ n + 1)]
    push_cast
    field_simp [hnp.ne']
    ring
  rw [hbase, Real.log_mul hnp.ne' hfrac.ne'] at hlogD
  have hlogD' := mul_le_mul_of_nonneg_left hlogD hlp.le
  have hlogX : log ((n : ℝ) / i) = log (n : ℝ) - log (i : ℝ) :=
    Real.log_div hnp.ne' hip.ne'
  have hXp : 0 ≤ log ((n : ℝ) / i) := by
    apply Real.log_nonneg
    apply (le_div_iff₀ hip).mpr
    simpa only [one_mul] using
      (show (i : ℝ) ≤ n from by exact_mod_cast (show i ≤ n by omega))
  have hdegree' : 3 * (E : ℝ) ≤ (lam : ℝ) * (2 * i + 5) := by exact_mod_cast hdegree
  have hcoeff : (lam : ℝ) * ((i : ℝ) - 5 - 3 * t) ≤
      3 * ((lam : ℝ) * ((i : ℝ) - t) - E) := by nlinarith [hdegree']
  have hcoeff' := mul_le_mul_of_nonneg_right hcoeff hXp
  have hmain : (lam : ℝ) * (((i : ℝ) - 5 - 3 * t) * log ((n : ℝ) / i)) ≤
      (lam : ℝ) * ((3 * t + 9) * log (i : ℝ) -
        3 * i * log (1 - ((i : ℝ) - 1) / n)) := by
    change (lam : ℝ) * log (i.factorial : ℝ) ≤ _ at hfactorial
    rw [hlogX] at hcoeff' ⊢
    nlinarith [hlogH, hlogD', hfactorial, hcoeff']
  have hmain' := (mul_le_mul_iff_right₀ hlp).mp hmain
  unfold Normalized
  rw [← smallPrimeCount_eq]
  change (1 / 3 - 5 / (3 * (i : ℝ)) - (t : ℝ) / i) * log ((n : ℝ) / i) ≤
    (t : ℝ) / i * log (i : ℝ) + 3 * log (i : ℝ) / i -
      log (1 - ((i : ℝ) - 1) / n)
  have heqL : (1 / 3 - 5 / (3 * (i : ℝ)) - (t : ℝ) / i) * log ((n : ℝ) / i) =
      (((i : ℝ) - 5 - 3 * t) * log ((n : ℝ) / i)) / (3 * i) := by
    field_simp [hip.ne']
    ring
  have heqR : (t : ℝ) / i * log (i : ℝ) + 3 * log (i : ℝ) / i -
      log (1 - ((i : ℝ) - 1) / n) =
      ((3 * t + 9) * log (i : ℝ) - 3 * i * log (1 - ((i : ℝ) - 1) / n)) / (3 * i) := by
    field_simp [hip.ne']
    ring
  rw [heqL, heqR]
  exact div_le_div_of_nonneg_right hmain' (by positivity)

/-- Every actual original counterexample with i≥1000 satisfies normalization A.
The full prime-power transfer, parameters and factorial estimates are all proved.
There is no unproved normalization premise in this statement. -/
theorem noCommon_normalized_1000 {n i j : ℕ} (hi : 1000 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) (hno : ¬ Common n i j) : Normalized n i := by
  obtain ⟨m, c, s, r, lam, hic, hm, hc1, hc3, hs, hr, hL, hsl, hformula,
    _hlow, hsi, _hs666, _hl995⟩ := B699TailParameters.normalization_parameters i hi
  have hlam : 2 * s - r = 3 * m - c + 1 := hsl.trans hformula
  have hlpos : 0 < 2 * s - r := by rw [hlam]; omega
  have hsum : windowSum s = m * (s + 1) := by
    have h := two_window_sum s
    rw [hs] at *
    nlinarith
  have hE : windowDegree i r s = 3 * m * (s + 1) := by
    unfold windowDegree
    rw [hL, hsum]
    ring
  have hC : windowConstant i r s =
      2 ^ (s * (s + 1)) * (Nat.superFactorial s) ^ 3 := by
    rw [window_constant_formula, hL]
    unfold windowFactorials
    rw [Nat.prod_Icc_factorial]
    ring
  have hlogC : log (windowConstant i r s : ℝ) =
      (s : ℝ) * (s + 1) * log 2 + 3 * log (Nat.superFactorial s : ℝ) := by
    rw [hC, Nat.cast_mul, Nat.cast_pow, Nat.cast_pow,
      Real.log_mul (by positivity)
        (pow_ne_zero _ (ne_of_gt (by exact_mod_cast B699TailFactorial.superFactorial_pos s :
          (0 : ℝ) < Nat.superFactorial s))), Real.log_pow, Real.log_pow]
    push_cast
    ring
  have hfact := B699TailNormalization.factorial_normalization m c hm hc1 hc3
  dsimp only at hfact
  rw [← hic, ← hlam] at hfact
  have hfactorial : ((2 * s - r : ℕ) : ℝ) * log (i.factorial : ℝ) ≤
      log (windowConstant i r s : ℝ) +
        (((2 * s - r : ℕ) : ℝ) * (i + 3) - windowDegree i r s) * log (i : ℝ) := by
    rw [hlogC, hE]
    simpa only [hs, Nat.cast_mul, Nat.cast_add, Nat.cast_ofNat, Nat.cast_one] using hfact
  have hlR : ((2 * s - r : ℕ) : ℝ) = 3 * (m : ℝ) - c + 1 := by
    rw [hlam, Nat.cast_add, Nat.cast_sub (by omega : c ≤ 3 * m), Nat.cast_mul]
    norm_num
  have hiR : (i : ℝ) = 3 * (m : ℝ) + c := by exact_mod_cast hic
  have hsR : (s : ℝ) = 2 * (m : ℝ) := by rw [hs, Nat.cast_mul]; norm_num
  have hmR : (333 : ℝ) ≤ m := by exact_mod_cast hm
  have hc1R : (1 : ℝ) ≤ c := by exact_mod_cast hc1
  have hc3R : (c : ℝ) ≤ 3 := by exact_mod_cast hc3
  have hcSq : (c : ℝ) ^ 2 ≤ 9 := by nlinarith
  have hdegreeR : 3 * (3 * (m : ℝ) * ((s : ℝ) + 1)) ≤
      ((2 * s - r : ℕ) : ℝ) * (2 * i + 5) := by
    rw [hlR, hiR, hsR]
    nlinarith [hcSq]
  have hdegree : 3 * windowDegree i r s ≤ (2 * s - r) * (2 * i + 5) := by
    rw [hE]
    exact_mod_cast hdegreeR
  exact normalized_of_window_data (by omega) hij hjn hsi hno hlpos hdegree hfactorial

end B699TailWindows

#check @B699TailWindows.normalized_of_window_data
#print axioms B699TailWindows.noCommon_scaled_choose
#print axioms B699TailWindows.normalized_of_window_data
#check @B699TailWindows.noCommon_normalized_1000
#print axioms B699TailWindows.noCommon_normalized_1000
