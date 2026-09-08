/- leanprover/lean4:v4.29.1  mathlib v4.29.1 -/
import ErdosProblems.Erdos686CanonicalOwnerCleaning

/-!
# Erdős 686: assembly data for the canonical owner matrix

The cleaning theorem chooses one matched lower/upper cell for every prime.
This module packages those dependent choices as ordinary total functions and
then collects equal owner pairs into a two-dimensional matrix.
-/

namespace Erdos686
namespace Erdos686Variant

open scoped BigOperators

/-- Total prime-indexed data underlying the canonical owner matrix.  Values
at nonprimes are irrelevant; every property is stated on prime inputs. -/
structure CanonicalOwnerData (k n d t : ℕ) where
  row : ℕ → ℕ
  column : ℕ → ℕ
  exponent : ℕ → ℕ
  row_mem :
    ∀ p, p.Prime → row p ∈ Finset.Icc 1 k
  column_mem :
    ∀ p, p.Prime → column p ∈ Finset.Icc 1 k
  lower_dvd :
    ∀ p, p.Prime → p ^ exponent p ∣ n + row p
  upper_dvd :
    ∀ p, p.Prime →
      p ^ exponent p ∣ upperTermAfterFour n d t (column p)
  residual_le :
    ∀ p, p.Prime →
      (blockProduct k n).factorization p - exponent p ≤
        (k - 1).factorial.factorization p

/-- Convert a primewise family of canonical matches into total owner data. -/
theorem exists_canonicalOwnerData_of_matches
    {k n d t : ℕ}
    (hall : ∀ p, p.Prime →
      Nonempty (CanonicalPrimeOwnerMatch k n d t p)) :
    Nonempty (CanonicalOwnerData k n d t) := by
  classical
  let chosen (p : ℕ) (hp : p.Prime) :
      CanonicalPrimeOwnerMatch k n d t p :=
    Classical.choice (hall p hp)
  let row : ℕ → ℕ := fun p =>
    if hp : p.Prime then (chosen p hp).row else 1
  let column : ℕ → ℕ := fun p =>
    if hp : p.Prime then (chosen p hp).column else 1
  let exponent : ℕ → ℕ := fun p =>
    if hp : p.Prime then (chosen p hp).exponent else 0
  refine ⟨{
    row := row
    column := column
    exponent := exponent
    row_mem := ?_
    column_mem := ?_
    lower_dvd := ?_
    upper_dvd := ?_
    residual_le := ?_ }⟩
  · intro p hp
    simp only [row, dif_pos hp]
    exact (chosen p hp).row_mem
  · intro p hp
    simp only [column, dif_pos hp]
    exact (chosen p hp).column_mem
  · intro p hp
    simp only [row, exponent, dif_pos hp]
    exact (chosen p hp).lower_dvd
  · intro p hp
    simp only [column, exponent, dif_pos hp]
    exact (chosen p hp).upper_dvd
  · intro p hp
    simp only [exponent, dif_pos hp]
    exact (chosen p hp).residual_le

/-- Every quotient-four solution with `k ≥ 4` admits a distinguished column
and total canonical owner data for all primes. -/
theorem exists_distinguished_canonicalOwnerData
    {k n d : ℕ}
    (hk4 : 4 ≤ k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ∃ t, t ∈ Finset.Icc 1 k ∧
      4 ∣ n + d + t ∧
      upperBlockAfterFour k n d t = blockProduct k n ∧
      Nonempty (CanonicalOwnerData k n d t) := by
  obtain ⟨t, ht, hfour, hblocks, hall⟩ :=
    exists_distinguished_canonicalPrimeOwnerMatches hk4 heq
  exact ⟨t, ht, hfour, hblocks,
    exists_canonicalOwnerData_of_matches hall⟩

/-- The prime power retained by the canonical cleaning at `p`. -/
def canonicalOwnerPrimePower
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) (p : ℕ) : ℕ :=
  p ^ data.exponent p

/-- Product of all retained prime powers assigned to one matrix cell. -/
def canonicalOwnerCell
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t)
    (j i : ℕ) : ℕ :=
  ∏ p ∈ (blockProduct k n).primeFactors,
    if data.row p = j ∧ data.column p = i
    then canonicalOwnerPrimePower data p
    else 1

/-- Product of all retained prime powers assigned to one lower row. -/
def canonicalOwnerRow
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t)
    (j : ℕ) : ℕ :=
  ∏ p ∈ (blockProduct k n).primeFactors,
    if data.row p = j then canonicalOwnerPrimePower data p else 1

/-- Product of all retained prime powers assigned to one modified upper
column. -/
def canonicalOwnerColumn
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t)
    (i : ℕ) : ℕ :=
  ∏ p ∈ (blockProduct k n).primeFactors,
    if data.column p = i then canonicalOwnerPrimePower data p else 1

/-- The product of all omitted prime powers. -/
def canonicalOwnerResidual
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) : ℕ :=
  ∏ p ∈ (blockProduct k n).primeFactors,
    p ^ ((blockProduct k n).factorization p - data.exponent p)

lemma canonicalOwnerPrimePower_pairwise_coprime
    {k n d t p q : ℕ} (data : CanonicalOwnerData k n d t)
    (hp : p.Prime) (hq : q.Prime) (hpq : p ≠ q) :
    Nat.Coprime (canonicalOwnerPrimePower data p)
      (canonicalOwnerPrimePower data q) := by
  exact Nat.Coprime.pow _ _
    (hp.coprime_iff_not_dvd.mpr (by
      intro hpdq
      exact hpq ((Nat.dvd_prime hq).mp hpdq |>.resolve_left hp.ne_one)))

private theorem finset_prod_dvd_of_pairwise_coprime_nat
    {ι : Type*}
    (s : Finset ι) (f : ι → ℕ) (z : ℕ)
    (hpair : (s : Set ι).Pairwise (Function.onFun Nat.Coprime f))
    (hdvd : ∀ x ∈ s, f x ∣ z) :
    (∏ x ∈ s, f x) ∣ z := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
      rw [Finset.prod_insert ha]
      apply Nat.Coprime.mul_dvd_of_dvd_of_dvd
      · apply Nat.Coprime.prod_right
        intro b hb
        exact hpair (by simp) (by simp [hb])
          (Ne.symm (ne_of_mem_of_not_mem hb ha))
      · exact hdvd a (by simp)
      · apply ih
        · intro x hx y hy hxy
          exact hpair (by simp [hx]) (by simp [hy]) hxy
        · intro x hx
          exact hdvd x (by simp [hx])

private lemma canonicalOwnerPrimePower_if_pairwise_coprime
    {k n d t p q : ℕ} (data : CanonicalOwnerData k n d t)
    (hp : p.Prime) (hq : q.Prime) (hpq : p ≠ q)
    (P Q : ℕ → Prop) [DecidablePred P] [DecidablePred Q] :
    Nat.Coprime
      (if P p then canonicalOwnerPrimePower data p else 1)
      (if Q q then canonicalOwnerPrimePower data q else 1) := by
  by_cases hpp : P p <;> by_cases hpq' : Q q
  · simpa [hpp, hpq'] using
      canonicalOwnerPrimePower_pairwise_coprime data hp hq hpq
  all_goals simp [hpp, hpq']

lemma canonicalOwnerRow_dvd_lower
    {k n d t j : ℕ} (data : CanonicalOwnerData k n d t) :
    canonicalOwnerRow data j ∣ n + j := by
  classical
  unfold canonicalOwnerRow
  apply finset_prod_dvd_of_pairwise_coprime_nat
  · intro p hp q hq hpq
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    have hqPrime := Nat.prime_of_mem_primeFactors hq
    exact canonicalOwnerPrimePower_if_pairwise_coprime
      data hpPrime hqPrime hpq
        (fun x => data.row x = j) (fun x => data.row x = j)
  · intro p hp
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    by_cases hpRow : data.row p = j
    · simpa [hpRow] using data.lower_dvd p hpPrime
    · simp [hpRow]

lemma canonicalOwnerColumn_dvd_upper
    {k n d t i : ℕ} (data : CanonicalOwnerData k n d t) :
    canonicalOwnerColumn data i ∣ upperTermAfterFour n d t i := by
  classical
  unfold canonicalOwnerColumn
  apply finset_prod_dvd_of_pairwise_coprime_nat
  · intro p hp q hq hpq
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    have hqPrime := Nat.prime_of_mem_primeFactors hq
    exact canonicalOwnerPrimePower_if_pairwise_coprime
      data hpPrime hqPrime hpq
        (fun x => data.column x = i) (fun x => data.column x = i)
  · intro p hp
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    by_cases hpColumn : data.column p = i
    · simpa [hpColumn] using data.upper_dvd p hpPrime
    · simp [hpColumn]

lemma canonicalOwnerCell_dvd_lower
    {k n d t j i : ℕ} (data : CanonicalOwnerData k n d t) :
    canonicalOwnerCell data j i ∣ n + j := by
  classical
  unfold canonicalOwnerCell
  apply finset_prod_dvd_of_pairwise_coprime_nat
  · intro p hp q hq hpq
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    have hqPrime := Nat.prime_of_mem_primeFactors hq
    exact canonicalOwnerPrimePower_if_pairwise_coprime
      data hpPrime hqPrime hpq
        (fun x => data.row x = j ∧ data.column x = i)
        (fun x => data.row x = j ∧ data.column x = i)
  · intro p hp
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    by_cases hpCell : data.row p = j ∧ data.column p = i
    · simpa [hpCell.1, hpCell] using data.lower_dvd p hpPrime
    · simp [hpCell]

lemma canonicalOwnerCell_dvd_upper
    {k n d t j i : ℕ} (data : CanonicalOwnerData k n d t) :
    canonicalOwnerCell data j i ∣ upperTermAfterFour n d t i := by
  classical
  unfold canonicalOwnerCell
  apply finset_prod_dvd_of_pairwise_coprime_nat
  · intro p hp q hq hpq
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    have hqPrime := Nat.prime_of_mem_primeFactors hq
    exact canonicalOwnerPrimePower_if_pairwise_coprime
      data hpPrime hqPrime hpq
        (fun x => data.row x = j ∧ data.column x = i)
        (fun x => data.row x = j ∧ data.column x = i)
  · intro p hp
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    by_cases hpCell : data.row p = j ∧ data.column p = i
    · simpa [hpCell.2, hpCell] using data.upper_dvd p hpPrime
    · simp [hpCell]

lemma canonicalOwner_row_cell_product
    {k n d t j : ℕ} (data : CanonicalOwnerData k n d t) :
    (∏ i ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) =
      canonicalOwnerRow data j := by
  classical
  unfold canonicalOwnerCell canonicalOwnerRow
  rw [Finset.prod_comm]
  apply Finset.prod_congr rfl
  intro p hp
  have hpPrime := Nat.prime_of_mem_primeFactors hp
  by_cases hpRow : data.row p = j
  · rw [if_pos hpRow]
    rw [Finset.prod_eq_single (data.column p)]
    · simp [hpRow]
    · intro i hi hine
      simp [hpRow, Ne.symm hine]
    · exact fun hnot => (hnot (data.column_mem p hpPrime)).elim
  · simp [hpRow]

lemma canonicalOwner_column_cell_product
    {k n d t i : ℕ} (data : CanonicalOwnerData k n d t) :
    (∏ j ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) =
      canonicalOwnerColumn data i := by
  classical
  unfold canonicalOwnerCell canonicalOwnerColumn
  rw [Finset.prod_comm]
  apply Finset.prod_congr rfl
  intro p hp
  have hpPrime := Nat.prime_of_mem_primeFactors hp
  by_cases hpColumn : data.column p = i
  · rw [if_pos hpColumn]
    rw [Finset.prod_eq_single (data.row p)]
    · simp [hpColumn]
    · intro j hj hjne
      simp [hpColumn, Ne.symm hjne]
    · exact fun hnot => (hnot (data.row_mem p hpPrime)).elim
  · simp [hpColumn]

lemma canonicalOwner_all_row_product
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) :
    (∏ j ∈ Finset.Icc 1 k, canonicalOwnerRow data j) =
      ∏ p ∈ (blockProduct k n).primeFactors,
        canonicalOwnerPrimePower data p := by
  classical
  unfold canonicalOwnerRow
  rw [Finset.prod_comm]
  apply Finset.prod_congr rfl
  intro p hp
  have hpPrime := Nat.prime_of_mem_primeFactors hp
  rw [Finset.prod_eq_single (data.row p)]
  · simp
  · intro j hj hjne
    simp [Ne.symm hjne]
  · exact fun hnot => (hnot (data.row_mem p hpPrime)).elim

lemma canonicalOwner_all_cell_product
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) :
    (∏ j ∈ Finset.Icc 1 k,
        ∏ i ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) =
      ∏ p ∈ (blockProduct k n).primeFactors,
        canonicalOwnerPrimePower data p := by
  calc
    (∏ j ∈ Finset.Icc 1 k,
        ∏ i ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) =
        ∏ j ∈ Finset.Icc 1 k, canonicalOwnerRow data j := by
          apply Finset.prod_congr rfl
          intro j hj
          exact canonicalOwner_row_cell_product data
    _ = ∏ p ∈ (blockProduct k n).primeFactors,
        canonicalOwnerPrimePower data p :=
      canonicalOwner_all_row_product data

lemma canonicalOwnerExponent_le_block_factorization
    {k n d t p : ℕ} (data : CanonicalOwnerData k n d t)
    (hp : p.Prime) :
    data.exponent p ≤ (blockProduct k n).factorization p := by
  have hrow := data.row_mem p hp
  have hterm0 : n + data.row p ≠ 0 := by
    have hrow1 : 1 ≤ data.row p := (Finset.mem_Icc.mp hrow).1
    omega
  have hblock0 : blockProduct k n ≠ 0 :=
    ne_of_gt (blockProduct_pos k n)
  have htermDvd : n + data.row p ∣ blockProduct k n := by
    rw [blockProduct_eq_factor_mul_localBlockCofactorNat hrow]
    exact dvd_mul_right _ _
  have hpowBlock :
      p ^ data.exponent p ∣ blockProduct k n :=
    dvd_trans (data.lower_dvd p hp) htermDvd
  exact (hp.pow_dvd_iff_le_factorization hblock0).mp hpowBlock

lemma canonicalOwnerResidual_dvd_factorial
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) :
    canonicalOwnerResidual data ∣ (k - 1).factorial := by
  classical
  unfold canonicalOwnerResidual
  apply finset_prod_dvd_of_pairwise_coprime_nat
  · intro p hp q hq hpq
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    have hqPrime := Nat.prime_of_mem_primeFactors hq
    exact Nat.Coprime.pow _ _
      (hpPrime.coprime_iff_not_dvd.mpr (by
        intro hpdq
        exact hpq
          ((Nat.dvd_prime hqPrime).mp hpdq |>.resolve_left hpPrime.ne_one)))
  · intro p hp
    have hpPrime := Nat.prime_of_mem_primeFactors hp
    exact (hpPrime.pow_dvd_iff_le_factorization
      (Nat.factorial_ne_zero _)).mpr (data.residual_le p hpPrime)

theorem canonicalOwnerResidual_mul_allPrimePowers
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) :
    canonicalOwnerResidual data *
        (∏ p ∈ (blockProduct k n).primeFactors,
          canonicalOwnerPrimePower data p) =
      blockProduct k n := by
  classical
  have hblock0 : blockProduct k n ≠ 0 :=
    ne_of_gt (blockProduct_pos k n)
  have hfactorization :
      (∏ p ∈ (blockProduct k n).primeFactors,
          p ^ (blockProduct k n).factorization p) =
        blockProduct k n := by
    rw [← Nat.prod_factorization_eq_prod_primeFactors]
    exact Nat.prod_factorization_pow_eq_self hblock0
  unfold canonicalOwnerResidual canonicalOwnerPrimePower
  calc
    (∏ p ∈ (blockProduct k n).primeFactors,
          p ^ ((blockProduct k n).factorization p - data.exponent p)) *
        (∏ p ∈ (blockProduct k n).primeFactors,
          p ^ data.exponent p) =
        ∏ p ∈ (blockProduct k n).primeFactors,
          (p ^ ((blockProduct k n).factorization p - data.exponent p) *
            p ^ data.exponent p) := by
              rw [Finset.prod_mul_distrib]
    _ = ∏ p ∈ (blockProduct k n).primeFactors,
          p ^ (blockProduct k n).factorization p := by
            apply Finset.prod_congr rfl
            intro p hp
            have hpPrime := Nat.prime_of_mem_primeFactors hp
            rw [← pow_add,
              Nat.sub_add_cancel
                (canonicalOwnerExponent_le_block_factorization data hpPrime)]
    _ = blockProduct k n := hfactorization

/-- Exact canonical-owner product identity `CO`. -/
theorem canonicalOwnerResidual_mul_allCells
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) :
    canonicalOwnerResidual data *
        (∏ j ∈ Finset.Icc 1 k,
          ∏ i ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) =
      blockProduct k n := by
  rw [canonicalOwner_all_cell_product data]
  exact canonicalOwnerResidual_mul_allPrimePowers data

theorem canonicalOwnerCells_pairwise_coprime
    {k n d t j i j' i' : ℕ}
    (data : CanonicalOwnerData k n d t)
    (hne : (j, i) ≠ (j', i')) :
    Nat.Coprime (canonicalOwnerCell data j i)
      (canonicalOwnerCell data j' i') := by
  classical
  unfold canonicalOwnerCell
  apply Nat.Coprime.prod_left
  intro p hp
  apply Nat.Coprime.prod_right
  intro q hq
  have hpPrime := Nat.prime_of_mem_primeFactors hp
  have hqPrime := Nat.prime_of_mem_primeFactors hq
  by_cases hpq : p = q
  · subst q
    by_cases hpCell : data.row p = j ∧ data.column p = i
    · have hnotOther :
          ¬(data.row p = j' ∧ data.column p = i') := by
        intro hother
        apply hne
        simp only [Prod.mk.injEq]
        exact ⟨hpCell.1.symm.trans hother.1,
          hpCell.2.symm.trans hother.2⟩
      have hcoords : ¬(j = j' ∧ i = i') := by
        simpa [Prod.mk.injEq] using hne
      simp [hpCell, hcoords]
    · simp [hpCell]
  · exact canonicalOwnerPrimePower_if_pairwise_coprime
      data hpPrime hqPrime hpq
        (fun x => data.row x = j ∧ data.column x = i)
        (fun x => data.row x = j' ∧ data.column x = i')

lemma upperTermAfterFour_dvd_original
    {n d t i : ℕ}
    (hfour : 4 ∣ n + d + t) :
    upperTermAfterFour n d t i ∣ n + d + i := by
  by_cases hit : i = t
  · subst i
    refine ⟨4, ?_⟩
    simp only [upperTermAfterFour, if_pos]
    have hmul : 4 * ((n + d + t) / 4) = n + d + t :=
      Nat.mul_div_cancel' hfour
    omega
  · simp [upperTermAfterFour, hit]

/-- Every canonical cell is supported on its shifted diagonal. -/
theorem canonicalOwnerCell_dvd_shiftedDifference
    {k n d t j i : ℕ}
    (data : CanonicalOwnerData k n d t)
    (hd : k ≤ d)
    (hj : j ∈ Finset.Icc 1 k)
    (hi : i ∈ Finset.Icc 1 k)
    (hfour : 4 ∣ n + d + t) :
    canonicalOwnerCell data j i ∣ d + i - j := by
  have hlower := canonicalOwnerCell_dvd_lower data (j := j) (i := i)
  have hupperModified :=
    canonicalOwnerCell_dvd_upper data (j := j) (i := i)
  have hupper :
      canonicalOwnerCell data j i ∣ n + d + i :=
    dvd_trans hupperModified (upperTermAfterFour_dvd_original hfour)
  have hdvdSub := Nat.dvd_sub hupper hlower
  have hji : j ≤ d + i := by
    have hjk : j ≤ k := (Finset.mem_Icc.mp hj).2
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    omega
  have hdiff : (n + d + i) - (n + j) = d + i - j := by omega
  rwa [hdiff] at hdvdSub

/-- Exact residual left after removing the canonical owner row product. -/
def canonicalLowerResidual
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) (j : ℕ) : ℕ :=
  (n + j) / canonicalOwnerRow data j

/-- Exact residual left after removing the canonical owner column product
from the upper block with the external factor four removed. -/
def canonicalUpperResidual
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) (i : ℕ) : ℕ :=
  upperTermAfterFour n d t i / canonicalOwnerColumn data i

lemma canonical_lower_term_factorization
    {k n d t j : ℕ} (data : CanonicalOwnerData k n d t) :
    n + j =
      canonicalLowerResidual data j * canonicalOwnerRow data j := by
  exact (Nat.div_mul_cancel (canonicalOwnerRow_dvd_lower data)).symm

lemma canonical_modified_upper_term_factorization
    {k n d t i : ℕ} (data : CanonicalOwnerData k n d t) :
    upperTermAfterFour n d t i =
      canonicalUpperResidual data i * canonicalOwnerColumn data i := by
  exact (Nat.div_mul_cancel (canonicalOwnerColumn_dvd_upper data)).symm

/-- Restore the distinguished external coefficient `c_t = 4`. -/
theorem canonical_upper_term_factorization
    {k n d t i : ℕ} (data : CanonicalOwnerData k n d t)
    (hfour : 4 ∣ n + d + t) :
    n + d + i =
      (if i = t then 4 else 1) *
        canonicalUpperResidual data i * canonicalOwnerColumn data i := by
  by_cases hit : i = t
  · subst i
    have hmul : 4 * upperTermAfterFour n d t t = n + d + t := by
      simp only [upperTermAfterFour, if_pos]
      exact Nat.mul_div_cancel' hfour
    rw [if_pos rfl]
    calc
      n + d + t = 4 * upperTermAfterFour n d t t := hmul.symm
      _ = 4 * (canonicalUpperResidual data t *
          canonicalOwnerColumn data t) := by
            rw [canonical_modified_upper_term_factorization data]
      _ = 4 * canonicalUpperResidual data t *
          canonicalOwnerColumn data t := by ring
  · rw [if_neg hit]
    simp only [one_mul]
    simpa [upperTermAfterFour, hit] using
      canonical_modified_upper_term_factorization data (i := i)

lemma canonicalOwner_all_column_product
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) :
    (∏ i ∈ Finset.Icc 1 k, canonicalOwnerColumn data i) =
      ∏ p ∈ (blockProduct k n).primeFactors,
        canonicalOwnerPrimePower data p := by
  classical
  unfold canonicalOwnerColumn
  rw [Finset.prod_comm]
  apply Finset.prod_congr rfl
  intro p hp
  have hpPrime := Nat.prime_of_mem_primeFactors hp
  rw [Finset.prod_eq_single (data.column p)]
  · simp
  · intro i hi hine
    simp [Ne.symm hine]
  · exact fun hnot => (hnot (data.column_mem p hpPrime)).elim

lemma blockProduct_eq_lowerResiduals_mul_primePowers
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) :
    blockProduct k n =
      (∏ j ∈ Finset.Icc 1 k, canonicalLowerResidual data j) *
        (∏ p ∈ (blockProduct k n).primeFactors,
          canonicalOwnerPrimePower data p) := by
  unfold blockProduct
  calc
    (Finset.Icc 1 k).prod (fun h => n + h) =
        (Finset.Icc 1 k).prod
          (fun h => canonicalLowerResidual data h *
            canonicalOwnerRow data h) := by
            apply Finset.prod_congr rfl
            intro h hh
            exact canonical_lower_term_factorization data
    _ = (Finset.Icc 1 k).prod (canonicalLowerResidual data) *
        (Finset.Icc 1 k).prod (canonicalOwnerRow data) := by
          rw [Finset.prod_mul_distrib]
    _ = (Finset.Icc 1 k).prod (canonicalLowerResidual data) *
        (∏ p ∈ (blockProduct k n).primeFactors,
          canonicalOwnerPrimePower data p) := by
            rw [canonicalOwner_all_row_product data]

lemma upperBlockAfterFour_eq_upperResiduals_mul_primePowers
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) :
    upperBlockAfterFour k n d t =
      (∏ i ∈ Finset.Icc 1 k, canonicalUpperResidual data i) *
        (∏ p ∈ (blockProduct k n).primeFactors,
          canonicalOwnerPrimePower data p) := by
  unfold upperBlockAfterFour
  calc
    (∏ i ∈ Finset.Icc 1 k, upperTermAfterFour n d t i) =
        ∏ i ∈ Finset.Icc 1 k,
          (canonicalUpperResidual data i *
            canonicalOwnerColumn data i) := by
              apply Finset.prod_congr rfl
              intro i hi
              exact canonical_modified_upper_term_factorization data
    _ = (∏ i ∈ Finset.Icc 1 k, canonicalUpperResidual data i) *
        (∏ i ∈ Finset.Icc 1 k, canonicalOwnerColumn data i) := by
          rw [Finset.prod_mul_distrib]
    _ = (∏ i ∈ Finset.Icc 1 k, canonicalUpperResidual data i) *
        (∏ p ∈ (blockProduct k n).primeFactors,
          canonicalOwnerPrimePower data p) := by
            rw [canonicalOwner_all_column_product data]

theorem canonicalLowerResidual_product_eq_global
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t) :
    (∏ j ∈ Finset.Icc 1 k, canonicalLowerResidual data j) =
      canonicalOwnerResidual data := by
  let P :=
    ∏ p ∈ (blockProduct k n).primeFactors,
      canonicalOwnerPrimePower data p
  have hPpos : 0 < P := by
    dsimp [P, canonicalOwnerPrimePower]
    apply Finset.prod_pos
    intro p hp
    exact pow_pos (Nat.prime_of_mem_primeFactors hp).pos _
  apply Nat.mul_right_cancel hPpos
  calc
    (∏ j ∈ Finset.Icc 1 k, canonicalLowerResidual data j) * P =
        blockProduct k n := by
          symm
          exact blockProduct_eq_lowerResiduals_mul_primePowers data
    _ = canonicalOwnerResidual data * P := by
          symm
          exact canonicalOwnerResidual_mul_allPrimePowers data

theorem canonicalUpperResidual_product_eq_global
    {k n d t : ℕ} (data : CanonicalOwnerData k n d t)
    (hblocks : upperBlockAfterFour k n d t = blockProduct k n) :
    (∏ i ∈ Finset.Icc 1 k, canonicalUpperResidual data i) =
      canonicalOwnerResidual data := by
  let P :=
    ∏ p ∈ (blockProduct k n).primeFactors,
      canonicalOwnerPrimePower data p
  have hPpos : 0 < P := by
    dsimp [P, canonicalOwnerPrimePower]
    apply Finset.prod_pos
    intro p hp
    exact pow_pos (Nat.prime_of_mem_primeFactors hp).pos _
  apply Nat.mul_right_cancel hPpos
  calc
    (∏ i ∈ Finset.Icc 1 k, canonicalUpperResidual data i) * P =
        upperBlockAfterFour k n d t := by
          symm
          exact upperBlockAfterFour_eq_upperResiduals_mul_primePowers data
    _ = blockProduct k n := hblocks
    _ = canonicalOwnerResidual data * P := by
          symm
          exact canonicalOwnerResidual_mul_allPrimePowers data

/-- Full all-`k` canonical owner-cleaning theorem.  The returned matrix,
row residuals, column residuals, global residual, and distinguished column
satisfy every identity in the canonical-owner handoff. -/
theorem exists_canonicalOwnerSystem
    {k n d : ℕ}
    (hk4 : 4 ≤ k)
    (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ∃ t, ∃ data : CanonicalOwnerData k n d t,
      t ∈ Finset.Icc 1 k ∧
      4 ∣ n + d + t ∧
      canonicalOwnerResidual data ∣ (k - 1).factorial ∧
      (∏ j ∈ Finset.Icc 1 k, canonicalLowerResidual data j) =
        canonicalOwnerResidual data ∧
      (∏ i ∈ Finset.Icc 1 k, canonicalUpperResidual data i) =
        canonicalOwnerResidual data ∧
      (∀ j, j ∈ Finset.Icc 1 k →
        n + j =
          canonicalLowerResidual data j *
            ∏ i ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) ∧
      (∀ i, i ∈ Finset.Icc 1 k →
        n + d + i =
          (if i = t then 4 else 1) *
            canonicalUpperResidual data i *
              ∏ j ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) ∧
      (∀ j ∈ Finset.Icc 1 k, ∀ i ∈ Finset.Icc 1 k,
        canonicalOwnerCell data j i ∣ d + i - j) ∧
      (∀ j ∈ Finset.Icc 1 k, ∀ i ∈ Finset.Icc 1 k,
        ∀ j' ∈ Finset.Icc 1 k, ∀ i' ∈ Finset.Icc 1 k,
          (j, i) ≠ (j', i') →
            Nat.Coprime (canonicalOwnerCell data j i)
              (canonicalOwnerCell data j' i')) ∧
      canonicalOwnerResidual data *
          (∏ j ∈ Finset.Icc 1 k,
            ∏ i ∈ Finset.Icc 1 k, canonicalOwnerCell data j i) =
        blockProduct k n := by
  obtain ⟨t, ht, hfour, hblocks, hdata⟩ :=
    exists_distinguished_canonicalOwnerData hk4 heq
  let data := Classical.choice hdata
  refine ⟨t, data, ht, hfour,
    canonicalOwnerResidual_dvd_factorial data,
    canonicalLowerResidual_product_eq_global data,
    canonicalUpperResidual_product_eq_global data hblocks,
    ?_, ?_, ?_, ?_, canonicalOwnerResidual_mul_allCells data⟩
  · intro j hj
    calc
      n + j =
          canonicalLowerResidual data j * canonicalOwnerRow data j :=
        canonical_lower_term_factorization data
      _ = canonicalLowerResidual data j *
          ∏ i ∈ Finset.Icc 1 k, canonicalOwnerCell data j i := by
            rw [canonicalOwner_row_cell_product data]
  · intro i hi
    calc
      n + d + i =
          (if i = t then 4 else 1) *
            canonicalUpperResidual data i *
              canonicalOwnerColumn data i :=
        canonical_upper_term_factorization data hfour
      _ = (if i = t then 4 else 1) *
            canonicalUpperResidual data i *
              ∏ j ∈ Finset.Icc 1 k, canonicalOwnerCell data j i := by
                rw [canonicalOwner_column_cell_product data]
  · intro j hj i hi
    exact canonicalOwnerCell_dvd_shiftedDifference data hd hj hi hfour
  · intro j hj i hi j' hj' i' hi' hne
    exact canonicalOwnerCells_pairwise_coprime data hne

#print axioms exists_canonicalOwnerData_of_matches
#print axioms exists_distinguished_canonicalOwnerData
#print axioms canonicalOwnerPrimePower_pairwise_coprime
#print axioms canonicalOwnerRow_dvd_lower
#print axioms canonicalOwnerColumn_dvd_upper
#print axioms canonicalOwnerCell_dvd_lower
#print axioms canonicalOwnerCell_dvd_upper
#print axioms canonicalOwner_row_cell_product
#print axioms canonicalOwner_column_cell_product
#print axioms canonicalOwner_all_cell_product
#print axioms canonicalOwnerExponent_le_block_factorization
#print axioms canonicalOwnerResidual_dvd_factorial
#print axioms canonicalOwnerResidual_mul_allCells
#print axioms canonicalOwnerCells_pairwise_coprime
#print axioms canonicalOwnerCell_dvd_shiftedDifference
#print axioms canonical_lower_term_factorization
#print axioms canonical_upper_term_factorization
#print axioms canonicalLowerResidual_product_eq_global
#print axioms canonicalUpperResidual_product_eq_global
#print axioms exists_canonicalOwnerSystem

end Erdos686Variant
end Erdos686
