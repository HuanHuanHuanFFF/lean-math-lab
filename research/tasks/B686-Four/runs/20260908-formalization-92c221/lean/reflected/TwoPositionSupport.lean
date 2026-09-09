import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».a.ReflectedPrimePower
import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».b.SumTwoPositionGap
import Mathlib.Data.Nat.GCD.BigOperators

/-! Full support-to-certificate bridge for the adopted two-position theorem.
The smooth part belongs to S, and every prime power uses its complete valuation.
No grouping, contact, or positivity certificate is an extra final hypothesis. -/
namespace B686Formalization
open Finset B686Target B686Reflected B686ReflectedA
open B686Round9.SumTwoPositionGap
set_option maxHeartbeats 2400000

/-- The complete k-smooth part of S. -/
def reflectedSmoothPart (k S : ℕ) : ℕ :=
  ∏p∈S.primeFactors.filter (fun p=>p≤k), p^padicValNat p S

lemma prime_power_product_dvd (s : Finset ℕ) (e : ℕ→ℕ) (b : ℕ)
    (hp : ∀p∈s,p.Prime) (hd : ∀p∈s,p^e p∣b) : (∏p∈s,p^e p)∣b := by
  induction s using Finset.induction_on with
  | empty => simp
  | @insert p s hps ih =>
    rw [prod_insert hps]
    have hp0 := hp p (by simp)
    have hs := ih (fun q hq=>hp q (by simp [hq])) (fun q hq=>hd q (by simp [hq]))
    have hcop : (p^e p).Coprime (∏q∈s,q^e q) := by
      apply Nat.Coprime.prod_right
      intro q hq
      exact Nat.coprime_pow_primes _ _ hp0 (hp q (by simp [hq])) (by rintro rfl; exact hps hq)
    exact hcop.mul_dvd_of_dvd_of_dvd (hd p (by simp)) hs

lemma prime_factorization_product (S : ℕ) (hS : S≠0) :
    (∏p∈S.primeFactors,p^padicValNat p S)=S := by
  calc
    _ = ∏p∈S.primeFactors,p^S.factorization p := by
      apply prod_congr rfl
      intro p hp
      rw [Nat.factorization_def S (Nat.prime_of_mem_primeFactors hp)]
    _ = S := (Nat.prod_primeFactors_pow_factorization hS).symm

/-- A rough prime hitting a specified position gives complete square contact
there; the all-prime theorem supplies and identifies the unique high position. -/
lemma rough_prime_square_contact (k n m i p : ℕ) (hk : 5≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n) (hi : i∈Icc 1 k)
    (hp : p.Prime) (hpk : k<p) (hpS : p∣reflectedSum k n m) (hpz : p∣n+i) :
    p^(2*padicValNat p (reflectedSum k n m))∣(reflectedError k n m i).natAbs := by
  have : Fact p.Prime := ⟨hp⟩
  have hS0 : reflectedSum k n m≠0 := by unfold reflectedSum; omega
  have hc := reflectedCoefficient_eq_three_or_five k
  have hcprime : (reflectedCoefficient k).Prime := by
    rcases hc with hc | hc <;> rw [hc] <;> decide
  have : Fact (reflectedCoefficient k).Prime := ⟨hcprime⟩
  have hpc : p≠reflectedCoefficient k := by rcases hc with hc | hc <;> omega
  have he : padicValNat p (reflectedCoefficient k)=0 := padicValNat_primes hpc
  have hL : Nat.log p k=0 := Nat.log_eq_zero_iff.mpr (Or.inl hpk)
  have ha : 0<padicValNat p (reflectedSum k n m) := by
    have := one_le_padicValNat_of_dvd hS0 hpS
    omega
  have hhigh : Nat.log p k+padicValNat p (reflectedCoefficient k)<
      padicValNat p (reflectedSum k n m) := by omega
  obtain ⟨j,hj,hvj,_,hdiv⟩ := original_high_contact_sharp_nat k n m p hp (by omega) hsep heq hhigh
  have hz0 : n+i≠0 := by have := (mem_Icc.mp hi).1; omega
  have hvi : 0<padicValNat p (n+i) := by have := one_le_padicValNat_of_dvd hz0 hpz; omega
  have hvj0 : 0<padicValNat p (n+j) := by omega
  have hji : j=i := unique_high_position k n p 0 j i hp (by simpa using hpk) hj hi hvj0 hvi
  subst j
  rw [he,hL,Nat.sub_zero,Nat.sub_zero] at hdiv
  have hd : p^(2*padicValNat p (reflectedSum k n m))∣(reflectedContact k n m i).natAbs :=
    (pow_dvd_pow p (Nat.le_add_right _ _)).trans hdiv
  have herr : reflectedContact k n m i=reflectedError k n m i := by
    unfold reflectedContact reflectedError
    ring
  rwa [herr] at hd

/-- Every rough prime divisor of S hits one of these two positions. Positions
may coincide, so this also covers support of size zero or one. -/
def reflectedSupportAtMostTwo (k n m i j : ℕ) : Prop :=
  ∀p : ℕ, p.Prime → p∣reflectedSum k n m → k<p → p∣n+i ∨ p∣n+j

/-- Complete two-position theorem using the actual smooth part and the
original equation. This closes all factor-group and square-contact inputs. -/
theorem original_two_position_support_bounds (k n m i j : ℕ)
    (hk : 5≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k)
    (hsupport : reflectedSupportAtMostTwo k n m i j) :
    let A := reflectedSmoothPart k (reflectedSum k n m)
    k≤60*A^2 ∧ (Even A → k≤15*A^2) := by
  let S := reflectedSum k n m
  let rough := S.primeFactors.filter (fun p=>¬p≤k)
  let first := rough.filter (fun p=>p∣n+i)
  let second := rough.filter (fun p=>¬p∣n+i)
  let A := reflectedSmoothPart k S
  let Di := ∏p∈first,p^padicValNat p S
  let Dj := ∏p∈second,p^padicValNat p S
  have hS0 : S≠0 := by dsimp [S,reflectedSum]; omega
  have hA : 0<A := by
    apply prod_pos
    intro p hp
    exact pow_pos (Nat.prime_of_mem_primeFactors (mem_filter.mp hp).1).pos _
  have hgroup : A*Di*Dj=S := by
    calc
      A*Di*Dj=A*(Di*Dj) := by ring
      _ = A*(∏p∈rough,p^padicValNat p S) := by
        congr 1
        exact prod_filter_mul_prod_filter_not rough (fun p=>p∣n+i) _
      _ = ∏p∈S.primeFactors,p^padicValNat p S := by
        exact prod_filter_mul_prod_filter_not S.primeFactors (fun p=>p≤k) _
      _ = S := prime_factorization_product S hS0
  have hfirst : Di^2∣(reflectedError k n m i).natAbs := by
    change (∏p∈first,p^padicValNat p S)^2∣_
    rw [←prod_pow]
    simp_rw [←pow_mul, Nat.mul_comm _ 2]
    apply prime_power_product_dvd
    · intro p hp
      exact Nat.prime_of_mem_primeFactors (mem_filter.mp (mem_filter.mp hp).1).1
    · intro p hp
      obtain ⟨hpR,hpi⟩ := mem_filter.mp hp
      obtain ⟨hpS,hpk⟩ := mem_filter.mp hpR
      exact rough_prime_square_contact k n m i p hk hsep heq hi
        (Nat.prime_of_mem_primeFactors hpS) (by omega) (Nat.dvd_of_mem_primeFactors hpS) hpi
  have hsecond : Dj^2∣(reflectedError k n m j).natAbs := by
    change (∏p∈second,p^padicValNat p S)^2∣_
    rw [←prod_pow]
    simp_rw [←pow_mul, Nat.mul_comm _ 2]
    apply prime_power_product_dvd
    · intro p hp
      exact Nat.prime_of_mem_primeFactors (mem_filter.mp (mem_filter.mp hp).1).1
    · intro p hp
      obtain ⟨hpR,hpi⟩ := mem_filter.mp hp
      obtain ⟨hpS,hpk⟩ := mem_filter.mp hpR
      have hp := Nat.prime_of_mem_primeFactors hpS
      have hpD := Nat.dvd_of_mem_primeFactors hpS
      have hhit := (hsupport p hp hpD (by omega)).resolve_left hpi
      exact rough_prime_square_contact k n m j p hk hsep heq hj hp (by omega) hpD hhit
  have hci : (Di : ℤ)^2∣reflectedError k n m i := by
    rw [←Nat.cast_pow,Int.natCast_dvd]
    exact hfirst
  have hcj : (Dj : ℤ)^2∣reflectedError k n m j := by
    rw [←Nat.cast_pow,Int.natCast_dvd]
    exact hsecond
  have hbounds := reflected_factor_contact_bounds k n m i j (A : ℤ) Di Dj hk hsep heq hi hj
    (by exact_mod_cast hA) (by exact_mod_cast hgroup) hci hcj
  change k≤60*A^2 ∧ (Even A → k≤15*A^2)
  constructor
  · exact_mod_cast hbounds.1
  · intro ha
    have haZ : Even (A : ℤ) := by obtain ⟨r,hr⟩ := ha; exact ⟨r,by exact_mod_cast hr⟩
    exact_mod_cast hbounds.2 haZ

/-- info: 'B686Formalization.original_two_position_support_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_two_position_support_bounds
end B686Formalization
