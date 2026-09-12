import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2FourIntervals.Intervals
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Finite
import Mathlib.Data.Finset.Union
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-! UNCOMPILED. The four prime intervals contribute to the actual full-power C2 product. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2FourIntervals
open scoped BigOperators

/-- The actual interval is left-open and right-closed; its finite cap is supplied by C2. -/
def intervalPrimes (m j : ℕ) : Finset ℕ :=
  (C2Direct.primeSet (4 * m) (4 * m) m).filter
    (fun p => 4 * m < j * p ∧ 2 * j * p ≤ 9 * m - 2)

def fourPrimes (m : ℕ) : Finset ℕ :=
  (Finset.Icc 1 4).biUnion (intervalPrimes m)

def p4 (m : ℕ) : ℕ := ∏ p ∈ fourPrimes m, p

/-- For positive j, the C2 finite cap does not remove any prime in the source interval. -/
theorem mem_intervalPrimes_iff (m j p : ℕ) (hj : 1 ≤ j) :
    p ∈ intervalPrimes m j ↔
      p.Prime ∧ 4 * m < j * p ∧ 2 * j * p ≤ 9 * m - 2 := by
  constructor
  · intro hp
    obtain ⟨hbase, hlo, hhi⟩ := Finset.mem_filter.mp hp
    exact ⟨(Finset.mem_filter.mp hbase).2, hlo, hhi⟩
  · rintro ⟨hp, hlo, hhi⟩
    have hjp : p ≤ j * p := by
      simpa only [Nat.one_mul] using Nat.mul_le_mul_right p hj
    have htwo : 2 * (j * p) ≤ 9 * m - 2 := by
      simpa only [Nat.mul_assoc] using hhi
    have hcap : p < C2Direct.total (4 * m) (4 * m) m + 1 := by
      unfold C2Direct.total
      omega
    apply Finset.mem_filter.mpr
    exact ⟨Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hcap, hp⟩, hlo, hhi⟩

theorem intervalPrimes_subset (m j : ℕ) :
    intervalPrimes m j ⊆ C2Direct.primeSet (4 * m) (4 * m) m := by
  intro p hp
  exact (Finset.mem_filter.mp hp).1

theorem fourPrimes_subset (m : ℕ) :
    fourPrimes m ⊆ C2Direct.primeSet (4 * m) (4 * m) m := by
  intro p hp
  obtain ⟨j, hj, hpj⟩ := Finset.mem_biUnion.mp hp
  exact intervalPrimes_subset m j hpj

theorem mem_fourPrimes_prime (m p : ℕ) (hp : p ∈ fourPrimes m) : p.Prime :=
  (Finset.mem_filter.mp (fourPrimes_subset m hp)).2

theorem intervalPrimes_disjoint (m j k : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4) (hk : 1 ≤ k ∧ k ≤ 4)
    (hjk : j ≠ k) : Disjoint (intervalPrimes m j) (intervalPrimes m k) := by
  apply Finset.disjoint_left.mpr
  intro p hpj hpk
  have h1 := (mem_intervalPrimes_iff m j p hj.1).mp hpj
  have h2 := (mem_intervalPrimes_iff m k p hk.1).mp hpk
  exact hjk (four_interval_index_unique m p j k hm hj hk h1.2.1 h1.2.2 h2.2.1 h2.2.2)

theorem intervalPrimes_pairwise_disjoint (m : ℕ) (hm : 3 ≤ m) :
    Set.PairwiseDisjoint (↑(Finset.Icc 1 4) : Set ℕ) (intervalPrimes m) := by
  intro j hj k hk hjk
  exact intervalPrimes_disjoint m j k hm
    (Finset.mem_Icc.mp hj) (Finset.mem_Icc.mp hk) hjk

theorem p4_eq_interval_products (m : ℕ) (hm : 3 ≤ m) :
    p4 m = ∏ j ∈ Finset.Icc 1 4, ∏ p ∈ intervalPrimes m j, p := by
  unfold p4 fourPrimes
  exact Finset.prod_biUnion (intervalPrimes_pairwise_disjoint m hm)

theorem interval_prime_first_layer (m j p : ℕ)
    (hm : 3 ≤ m) (hj : 1 ≤ j ∧ j ≤ 4) (hp : p ∈ intervalPrimes m j) :
    C2Direct.layer (4 * m) (4 * m) m p = 1 := by
  have h := (mem_intervalPrimes_iff m j p hj.1).mp hp
  have hc := four_interval_contributes m p j hm hj h.2.1 h.2.2
  have hmask : 2 * p + 1 ≤ (4 * m) % p + (4 * m) % p + m % p := by omega
  simp only [C2Direct.layer, if_pos hmask]

/-- The actual logarithmic cutoff contains h=1; no external cutoff assumption is supplied. -/
theorem first_layer_mem_cutoff (m p : ℕ) (hp : p ∈ fourPrimes m) :
    1 ∈ Finset.Ico 1 (C2Direct.cutoff (4 * m) (4 * m) m p) := by
  have hbase := Finset.mem_filter.mp (fourPrimes_subset m hp)
  have hprime : p.Prime := hbase.2
  have hcap : p ≤ C2Direct.total (4 * m) (4 * m) m :=
    Nat.lt_succ_iff.mp (Finset.mem_range.mp hbase.1)
  have hlog := Nat.log_pos hprime.one_lt hcap
  simp only [Finset.mem_Ico, C2Direct.cutoff]
  omega

theorem one_le_actual_exponent (m p : ℕ) (hm : 3 ≤ m) (hp : p ∈ fourPrimes m) :
    1 ≤ C2Direct.exponent (4 * m) (4 * m) m p := by
  obtain ⟨j, hj, hpj⟩ := Finset.mem_biUnion.mp hp
  have hfirst := interval_prime_first_layer m j p hm (Finset.mem_Icc.mp hj) hpj
  have hmem := first_layer_mem_cutoff m p hp
  unfold C2Direct.exponent
  calc
    1 = C2Direct.layer (4 * m) (4 * m) m (p ^ 1) := by
      simpa only [pow_one] using hfirst.symm
    _ ≤ ∑ h ∈ Finset.Ico 1 (C2Direct.cutoff (4 * m) (4 * m) m p),
        C2Direct.layer (4 * m) (4 * m) m (p ^ h) :=
      Finset.single_le_sum (fun h hh => Nat.zero_le _) hmem

theorem p4_dvd_actual_c2 (m : ℕ) (hm : 3 ≤ m) :
    p4 m ∣ C2Direct.c2 (4 * m) (4 * m) m := by
  have hpart : p4 m ∣
      ∏ p ∈ fourPrimes m, p ^ C2Direct.exponent (4 * m) (4 * m) m p := by
    unfold p4
    apply Finset.prod_dvd_prod_of_dvd
    intro p hp
    simpa only [pow_one] using pow_dvd_pow p (one_le_actual_exponent m p hm hp)
  apply hpart.trans
  unfold C2Direct.c2
  exact Finset.prod_dvd_prod_of_subset _ _ _ (fourPrimes_subset m)

theorem p4_pos (m : ℕ) : 0 < p4 m := by
  unfold p4
  apply Finset.prod_pos
  intro p hp
  exact (mem_fourPrimes_prime m p hp).pos

theorem actual_c2_pos (m : ℕ) : 0 < C2Direct.c2 (4 * m) (4 * m) m :=
  C2Direct.c2_pos _ _ _

theorem p4_le_actual_c2 (m : ℕ) (hm : 3 ≤ m) :
    p4 m ≤ C2Direct.c2 (4 * m) (4 * m) m :=
  Nat.le_of_dvd (actual_c2_pos m) (p4_dvd_actual_c2 m hm)

end Math.B699.C2FourIntervals
