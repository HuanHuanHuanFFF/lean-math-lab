import research.tasks.«B686-Four».round9.uniform.Constants
import research.tasks.«B686-Four».round9.main.RankProduct
import Mathlib.NumberTheory.Primorial

namespace B686UniformRound9

open Finset Real

set_option maxHeartbeats 1200000

theorem log_primorial_eq_sum (k : ℕ) :
    Real.log (primorial k : ℝ) = ∑ p ∈ Nat.primesLE k, Real.log (p : ℝ) := by
  rw [primorial_eq_prod_primesLE, Nat.cast_prod,
    Real.log_prod (fun p hp => by exact_mod_cast (Nat.prime_of_mem_primesLE hp).ne_zero)]

theorem prime_counting_log_le_primorial (k q : ℕ) (hk : 2 ≤ k) (hkq : k ≤ q) :
    (Nat.primeCounting q : ℝ) * Real.log k ≤
      Real.log (primorial q : ℝ) + (Nat.primeCounting k : ℝ) * Real.log k -
        Real.log (primorial k : ℝ) := by
  have hkpos : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
  have hfilter : (Nat.primesLE q).filter (fun p => p ≤ k) = Nat.primesLE k := by
    ext p
    simp only [Finset.mem_filter, Nat.mem_primesLE]
    constructor
    · rintro ⟨⟨hpq, hp⟩, hpk⟩
      exact ⟨hpk, hp⟩
    · rintro ⟨hpk, hp⟩
      exact ⟨⟨hpk.trans hkq, hp⟩, hpk⟩
  calc
    _ = ∑ p ∈ Nat.primesLE q, Real.log (k : ℝ) := by
      simp [Nat.primesLE_card_eq_primeCounting]
    _ ≤ ∑ p ∈ Nat.primesLE q,
        (Real.log (p : ℝ) + if p ≤ k then Real.log (k : ℝ) - Real.log (p : ℝ) else 0) := by
      apply Finset.sum_le_sum
      intro p hp
      by_cases hpk : p ≤ k
      · simp [hpk]
      · simp only [hpk, ↓reduceIte, add_zero]
        exact Real.log_le_log hkpos (by exact_mod_cast (show k ≤ p by omega))
    _ = _ := by
      rw [Finset.sum_add_distrib, ← Finset.sum_filter, hfilter, Finset.sum_sub_distrib]
      rw [← log_primorial_eq_sum q, ← log_primorial_eq_sum k]
      simp [Nat.primesLE_card_eq_primeCounting] <;> ring

/-- The linear prime-counting bound controls the logarithmic primorial deficit,
using only the prime-rank factorial bound and one term of the exponential series. -/
theorem prime_counting_log_deficit (k : ℕ) (hk : 2 ≤ k) :
    (Nat.primeCounting k : ℝ) * Real.log k ≤
      Real.log (primorial k : ℝ) + (16 / 77 : ℝ) * k + 8 * Real.log k := by
  let s : ℕ := Nat.primeCounting k - 8
  have hkpos : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
  have hfacpos : (0 : ℝ) < s.factorial := by exact_mod_cast Nat.factorial_pos s
  have hprimpos : (0 : ℝ) < primorial k := by exact_mod_cast primorial_pos k
  have hrank : (77 : ℝ)^s * (s.factorial : ℝ) ≤ (16 : ℝ)^s * (primorial k : ℝ) := by
    have hn := B686RankProduct.factorial_le_scaled_prime_product k
    rw [← primorial_eq_prod_primesLE] at hn
    exact_mod_cast hn
  have hlogrank := Real.log_le_log
    (mul_pos (pow_pos (by norm_num : (0 : ℝ) < 77) s) hfacpos) hrank
  rw [Real.log_mul (by positivity : (77 : ℝ)^s ≠ 0) hfacpos.ne',
    Real.log_mul (by positivity : (16 : ℝ)^s ≠ 0) hprimpos.ne',
    Real.log_pow, Real.log_pow] at hlogrank
  have hxpos : (0 : ℝ) < (16 / 77 : ℝ) * k := by positivity
  have hexp := Real.pow_div_factorial_le_exp ((16 / 77 : ℝ) * k) hxpos.le s
  have hlogexp := Real.log_le_log (div_pos (pow_pos hxpos s) hfacpos) hexp
  rw [Real.log_div (by positivity : ((16 / 77 : ℝ) * k)^s ≠ 0) hfacpos.ne',
    Real.log_pow, Real.log_exp] at hlogexp
  have hxlog : Real.log ((16 / 77 : ℝ) * k) =
      Real.log 16 - Real.log 77 + Real.log k := by
    rw [Real.log_mul (by norm_num : (16 / 77 : ℝ) ≠ 0) hkpos.ne',
      Real.log_div (by norm_num) (by norm_num)]
  rw [hxlog] at hlogexp
  have hsmall : (s : ℝ) * Real.log k ≤ Real.log (primorial k : ℝ) + (16 / 77 : ℝ) * k := by
    nlinarith only [hlogrank, hlogexp]
  have hcount : (Nat.primeCounting k : ℝ) ≤ (s : ℝ) + 8 := by
    exact_mod_cast (show Nat.primeCounting k ≤ s + 8 by dsimp [s]; omega)
  have hlogknonneg : (0 : ℝ) ≤ Real.log k :=
    Real.log_nonneg (by exact_mod_cast (show 1 ≤ k by omega))
  calc
    _ ≤ ((s : ℝ)+8) * Real.log k := mul_le_mul_of_nonneg_right hcount hlogknonneg
    _ ≤ _ := by nlinarith only [hsmall]

theorem log_primorial_le (q : ℕ) :
    Real.log (primorial q : ℝ) ≤ (q : ℝ) * Real.log 4 := by
  have hreal : (primorial q : ℝ) ≤ (4 : ℝ)^q := by exact_mod_cast primorial_le_four_pow q
  have hlog := Real.log_le_log (by exact_mod_cast primorial_pos q) hreal
  simpa only [Real.log_pow] using hlog

theorem prime_counting_weighted (k : ℕ) (hk : 250000 ≤ k) :
    (Nat.primeCounting (2 * k - 1) : ℝ) * Real.log k < 3 * (k : ℝ) := by
  have hk2 : 2 ≤ k := by omega
  have hkpos : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
  have hkR : (250000 : ℝ) ≤ k := by exact_mod_cast hk
  have hsum := prime_counting_log_le_primorial k (2*k-1) hk2 (by omega)
  have hdeficit := prime_counting_log_deficit k hk2
  have hprim := log_primorial_le (2*k-1)
  have hq : ((2*k-1 : ℕ) : ℝ) ≤ 2*(k : ℝ) := by exact_mod_cast Nat.sub_le (2*k) 1
  have hlog4nonneg : (0 : ℝ) ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  have hprim' : Real.log (primorial (2*k-1) : ℝ) ≤ 2*(k : ℝ)*Real.log 4 :=
    hprim.trans (mul_le_mul_of_nonneg_right hq hlog4nonneg)
  have hlog := log_le_scaled (k : ℝ) hkR
  have hcoef := mul_lt_mul_of_pos_right log_four_lt hkpos
  nlinarith

/-- info: 'B686UniformRound9.prime_counting_log_deficit' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_counting_log_deficit
/-- info: 'B686UniformRound9.prime_counting_weighted' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_counting_weighted

end B686UniformRound9

