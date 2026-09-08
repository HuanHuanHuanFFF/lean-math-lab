import research.tasks.«B686-Four».lean.Round3SmallGapCertificates
import research.tasks.«B686-Four».lean.Round3GapDivisibility
import research.tasks.«B686-Four».independent.PrimeSupport
import research.tasks.«B686-Four».independent.GapBounds
import Mathlib.Data.Nat.Prime.Int
import Mathlib.Algebra.Ring.Parity

/-! The original-equation consumers of the external short-gap theorems.
The external propositions are explicit hypotheses, never project axioms. -/
namespace B686ShortGap
open Finset

abbrev product := B686Round3SmallGap.product

/-- Sylvester--Schur in its full consecutive-product range. -/
def SylvesterSchur : Prop :=
  ∀ N K : ℕ, 0 < K → K < N →
    ∃ p : ℕ, p.Prime ∧ K < p ∧ p ∣ ∏ i ∈ range K, (N + i)

lemma product_zero_not_dvd (k p : ℕ) (hp : p.Prime) (hkp : k < p) :
    ¬ p ∣ product k 0 := by
  intro hd
  obtain ⟨i, hi, hpi⟩ := hp.prime.exists_mem_finset_dvd hd
  have hi' := mem_Icc.mp hi
  have hle := Nat.le_of_dvd (by omega : 0 < 0 + i) hpi
  omega

/-- The one omitted central factor has no prime greater than max(k,5).
This is deduced from the actual equation via the existing gap congruence. -/
theorem middle_prime_bound (k n p : ℕ) (hp : p.Prime)
    (heq : product k (n + k + 1) = 4 * product k n)
    (hpc : p ∣ n + k + 1) : p ≤ max k 5 := by
  by_contra hnot
  have hkp : k < p := by omega
  have h5p : 5 < p := by omega
  have hz : B686Round3GapDivisibility.product k ((n : ℤ) + k + 1) =
      4 * B686Round3GapDivisibility.product k n := by
    have hc := congrArg (fun a : ℕ => (a : ℤ)) heq
    simpa [product, B686Round3SmallGap.product,
      B686Round3GapDivisibility.product] using hc
  have hd := B686Round3GapDivisibility.gap_factor_divides k n 1 1 (by decide) (by decide) hz
  have hpcZ : (p : ℤ) ∣ (n : ℤ) + k + 1 := by exact_mod_cast hpc
  have hpd := hpcZ.trans hd
  norm_num only [Nat.sub_self] at hpd
  have hid : B686Round3GapDivisibility.product k 0 -
      4 * (-1 : ℤ) ^ k * B686Round3GapDivisibility.product k 0 =
      (1 - 4 * (-1 : ℤ) ^ k) * B686Round3GapDivisibility.product k 0 := by ring
  rw [hid] at hpd
  have hnprod : ¬ (p : ℤ) ∣ B686Round3GapDivisibility.product k 0 := by
    intro hh
    apply product_zero_not_dvd k p hp hkp
    have he : B686Round3GapDivisibility.product k 0 = (product k 0 : ℤ) := by
      simp [product, B686Round3SmallGap.product, B686Round3GapDivisibility.product]
    rw [he] at hh
    exact_mod_cast hh
  have hc := ((Nat.prime_iff_prime_int.mp hp).dvd_mul.mp hpd).resolve_right hnprod
  rcases Nat.even_or_odd k with hev | hod
  · rw [hev.neg_one_pow] at hc
    norm_num at hc
    have h3 : p ∣ 3 := by exact_mod_cast hc
    have hh := Nat.le_of_dvd (by decide : 0 < 3) h3
    omega
  · rw [hod.neg_one_pow] at hc
    norm_num at hc
    have h5 : p ∣ 5 := by exact_mod_cast hc
    have hh := Nat.le_of_dvd (by decide : 0 < 5) h5
    omega

/-- Every prime factor of the entire enclosing interval is bounded when
there are at most one omitted term. -/
theorem enclosing_prime_bound (k n h p : ℕ) (hk : 5 ≤ k) (hh : h ≤ 1)
    (heq : product k (n + k + h) = 4 * product k n) (hp : p.Prime)
    (hd : p ∣ ∏ j ∈ range (2 * k + h), (n + 1 + j)) : p ≤ 2 * k + h := by
  obtain ⟨j, hj, hpj⟩ := hp.prime.exists_mem_finset_dvd hd
  have hj' := mem_range.mp hj
  by_cases hjlo : j < k
  · have hdiv : p ∣ B686PrimeSupport.product k n := by
      apply dvd_trans ?_ (dvd_prod_of_mem (fun i => n + i)
        (mem_Icc.mpr (show 1 ≤ j + 1 ∧ j + 1 ≤ k by omega)))
      simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hpj
    have hb := B686PrimeSupport.solution_prime_bound k n (n + k + h) p
      (by omega) (by omega) heq hp (Or.inl hdiv)
    omega
  · by_cases hjhi : k + h ≤ j
    · have hdiv : p ∣ B686PrimeSupport.product k (n + k + h) := by
        apply dvd_trans ?_ (dvd_prod_of_mem (fun i => n + k + h + i)
          (mem_Icc.mpr (show 1 ≤ j + 1 - (k + h) ∧ j + 1 - (k + h) ≤ k by omega)))
        simpa only [show n + k + h + (j + 1 - (k + h)) = n + 1 + j by omega] using hpj
      have hb := B686PrimeSupport.solution_prime_bound k n (n + k + h) p
        (by omega) (by omega) heq hp (Or.inr hdiv)
      omega
    · have hh1 : h = 1 := by omega
      have hjk : j = k := by omega
      subst h j
      have hcenter : p ∣ n + k + 1 := by simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hpj
      have hb := middle_prime_bound k n p hp heq hcenter
      omega

/-- All n and k are retained; only the classical Sylvester input remains
conditional. The small-length cases are actual kernel certificates. -/
theorem no_gap_zero_one_of_sylvester (hS : SylvesterSchur)
    (k n h : ℕ) (hk : 2 ≤ k) (hh : h ≤ 1) :
    product k (n + k + h) ≠ 4 * product k n := by
  intro heq
  by_cases hk21 : k ≤ 21
  · exact B686Round3SmallGap.no_small_gap_k_le21 k h n hk hk21 (by omega) heq
  · have hn := B686Round3SmallGap.start_exceeds_span k (k + h) n (by omega)
      (by omega) (by simpa [Nat.add_assoc] using heq)
    obtain ⟨p, hp, hpk, hpd⟩ := hS (n + 1) (2 * k + h) (by omega) (by omega)
    have hb := enclosing_prime_bound k n h p (by omega) hh heq hp hpd
    omega

/-- info: 'B686ShortGap.middle_prime_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms middle_prime_bound
/-- info: 'B686ShortGap.no_gap_zero_one_of_sylvester' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_gap_zero_one_of_sylvester
end B686ShortGap
