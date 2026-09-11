import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.CofactorCover

/-!
UNCOMPILED CANDIDATE. The positive-delta, n <= H counterpart of the existing
lower-height consumer. The premise is the actual original noCommon condition.
No HeightRowValid, registry membership, or assumed small-part bound is used.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.UpperHeight

open B699LargePrimeStructure

theorem noCommon_small_part_lower_of_upper_certificate
    {n i j r s H M delta : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlambda : 0 < 2 * s - r)
    (hlarge : i * (i - 1) ≤ n) (hnH : n ≤ H)
    (hexponent : heightExponent i r s = i * (2 * s - r) + delta)
    (hcertificate : (2 * i.factorial) ^ (2 * s - r) * H ^ delta ≤
      windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)))
    (hno : ¬ Common n i j) :
    n ^ smallPrimeCount i ≤ M ^ (smallPrimeCount i - 1) * smallPrimePart n i := by
  have hn : 0 < n := by omega
  have hbase := noCommon_bernoulli_size (r := r) hi hij hjn hsi hlarge hno
  have hcert : (2 * i.factorial) ^ (2 * s - r) * n ^ delta ≤
      windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)) :=
    (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hnH delta)).trans hcertificate
  have hMpow : M ^ ((2 * s - r) * (smallPrimeCount i - 1)) =
      (M ^ (smallPrimeCount i - 1)) ^ (2 * s - r) := by
    rw [← pow_mul, Nat.mul_comm]
  have hbound :
      windowConstant i r s * n ^ (i * (2 * s - r) + delta) ≤
        windowConstant i r s * n ^ windowDegree i r s *
          (M ^ (smallPrimeCount i - 1) * smallPrimePart n i) ^ (2 * s - r) := by
    calc
      _ = (windowConstant i r s * n ^ (i * (2 * s - r))) * n ^ delta := by
        rw [pow_add]
        ring
      _ ≤ ((2 * i.factorial) ^ (2 * s - r) *
          (smallPrimePart n i) ^ (2 * s - r) * n ^ windowDegree i r s) *
            n ^ delta := Nat.mul_le_mul_right _ hbase
      _ = ((2 * i.factorial) ^ (2 * s - r) * n ^ delta) *
          (smallPrimePart n i) ^ (2 * s - r) * n ^ windowDegree i r s := by ring
      _ ≤ (windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1))) *
          (smallPrimePart n i) ^ (2 * s - r) * n ^ windowDegree i r s :=
        Nat.mul_le_mul_right _ (Nat.mul_le_mul_right _ hcert)
      _ = _ := by
        rw [hMpow]
        simp only [mul_pow]
        ring
  have hnpow : n ^ (i * (2 * s - r) + delta) =
      n ^ windowDegree i r s * (n ^ smallPrimeCount i) ^ (2 * s - r) := by
    rw [← pow_mul, ← pow_add]
    congr 1
    unfold heightExponent at hexponent
    omega
  have hmul :
      (windowConstant i r s * n ^ windowDegree i r s) *
          (n ^ smallPrimeCount i) ^ (2 * s - r) ≤
        (windowConstant i r s * n ^ windowDegree i r s) *
          (M ^ (smallPrimeCount i - 1) * smallPrimePart n i) ^ (2 * s - r) := by
    simpa only [hnpow, Nat.mul_assoc] using hbound
  have hpowers := Nat.le_of_mul_le_mul_left hmul
    (Nat.mul_pos (window_constant_pos i r s) (Nat.pow_pos hn))
  exact (Nat.pow_le_pow_iff_left hlambda.ne').mp hpowers

end B699LowIndex.UpperHeight

#print axioms B699LowIndex.UpperHeight.noCommon_small_part_lower_of_upper_certificate
