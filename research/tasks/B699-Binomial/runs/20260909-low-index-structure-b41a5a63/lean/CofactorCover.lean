import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.HeightCertificate
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.LargeSmallPowers

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

theorem window_factorials_pos (s : ℕ) : 0 < windowFactorials s := by
  unfold windowFactorials
  apply Finset.prod_pos
  intro h _
  exact Nat.factorial_pos h

theorem window_constant_pos (i r s : ℕ) : 0 < windowConstant i r s := by
  unfold windowConstant
  exact Nat.mul_pos
    (Nat.mul_pos (Nat.pow_pos (by decide : 0 < 2))
      (Nat.pow_pos (window_factorials_pos s)))
    (window_factorials_pos _)

/-- A discrete product Bernoulli inequality with no real-number division. -/
theorem descFactorial_scaled_error_bound (n : ℕ) :
    ∀ k : ℕ, k ≤ n →
      n ^ (k + 1) ≤ n * n.descFactorial k +
        (∑ a ∈ Finset.range k, a) * n ^ k := by
  intro k
  induction k with
  | zero => intro _; simp
  | succ k ih =>
      intro hkn
      have hk : k ≤ n := by omega
      have hh := ih hk
      have hdecomp : n * n.descFactorial k =
          n.descFactorial (k + 1) + k * n.descFactorial k := by
        rw [Nat.descFactorial_succ, ← Nat.add_mul, Nat.sub_add_cancel hk]
      have hD : n * n.descFactorial k ≤ n ^ (k + 1) := by
        simpa only [pow_succ'] using
          Nat.mul_le_mul_left n (Nat.descFactorial_le_pow n k)
      calc
        n ^ (k + 1 + 1) = n * n ^ (k + 1) := by rw [pow_succ']
        _ ≤ n * (n * n.descFactorial k +
            (∑ a ∈ Finset.range k, a) * n ^ k) := Nat.mul_le_mul_left n hh
        _ = n * (n.descFactorial (k + 1) + k * n.descFactorial k +
            (∑ a ∈ Finset.range k, a) * n ^ k) := by rw [hdecomp]
        _ = n * n.descFactorial (k + 1) + k * (n * n.descFactorial k) +
            (∑ a ∈ Finset.range k, a) * n ^ (k + 1) := by rw [pow_succ']; ring
        _ ≤ n * n.descFactorial (k + 1) + k * n ^ (k + 1) +
            (∑ a ∈ Finset.range k, a) * n ^ (k + 1) :=
          Nat.add_le_add_right (Nat.add_le_add_left (Nat.mul_le_mul_left k hD) _) _
        _ = n * n.descFactorial (k + 1) +
            (∑ a ∈ Finset.range (k + 1), a) * n ^ (k + 1) := by
          rw [Finset.sum_range_succ]
          ring

/-- For n>=i(i-1), the complete descending product is at least n^i/2. -/
theorem pow_le_two_descFactorial {n i : ℕ} (hn : 0 < n) (hin : i ≤ n)
    (hlarge : i * (i - 1) ≤ n) :
    n ^ i ≤ 2 * n.descFactorial i := by
  have he := descFactorial_scaled_error_bound n i hin
  have hs : 2 * (∑ a ∈ Finset.range i, a) ≤ n := by
    have hsum := Finset.sum_range_id_mul_two i
    nlinarith
  have hm := Nat.mul_le_mul_right (n ^ i) hs
  rw [pow_succ'] at he
  have hmul : n * n ^ i ≤ n * (2 * n.descFactorial i) := by
    nlinarith
  exact Nat.le_of_mul_le_mul_left hmul hn

/-- The original noCommon condition supplies an exact lower bound for U. -/
theorem noCommon_bernoulli_size {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlarge : i * (i - 1) ≤ n) (hno : ¬ Common n i j) :
    windowConstant i r s * n ^ (i * (2 * s - r)) ≤
      (2 * i.factorial) ^ (2 * s - r) *
        (smallPrimePart n i) ^ (2 * s - r) * n ^ windowDegree i r s := by
  have hn : 0 < n := by omega
  have hin : i ≤ n := by omega
  have hhalf := pow_le_two_descFactorial hn hin hlarge
  have hv := noCommon_scaled_prime_part (r := r) hi hij hjn hsi hno
  have hdesc : n.descFactorial i =
      i.factorial * (smallPrimePart n i * B699BridgeAudit.primePart i (n.choose i)) := by
    rw [smallPrimePart_mul_primePart hin, Nat.descFactorial_eq_factorial_mul_choose]
  calc
    _ = windowConstant i r s * (n ^ i) ^ (2 * s - r) := by rw [← pow_mul]
    _ ≤ windowConstant i r s * (2 * n.descFactorial i) ^ (2 * s - r) :=
      Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hhalf _)
    _ = (2 * i.factorial) ^ (2 * s - r) * (smallPrimePart n i) ^ (2 * s - r) *
        (windowConstant i r s *
          B699BridgeAudit.primePart i (n.choose i) ^ (2 * s - r)) := by
      rw [hdesc]
      simp only [mul_pow]
      ring
    _ ≤ _ := Nat.mul_le_mul_left _ hv

/-- A single integer M-certificate works throughout n>=H. It yields the
precise product premise needed by the two-small-primes consumer. -/
theorem noCommon_small_part_lower_of_certificate {n i j r s H M d : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlambda : 0 < 2 * s - r)
    (hH : i * (i - 1) ≤ H) (hHn : H ≤ n)
    (hexponent : i * (2 * s - r) = heightExponent i r s + d)
    (hcertificate : (2 * i.factorial) ^ (2 * s - r) ≤
      windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)) * H ^ d)
    (hno : ¬ Common n i j) :
    n ^ smallPrimeCount i ≤ M ^ (smallPrimeCount i - 1) * smallPrimePart n i := by
  have hn : 0 < n := by omega
  have hbase := noCommon_bernoulli_size (r := r) hi hij hjn hsi
    (hH.trans hHn) hno
  have hcert : (2 * i.factorial) ^ (2 * s - r) ≤
      windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)) * n ^ d :=
    hcertificate.trans (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hHn d))
  have hMpow : M ^ ((2 * s - r) * (smallPrimeCount i - 1)) =
      (M ^ (smallPrimeCount i - 1)) ^ (2 * s - r) := by
    rw [← pow_mul, Nat.mul_comm]
  have hbound :
      windowConstant i r s * n ^ (i * (2 * s - r)) ≤
        windowConstant i r s * n ^ (windowDegree i r s + d) *
          (M ^ (smallPrimeCount i - 1) * smallPrimePart n i) ^ (2 * s - r) := by
    calc
      _ ≤ (2 * i.factorial) ^ (2 * s - r) *
          (smallPrimePart n i) ^ (2 * s - r) * n ^ windowDegree i r s := hbase
      _ ≤ (windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)) *
            n ^ d) * (smallPrimePart n i) ^ (2 * s - r) * n ^ windowDegree i r s :=
        Nat.mul_le_mul_right _ (Nat.mul_le_mul_right _ hcert)
      _ = _ := by
        rw [hMpow]
        simp only [mul_pow, pow_add]
        ring
  have hnpow : n ^ (i * (2 * s - r)) =
      n ^ (windowDegree i r s + d) * (n ^ smallPrimeCount i) ^ (2 * s - r) := by
    rw [← pow_mul, ← pow_add]
    congr 1
    unfold heightExponent at hexponent
    omega
  have hmul :
      (windowConstant i r s * n ^ (windowDegree i r s + d)) *
          (n ^ smallPrimeCount i) ^ (2 * s - r) ≤
        (windowConstant i r s * n ^ (windowDegree i r s + d)) *
          (M ^ (smallPrimeCount i - 1) * smallPrimePart n i) ^ (2 * s - r) := by
    simpa only [hnpow, Nat.mul_assoc] using hbound
  have hpowers := Nat.le_of_mul_le_mul_left hmul
    (Nat.mul_pos (window_constant_pos i r s) (Nat.pow_pos hn))
  by_contra h
  have hlt : M ^ (smallPrimeCount i - 1) * smallPrimePart n i <
      n ^ smallPrimeCount i := by omega
  exact (Nat.not_le_of_gt (Nat.pow_lt_pow_left hlt hlambda.ne')) hpowers

/-- The complete original counterexample condition, with one explicit
M-certificate, forces two distinct small primes with large full powers. -/
theorem noCommon_two_large_small_prime_powers {n i j r s H M d : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hcount : 2 ≤ smallPrimeCount i) (hM : 0 < M) (hlambda : 0 < 2 * s - r)
    (hH : i * (i - 1) ≤ H) (hHn : H ≤ n)
    (hexponent : i * (2 * s - r) = heightExponent i r s + d)
    (hcertificate : (2 * i.factorial) ^ (2 * s - r) ≤
      windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)) * H ^ d)
    (hno : ¬ Common n i j) :
    ∃ p q : ℕ, p.Prime ∧ p < i ∧ q.Prime ∧ q < i ∧ p ≠ q ∧
      n ≤ M * p ^ (n.choose i).factorization p ∧
      n ≤ M * q ^ (n.choose i).factorization q := by
  apply exists_two_large_small_prime_powers hi (by omega) hcount (by omega) hM
  exact noCommon_small_part_lower_of_certificate hi hij hjn hsi hlambda hH hHn
    hexponent hcertificate hno

end B699LowIndex

#print axioms B699LowIndex.pow_le_two_descFactorial
#print axioms B699LowIndex.noCommon_bernoulli_size
#print axioms B699LowIndex.noCommon_small_part_lower_of_certificate
#print axioms B699LowIndex.noCommon_two_large_small_prime_powers
