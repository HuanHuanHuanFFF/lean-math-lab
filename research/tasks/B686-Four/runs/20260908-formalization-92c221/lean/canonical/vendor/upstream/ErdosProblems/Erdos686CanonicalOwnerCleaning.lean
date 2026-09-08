/- leanprover/lean4:v4.29.1  mathlib v4.29.1 -/
import ErdosProblems.Erdos686PadicLift

/-!
# Erdős 686: arithmetic core of canonical owner cleaning

The one-block valuation concentration theorem is already supplied by
`exists_blockProduct_factorization_concentration`.  This module records the
two elementary matching inequalities used when lower and upper valuations are
paired prime by prime.

For odd primes the two block totals agree.  At `p=2`, the upper total is the
lower total plus two; allocating against `F-2`, where `F` is an original
maximal upper valuation, has exactly the same omitted mass as the original
upper concentration bound.
-/

namespace Erdos686
namespace Erdos686Variant

open scoped BigOperators

/-- Matching two equal valuation totals at exponents `E` and `F` leaves at
most the common concentration loss. -/
theorem matched_equal_total_residual_le
    {S E F L : ℕ}
    (hlower : S ≤ E + L)
    (hupper : S ≤ F + L) :
    S - min E F ≤ L := by
  omega

/-- Correct `p=2` accounting for the external factor four.  If the upper
total is `S+2` and its selected exponent is `F`, removing the external two
and matching against `F-2` still leaves at most the same factorial loss.

No maximum needs to be reselected after subtracting two. -/
theorem matched_two_external_residual_le
    {S E F L : ℕ}
    (hlower : S ≤ E + L)
    (hupper : S + 2 ≤ F + L)
    (hF : 2 ≤ F) :
    S - min E (F - 2) ≤ L := by
  omega

/-- The upper-side residual identity used in the preceding theorem. -/
theorem two_external_upper_residual_identity
    {S F : ℕ} (hF : 2 ≤ F) :
    S - (F - 2) = (S + 2) - F := by
  omega

/-- Strengthened interface for the existing consecutive-block concentration
theorem: the selected factor is explicitly maximal as well as carrying all
but the `(k-1)!` valuation loss. -/
theorem exists_blockProduct_factorization_max_concentration
    {p k n : ℕ}
    (hp : p.Prime)
    (hk : 1 ≤ k) :
    ∃ i, i ∈ Finset.Icc 1 k ∧
      (∀ j ∈ Finset.Icc 1 k,
        (n + j).factorization p ≤ (n + i).factorization p) ∧
      (blockProduct k n).factorization p ≤
        (n + i).factorization p + (k - 1).factorial.factorization p := by
  obtain ⟨i₀, hi₀, hconcentration⟩ :=
    exists_blockProduct_factorization_concentration hp hk (n := n)
  let s : Finset ℕ := Finset.Icc 1 k
  have hs : s.Nonempty := by
    exact ⟨1, Finset.mem_Icc.mpr ⟨le_rfl, hk⟩⟩
  obtain ⟨i, hi, hmax⟩ :=
    Finset.exists_max_image s (fun j => (n + j).factorization p) hs
  have hiIcc : i ∈ Finset.Icc 1 k := by simpa [s] using hi
  have hi₀s : i₀ ∈ s := by simpa [s] using hi₀
  refine ⟨i, hiIcc, ?_, ?_⟩
  · intro j hj
    exact hmax j (by simpa [s] using hj)
  · have hi₀le := hmax i₀ hi₀s
    omega

lemma blockProduct_factorization_eq_of_four_solution_prime_ne_two
    {k n d p : ℕ}
    (hp : p.Prime)
    (hp2 : p ≠ 2)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (blockProduct k (n + d)).factorization p =
      (blockProduct k n).factorization p := by
  have hlower0 : blockProduct k n ≠ 0 :=
    ne_of_gt (blockProduct_pos k n)
  have hp4 : ¬p ∣ 4 := by
    intro hdiv
    have hdivPow : p ∣ 2 ^ 2 := by
      norm_num
      exact hdiv
    have hdivTwo : p ∣ 2 := hp.dvd_of_dvd_pow hdivPow
    exact hp2 ((Nat.prime_dvd_prime_iff_eq hp Nat.prime_two).mp hdivTwo)
  have hfourVal : (4 : ℕ).factorization p = 0 :=
    Nat.factorization_eq_zero_of_not_dvd hp4
  have hfull := congrArg Nat.factorization heq
  have hfullp := DFunLike.congr_fun hfull p
  rw [Nat.factorization_mul (by norm_num : (4 : ℕ) ≠ 0) hlower0,
    Finsupp.add_apply, hfourVal, zero_add] at hfullp
  exact hfullp

lemma blockProduct_factorization_two_of_four_solution
    {k n d : ℕ}
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (blockProduct k (n + d)).factorization 2 =
      2 + (blockProduct k n).factorization 2 := by
  have hlower0 : blockProduct k n ≠ 0 :=
    ne_of_gt (blockProduct_pos k n)
  have hfull := congrArg Nat.factorization heq
  have hfullTwo := DFunLike.congr_fun hfull 2
  rw [Nat.factorization_mul (by norm_num : (4 : ℕ) ≠ 0) hlower0,
    Finsupp.add_apply] at hfullTwo
  have hfourFact : (4 : ℕ).factorization 2 = 2 := by
    rw [show (4 : ℕ) = 2 * 2 by norm_num,
      Nat.factorization_mul (by norm_num : (2 : ℕ) ≠ 0)
        (by norm_num : (2 : ℕ) ≠ 0),
      Finsupp.add_apply]
    simp [Nat.Prime.factorization_self Nat.prime_two]
  rwa [hfourFact] at hfullTwo

/-- One distinguished upper term with the external factor four removed. -/
def upperTermAfterFour (n d t i : ℕ) : ℕ :=
  if i = t then (n + d + i) / 4 else n + d + i

lemma upperTermAfterFour_factorization_of_prime_ne_two
    {n d t i p : ℕ}
    (hp : p.Prime)
    (hp2 : p ≠ 2)
    (htermPos : 0 < n + d + t)
    (hfour : 4 ∣ n + d + t) :
    (upperTermAfterFour n d t i).factorization p =
      (n + d + i).factorization p := by
  by_cases hit : i = t
  · subst i
    have h4le : 4 ≤ n + d + t := Nat.le_of_dvd htermPos hfour
    have hquotPos : 0 < (n + d + t) / 4 :=
      Nat.div_pos h4le (by norm_num)
    have hmul : 4 * ((n + d + t) / 4) = n + d + t :=
      Nat.mul_div_cancel' hfour
    have hp4 : ¬p ∣ 4 := by
      intro hdiv
      have hdivPow : p ∣ 2 ^ 2 := by
        norm_num
        exact hdiv
      have hdivTwo : p ∣ 2 := hp.dvd_of_dvd_pow hdivPow
      exact hp2 ((Nat.prime_dvd_prime_iff_eq hp Nat.prime_two).mp hdivTwo)
    have hfourVal : (4 : ℕ).factorization p = 0 :=
      Nat.factorization_eq_zero_of_not_dvd hp4
    have hfact := congrArg Nat.factorization hmul
    have hfactp := DFunLike.congr_fun hfact p
    rw [Nat.factorization_mul (by norm_num : (4 : ℕ) ≠ 0)
      (Nat.ne_of_gt hquotPos), Finsupp.add_apply, hfourVal, zero_add] at hfactp
    simpa [upperTermAfterFour] using hfactp
  · simp [upperTermAfterFour, hit]

lemma upperTermAfterFour_factorization_two_at_distinguished
    {n d t : ℕ}
    (htermPos : 0 < n + d + t)
    (hfour : 4 ∣ n + d + t) :
    (upperTermAfterFour n d t t).factorization 2 =
      (n + d + t).factorization 2 - 2 := by
  have h4le : 4 ≤ n + d + t := Nat.le_of_dvd htermPos hfour
  have hquotPos : 0 < (n + d + t) / 4 :=
    Nat.div_pos h4le (by norm_num)
  have hmul : 4 * ((n + d + t) / 4) = n + d + t :=
    Nat.mul_div_cancel' hfour
  have hfact := congrArg Nat.factorization hmul
  have hfactTwo := DFunLike.congr_fun hfact 2
  rw [Nat.factorization_mul (by norm_num : (4 : ℕ) ≠ 0)
    (Nat.ne_of_gt hquotPos), Finsupp.add_apply] at hfactTwo
  have hfourFact : (4 : ℕ).factorization 2 = 2 := by
    rw [show (4 : ℕ) = 2 * 2 by norm_num,
      Nat.factorization_mul (by norm_num : (2 : ℕ) ≠ 0)
        (by norm_num : (2 : ℕ) ≠ 0),
      Finsupp.add_apply]
    simp [Nat.Prime.factorization_self Nat.prime_two]
  rw [hfourFact] at hfactTwo
  simp only [upperTermAfterFour, if_pos]
  calc
    ((n + d + t) / 4).factorization 2 =
        (2 + ((n + d + t) / 4).factorization 2) - 2 := by omega
    _ = (n + d + t).factorization 2 - 2 := by rw [hfactTwo]

/-- Product of the modified upper block. -/
def upperBlockAfterFour (k n d t : ℕ) : ℕ :=
  ∏ i ∈ Finset.Icc 1 k, upperTermAfterFour n d t i

lemma upperTermAfterFour_pos
    {k n d t i : ℕ}
    (ht : t ∈ Finset.Icc 1 k)
    (hi : i ∈ Finset.Icc 1 k)
    (hfour : 4 ∣ n + d + t) :
    0 < upperTermAfterFour n d t i := by
  by_cases hit : i = t
  · subst i
    have ht1 : 1 ≤ t := (Finset.mem_Icc.mp ht).1
    have htermPos : 0 < n + d + t := by omega
    have h4le : 4 ≤ n + d + t := Nat.le_of_dvd htermPos hfour
    simp only [upperTermAfterFour, if_pos]
    exact Nat.div_pos h4le (by norm_num)
  · have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    simp only [upperTermAfterFour, if_neg hit]
    omega

/-- One prime's contribution to the canonical two-dimensional owner matrix. -/
structure CanonicalPrimeOwnerMatch
    (k n d t p : ℕ) where
  row : ℕ
  column : ℕ
  exponent : ℕ
  row_mem : row ∈ Finset.Icc 1 k
  column_mem : column ∈ Finset.Icc 1 k
  lower_dvd : p ^ exponent ∣ n + row
  upper_dvd : p ^ exponent ∣ upperTermAfterFour n d t column
  residual_le :
    (blockProduct k n).factorization p - exponent ≤
      (k - 1).factorial.factorization p

/-- Canonical matched owner for every odd prime. -/
theorem exists_canonicalPrimeOwnerMatch_of_ne_two
    {k n d t p : ℕ}
    (hk : 1 ≤ k)
    (ht : t ∈ Finset.Icc 1 k)
    (hfour : 4 ∣ n + d + t)
    (hp : p.Prime)
    (hp2 : p ≠ 2)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    Nonempty (CanonicalPrimeOwnerMatch k n d t p) := by
  obtain ⟨j, hj, _hjMax, hjConcentration⟩ :=
    exists_blockProduct_factorization_max_concentration hp hk (n := n)
  obtain ⟨i, hi, _hiMax, hiConcentration⟩ :=
    exists_blockProduct_factorization_max_concentration hp hk (n := n + d)
  let e := min ((n + j).factorization p) ((n + d + i).factorization p)
  have hvalEq :=
    blockProduct_factorization_eq_of_four_solution_prime_ne_two hp hp2 heq
  have hiConcentrationLower :
      (blockProduct k n).factorization p ≤
        (n + d + i).factorization p +
          (k - 1).factorial.factorization p := by
    rw [← hvalEq]
    exact hiConcentration
  have hresidual :
      (blockProduct k n).factorization p - e ≤
        (k - 1).factorial.factorization p := by
    exact matched_equal_total_residual_le
      hjConcentration hiConcentrationLower
  have hj0 : n + j ≠ 0 := by
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    omega
  have hiModifiedPos := upperTermAfterFour_pos ht hi hfour
  have heLower : e ≤ (n + j).factorization p := by
    exact min_le_left _ _
  have heUpperOriginal : e ≤ (n + d + i).factorization p := by
    exact min_le_right _ _
  have hiFactorization :
      (upperTermAfterFour n d t i).factorization p =
        (n + d + i).factorization p :=
    upperTermAfterFour_factorization_of_prime_ne_two hp hp2
      (by
        have ht1 : 1 ≤ t := (Finset.mem_Icc.mp ht).1
        omega)
      hfour
  have heUpper :
      e ≤ (upperTermAfterFour n d t i).factorization p := by
    rw [hiFactorization]
    exact heUpperOriginal
  exact ⟨{
    row := j
    column := i
    exponent := e
    row_mem := hj
    column_mem := hi
    lower_dvd := (hp.pow_dvd_iff_le_factorization hj0).mpr heLower
    upper_dvd :=
      (hp.pow_dvd_iff_le_factorization
        (Nat.ne_of_gt hiModifiedPos)).mpr heUpper
    residual_le := hresidual }⟩

/-- Every block of at least four consecutive positive integers contains a
term divisible by four. -/
theorem exists_upper_term_four_dvd
    {k n d : ℕ} (hk4 : 4 ≤ k) :
    ∃ t, t ∈ Finset.Icc 1 k ∧ 4 ∣ n + d + t := by
  let r := (n + d) % 4
  let t := if r = 0 then 4 else 4 - r
  have hrlt : r < 4 := by
    dsimp [r]
    exact Nat.mod_lt _ (by norm_num)
  have ht1 : 1 ≤ t := by
    dsimp [t]
    split
    · omega
    · omega
  have ht4 : t ≤ 4 := by
    dsimp [t]
    split <;> omega
  have hmod : (n + d + t) % 4 = 0 := by
    have hrEq : (n + d) % 4 = r := by rfl
    dsimp [t]
    split
    · simp_all
    · rw [Nat.add_mod]
      rw [hrEq]
      interval_cases r <;> norm_num at *
  refine ⟨t, Finset.mem_Icc.mpr ⟨ht1, by omega⟩, ?_⟩
  exact Nat.dvd_iff_mod_eq_zero.mpr hmod

/-- The maximum 2-adic valuation in every length-at-least-four upper block
is at least two. -/
theorem exists_upper_two_max_concentration
    {k n d : ℕ} (hk4 : 4 ≤ k) :
    ∃ i, i ∈ Finset.Icc 1 k ∧
      2 ≤ (n + d + i).factorization 2 ∧
      (∀ j ∈ Finset.Icc 1 k,
        (n + d + j).factorization 2 ≤ (n + d + i).factorization 2) ∧
      (blockProduct k (n + d)).factorization 2 ≤
        (n + d + i).factorization 2 +
          (k - 1).factorial.factorization 2 := by
  obtain ⟨i, hi, hmax, hconcentration⟩ :=
    exists_blockProduct_factorization_max_concentration
      (by norm_num : Nat.Prime 2) (by omega : 1 ≤ k) (n := n + d)
  obtain ⟨q, hq, hfour⟩ :=
    exists_upper_term_four_dvd (k := k) (n := n) (d := d) hk4
  have hterm0 : n + d + q ≠ 0 := by
    have hq1 : 1 ≤ q := (Finset.mem_Icc.mp hq).1
    omega
  have htwoQ : 2 ≤ (n + d + q).factorization 2 := by
    have hpow : 2 ^ 2 ∣ n + d + q := by
      norm_num
      exact hfour
    exact ((by norm_num : Nat.Prime 2).pow_dvd_iff_le_factorization hterm0).mp hpow
  refine ⟨i, hi, le_trans htwoQ (hmax q hq), hmax, hconcentration⟩

lemma upperBlockAfterFour_eq_divided_factor
    {k n d t : ℕ}
    (ht : t ∈ Finset.Icc 1 k) :
    upperBlockAfterFour k n d t =
      ((n + d + t) / 4) * localBlockCofactorNat k t (n + d) := by
  unfold upperBlockAfterFour upperTermAfterFour localBlockCofactorNat
  rw [Finset.prod_eq_mul_prod_diff_singleton_of_mem ht]
  simp only [if_pos]
  congr 1
  apply Finset.prod_congr
  · ext x
    simp [and_comm]
  · intro x hx
    have hxt : x ≠ t := (Finset.mem_erase.mp hx).1
    simp [hxt]

/-- Removing the external factor four from a divisible upper term converts
the quotient-four equation into equality of two ordinary products. -/
theorem upperBlockAfterFour_eq_lowerBlock
    {k n d t : ℕ}
    (ht : t ∈ Finset.Icc 1 k)
    (hfour : 4 ∣ n + d + t)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    upperBlockAfterFour k n d t = blockProduct k n := by
  have hupperFactor :=
    blockProduct_eq_factor_mul_localBlockCofactorNat
      (k := k) (i := t) (n := n + d) ht
  have hcancelFour : 4 * ((n + d + t) / 4) = n + d + t :=
    Nat.mul_div_cancel' hfour
  have hscaled :
      4 * upperBlockAfterFour k n d t =
        4 * blockProduct k n := by
    calc
      4 * upperBlockAfterFour k n d t =
          blockProduct k (n + d) := by
            rw [upperBlockAfterFour_eq_divided_factor ht, hupperFactor,
              ← mul_assoc, hcancelFour]
      _ = 4 * blockProduct k n := heq
  exact Nat.mul_left_cancel (by norm_num : 0 < 4) hscaled

/-- Every quotient-four solution with `k≥4` admits a distinguished column
whose removal of the external four yields an equal-product pair. -/
theorem exists_equal_product_upperBlockAfterFour
    {k n d : ℕ}
    (hk4 : 4 ≤ k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ∃ t, t ∈ Finset.Icc 1 k ∧
      4 ∣ n + d + t ∧
      upperBlockAfterFour k n d t = blockProduct k n := by
  obtain ⟨t, ht, hfour⟩ := exists_upper_term_four_dvd
    (k := k) (n := n) (d := d) hk4
  exact ⟨t, ht, hfour, upperBlockAfterFour_eq_lowerBlock ht hfour heq⟩

/-- The distinguished four-removed column can be chosen at an actual maximum
of the upper 2-adic valuations.  This is the canonical choice used by the
prime-by-prime owner matrix. -/
theorem exists_two_max_equal_product_upperBlockAfterFour
    {k n d : ℕ}
    (hk4 : 4 ≤ k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ∃ t, t ∈ Finset.Icc 1 k ∧
      2 ≤ (n + d + t).factorization 2 ∧
      (∀ i ∈ Finset.Icc 1 k,
        (n + d + i).factorization 2 ≤ (n + d + t).factorization 2) ∧
      (blockProduct k (n + d)).factorization 2 ≤
        (n + d + t).factorization 2 +
          (k - 1).factorial.factorization 2 ∧
      4 ∣ n + d + t ∧
      upperBlockAfterFour k n d t = blockProduct k n := by
  obtain ⟨t, ht, htTwo, htMax, htConcentration⟩ :=
    exists_upper_two_max_concentration (k := k) (n := n) (d := d) hk4
  have ht0 : n + d + t ≠ 0 := by
    have ht1 : 1 ≤ t := (Finset.mem_Icc.mp ht).1
    omega
  have hfour : 4 ∣ n + d + t := by
    have hpow : 2 ^ 2 ∣ n + d + t :=
      ((by norm_num : Nat.Prime 2).pow_dvd_iff_le_factorization ht0).mpr htTwo
    norm_num at hpow ⊢
    exact hpow
  exact ⟨t, ht, htTwo, htMax, htConcentration, hfour,
    upperBlockAfterFour_eq_lowerBlock ht hfour heq⟩

/-- Canonical matched owner for the exceptional prime two, after the
distinguished upper maximum has absorbed the external factor four. -/
theorem exists_canonicalPrimeOwnerMatch_two
    {k n d t : ℕ}
    (hk : 1 ≤ k)
    (ht : t ∈ Finset.Icc 1 k)
    (htTwo : 2 ≤ (n + d + t).factorization 2)
    (htConcentration :
      (blockProduct k (n + d)).factorization 2 ≤
        (n + d + t).factorization 2 +
          (k - 1).factorial.factorization 2)
    (hfour : 4 ∣ n + d + t)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    Nonempty (CanonicalPrimeOwnerMatch k n d t 2) := by
  obtain ⟨j, hj, _hjMax, hjConcentration⟩ :=
    exists_blockProduct_factorization_max_concentration
      (by norm_num : Nat.Prime 2) hk (n := n)
  let e :=
    min ((n + j).factorization 2)
      ((n + d + t).factorization 2 - 2)
  have hvalEq :=
    blockProduct_factorization_two_of_four_solution heq
  have htConcentrationLower :
      (blockProduct k n).factorization 2 + 2 ≤
        (n + d + t).factorization 2 +
          (k - 1).factorial.factorization 2 := by
    omega
  have hresidual :
      (blockProduct k n).factorization 2 - e ≤
        (k - 1).factorial.factorization 2 := by
    exact matched_two_external_residual_le
      hjConcentration htConcentrationLower htTwo
  have hj0 : n + j ≠ 0 := by
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    omega
  have htModifiedPos := upperTermAfterFour_pos ht ht hfour
  have heLower : e ≤ (n + j).factorization 2 := by
    exact min_le_left _ _
  have htFactorization :
      (upperTermAfterFour n d t t).factorization 2 =
        (n + d + t).factorization 2 - 2 :=
    upperTermAfterFour_factorization_two_at_distinguished
      (by
        have ht1 : 1 ≤ t := (Finset.mem_Icc.mp ht).1
        omega)
      hfour
  have heUpper :
      e ≤ (upperTermAfterFour n d t t).factorization 2 := by
    rw [htFactorization]
    exact min_le_right _ _
  exact ⟨{
    row := j
    column := t
    exponent := e
    row_mem := hj
    column_mem := ht
    lower_dvd :=
      ((by norm_num : Nat.Prime 2).pow_dvd_iff_le_factorization hj0).mpr
        heLower
    upper_dvd :=
      ((by norm_num : Nat.Prime 2).pow_dvd_iff_le_factorization
        (Nat.ne_of_gt htModifiedPos)).mpr heUpper
    residual_le := hresidual }⟩

/-- A quotient-four solution with `k ≥ 4` has one distinguished modified
upper column for which every prime admits a canonical matched owner. -/
theorem exists_distinguished_canonicalPrimeOwnerMatches
    {k n d : ℕ}
    (hk4 : 4 ≤ k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ∃ t, t ∈ Finset.Icc 1 k ∧
      4 ∣ n + d + t ∧
      upperBlockAfterFour k n d t = blockProduct k n ∧
      ∀ p, p.Prime →
        Nonempty (CanonicalPrimeOwnerMatch k n d t p) := by
  obtain ⟨t, ht, htTwo, _htMax, htConcentration, hfour, hblocks⟩ :=
    exists_two_max_equal_product_upperBlockAfterFour hk4 heq
  refine ⟨t, ht, hfour, hblocks, ?_⟩
  intro p hp
  by_cases hp2 : p = 2
  · subst p
    exact exists_canonicalPrimeOwnerMatch_two
      (by omega : 1 ≤ k) ht htTwo htConcentration hfour heq
  · exact exists_canonicalPrimeOwnerMatch_of_ne_two
      (by omega : 1 ≤ k) ht hfour hp hp2 heq

#print axioms matched_equal_total_residual_le
#print axioms matched_two_external_residual_le
#print axioms two_external_upper_residual_identity
#print axioms exists_blockProduct_factorization_max_concentration
#print axioms exists_upper_term_four_dvd
#print axioms exists_upper_two_max_concentration
#print axioms upperBlockAfterFour_eq_lowerBlock
#print axioms exists_equal_product_upperBlockAfterFour
#print axioms exists_two_max_equal_product_upperBlockAfterFour
#print axioms exists_canonicalPrimeOwnerMatch_of_ne_two
#print axioms exists_canonicalPrimeOwnerMatch_two
#print axioms exists_distinguished_canonicalPrimeOwnerMatches

end Erdos686Variant
end Erdos686
