import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.SumPrimePowerExclusion

/-! Completes the full B=2 reduction from the original product equation.
Source: the adopted reflected-sum run, main/sum-structure-theorems.md §4.
Natural exponent zero and the prime 2 are included in the final theorem. -/
namespace B686Formalization
open Finset B686Target B686Reflected B686ReflectedA
set_option maxHeartbeats 2400000

lemma even_reflected_sum_size (k n m t : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (heq : product k m = 4*product k n)
    (hS : reflectedSum k n m = 2*t) :
    k*(k+1) < reflectedSum k n m := by
  have hsize := (reflected_sum_size k n m hk hsep heq).1
  have hdk : k+1 ≤ m-n := by unfold reflectedSum at hS; omega
  have hmul := Nat.mul_le_mul_left (k-1) hdk
  have hkm : k-1+1=k := by omega
  nlinarith

lemma twice_prime_power_low (k n m p a : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (heq : product k m = 4*product k n)
    (hp : p.Prime) (hS : reflectedSum k n m = 2*p^a)
    (hlow : a ≤ Nat.log p k + padicValNat p (reflectedCoefficient k)) : False := by
  have : Fact p.Prime := ⟨hp⟩
  have hc := (coefficient_prime_and_le_five k).1
  have : Fact (reflectedCoefficient k).Prime := ⟨hc⟩
  have hsize := even_reflected_sum_size k n m (p^a) hk hsep heq hS
  have hpL : p^Nat.log p k ≤ k := Nat.pow_log_le_self p (by omega)
  by_cases hpc : p = reflectedCoefficient k
  · have hv : padicValNat p (reflectedCoefficient k) = 1 := by
      rw [← hpc]
      exact padicValNat_self
    rw [hv] at hlow
    have hpow := Nat.pow_le_pow_right hp.pos hlow
    rw [pow_succ] at hpow
    have hbound : p^a ≤ k*p := hpow.trans (Nat.mul_le_mul_right p hpL)
    have hkp : k < 2*p := by
      by_contra! h
      have hm := Nat.mul_le_mul_left k h
      nlinarith
    have hp3 : 3 ≤ p := by
      rcases reflectedCoefficient_eq_three_or_five k with hc3 | hc5 <;> omega
    have hkp2 : k < p^2 := by nlinarith
    have hlog : Nat.log p k < 2 := (Nat.log_lt_iff_lt_pow hp.one_lt (by omega)).mpr hkp2
    have ha2 : a ≤ 2 := by omega
    have hk9 : k ≤ 9 := by have := (coefficient_prime_and_le_five k).2; omega
    have hlast : k=5 ∧ reflectedSum k n m=50 := by
      interval_cases k <;> norm_num [reflectedCoefficient] at hpc <;> subst p <;>
        interval_cases a <;> norm_num at hS hsize ⊢ <;> omega
    exact not_four_sum_fifty_length_five n m (by simpa [hlast.1] using hsep)
      (by simpa [hlast.1] using hlast.2) (by simpa [hlast.1] using heq)
  · have hv : padicValNat p (reflectedCoefficient k)=0 := padicValNat_primes hpc
    rw [hv, add_zero] at hlow
    have hpow : p^a ≤ k := (Nat.pow_le_pow_right hp.pos hlow).trans hpL
    nlinarith

/-- A source-aligned exclusion of all twice-prime-power reflected sums. -/
theorem not_four_twice_prime_power_reflected_sum (k n m p a : ℕ)
    (hk : 2 ≤ k) (hsep : n+k ≤ m) (hp : p.Prime)
    (hS : reflectedSum k n m = 2*p^a) :
    product k m ≠ 4*product k n := by
  intro heq
  have : Fact p.Prime := ⟨hp⟩
  by_cases hp2 : p=2
  · subst p
    apply not_four_prime_power_reflected_sum k n m 2 (a+1) hk hsep (by decide) _ heq
    simpa [pow_succ, Nat.mul_comm] using hS
  have h2v : padicValNat p 2 = 0 := padicValNat_primes hp2
  have hval : padicValNat p (reflectedSum k n m)=a := by
    rw [hS, padicValNat.mul (by decide) (pow_ne_zero _ hp.ne_zero),
      h2v, padicValNat.prime_pow, zero_add]
  by_cases hhigh : Nat.log p k + padicValNat p (reflectedCoefficient k) < a
  · obtain ⟨i, hi, hvi, hTpos, hdiv⟩ := original_high_contact_nat k n m p hp hk hsep heq
      (by rwa [hval])
    rw [hval] at hvi hdiv
    have hw := reflected_position_window k n m i hk hsep heq hi
    have hz : 0<n+i := by have := (mem_Icc.mp hi).1; omega
    have hc := (coefficient_prime_and_le_five k).1
    have : Fact (reflectedCoefficient k).Prime := ⟨hc⟩
    by_cases hpc : p=reflectedCoefficient k
    · have hv : padicValNat p (reflectedCoefficient k)=1 := by rw [← hpc]; exact padicValNat_self
      rw [hv] at hvi hhigh
      have ha : 1 ≤ a := by omega
      have hq : 0<p^(a-1) := pow_pos hp.pos _
      have hpa : p^a=p^(a-1)*p := by rw [← pow_succ]; congr 1; omega
      have hqz : p^(a-1) ∣ n+i := by rw [← hvi]; exact pow_padicValNat_dvd
      obtain ⟨t, ht⟩ := hqz
      have htlo : 2*p < 5*t := by
        have hmul : p^(a-1)*(2*p) < p^(a-1)*(5*t) := by
          rw [hS, ht, hpa] at hw
          nlinarith [hw.2]
        exact Nat.lt_of_mul_lt_mul_left hmul
      have hthi : t < p := by
        have hmul : p^(a-1)*(2*t) < p^(a-1)*(2*p) := by
          rw [hS, ht, hpa] at hw
          nlinarith [hw.1]
        have := Nat.lt_of_mul_lt_mul_left hmul
        omega
      have hpD : p^(a+1) ∣ (reflectedContact k n m i).natAbs :=
        (pow_dvd_pow p (by omega : a+1 ≤ a+1+padicValNat p 4)).trans hdiv
      rcases neg_one_pow_eq_or ℤ k with hs | hs
      · have hc3 : reflectedCoefficient k=3 := by norm_num [reflectedCoefficient, hs]
        have hp3 : p=3 := hpc.trans hc3
        have ht2 : t=2 := by omega
        have hT : reflectedContact k n m i = ((4*p^a : ℕ) : ℤ) := by
          unfold reflectedContact
          rw [hs, hS, ht, ht2, hpa]
          push_cast
          rw [hp3]
          ring
        rw [hT, Int.natAbs_natCast, pow_succ] at hpD
        have hd : p ∣ 4 := (Nat.mul_dvd_mul_iff_left (pow_pos hp.pos a)).mp (by
          simpa only [Nat.mul_comm 4] using hpD)
        norm_num [hp3] at hd
      · have hc5 : reflectedCoefficient k=5 := by norm_num [reflectedCoefficient, hs]
        have hp5 : p=5 := hpc.trans hc5
        have ht34 : t=3 ∨ t=4 := by omega
        rcases ht34 with ht3 | ht4
        · have hT : reflectedContact k n m i = -((p^a : ℕ) : ℤ) := by
            unfold reflectedContact
            rw [hs, hS, ht, ht3, hpa]
            push_cast
            rw [hp5]
            ring
          rw [hT, Int.natAbs_neg, Int.natAbs_natCast, pow_succ] at hpD
          have hd : p ∣ 1 := (Nat.mul_dvd_mul_iff_left (pow_pos hp.pos a)).mp (by simpa using hpD)
          exact hp.not_dvd_one hd
        · have hT : reflectedContact k n m i = -((2*p^a : ℕ) : ℤ) := by
            unfold reflectedContact
            rw [hs, hS, ht, ht4, hpa]
            push_cast
            rw [hp5]
            ring
          rw [hT, Int.natAbs_neg, Int.natAbs_natCast, pow_succ] at hpD
          have hd : p ∣ 2 := (Nat.mul_dvd_mul_iff_left (pow_pos hp.pos a)).mp (by
            simpa only [Nat.mul_comm 2] using hpD)
          norm_num [hp5] at hd
    · have hv : padicValNat p (reflectedCoefficient k)=0 := padicValNat_primes hpc
      have hd : p^a ∣ n+i := by rw [hv, Nat.sub_zero] at hvi; rw [← hvi]; exact pow_padicValNat_dvd
      have hle := Nat.le_of_dvd hz hd
      rw [hS] at hw
      omega
  · exact twice_prime_power_low k n m p a hk hsep heq hp hS (by omega)

/-- info: 'B686Formalization.not_four_twice_prime_power_reflected_sum' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_twice_prime_power_reflected_sum

end B686Formalization
