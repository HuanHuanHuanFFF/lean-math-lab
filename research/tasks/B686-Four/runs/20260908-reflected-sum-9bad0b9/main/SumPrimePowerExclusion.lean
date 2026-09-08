import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».a.ReflectedPrimePower

/-! Complete prime-power reflected-sum consumer. The all-prime high contact is
derived from the original equation in ReflectedPrimePower, not supplied here
as an extra hypothesis. No asymptotic theorem or finite search is used. -/

namespace B686Reflected
open Finset B686Target B686ReflectedA
set_option maxHeartbeats 1200000

theorem coefficient_prime_and_le_five (k : ℕ) :
    (reflectedCoefficient k).Prime ∧ reflectedCoefficient k ≤ 5 := by
  rcases reflectedCoefficient_eq_three_or_five k with h | h <;> rw [h] <;> decide

theorem contact_magnitude_lt (k n m i : ℕ) (hk : 2≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n) (hi : i∈Icc 1 k) :
    2*(reflectedContact k n m i).natAbs < 5*reflectedSum k n m := by
  have hw := reflected_position_window k n m i hk hsep heq hi
  rcases neg_one_pow_eq_or ℤ k with h | h
  · have hid : reflectedContact k n m i =
        ((reflectedSum k n m+3*(n+i) : ℕ) : ℤ) := by
      unfold reflectedContact
      rw [h]
      push_cast
      ring
    rw [hid, Int.natAbs_natCast]
    omega
  · have hid : reflectedContact k n m i =
        -((5*(n+i)-reflectedSum k n m : ℕ) : ℤ) := by
      unfold reflectedContact
      rw [h, Nat.cast_sub hw.2.le]
      push_cast
      ring
    rw [hid, Int.natAbs_neg, Int.natAbs_natCast]
    omega

theorem contact_multiplier_at_least_three (p : ℕ) (hp : p.Prime) :
    3 ≤ p^(1+padicValNat p 4) := by
  by_cases hp2 : p=2
  · subst p
    have : Fact (Nat.Prime 2) := ⟨by decide⟩
    have hv : padicValNat 2 4=2 := by
      change padicValNat 2 (2^2)=2
      exact padicValNat.prime_pow 2
    rw [hv]
    decide
  · have hp3 : 3 ≤ p := by have := hp.two_le; omega
    have hh := Nat.pow_le_pow_right hp.pos (show 1≤1+padicValNat p 4 by omega)
    exact le_trans hp3 (by simpa only [pow_one] using hh)

/-- A purely arithmetic low-branch contradiction, uniform in the prime.
The bound S>k²+1 makes the exceptional coefficients 3 and 5 harmless. -/
theorem no_prime_power_low_branch (k p a c : ℕ) (hk : 2≤k)
    (hp : p.Prime) (hc : c.Prime) (hc5 : c≤5)
    (hsize : k^2+1<p^a) (hlow : a≤Nat.log p k+padicValNat p c) : False := by
  have : Fact p.Prime := ⟨hp⟩
  have : Fact c.Prime := ⟨hc⟩
  have hpk : p^Nat.log p k≤k := Nat.pow_log_le_self p (by omega)
  by_cases heq : p=c
  · have hv : padicValNat p c=1 := by rw [← heq]; exact padicValNat_self
    rw [hv] at hlow
    have hpow := Nat.pow_le_pow_right hp.pos hlow
    rw [pow_succ] at hpow
    have hbound : p^a≤k*p := le_trans hpow (Nat.mul_le_mul_right p hpk)
    have hkp : k<p := by
      by_contra! hh
      have hm := Nat.mul_le_mul_left k hh
      nlinarith
    have hl : Nat.log p k=0 := Nat.log_eq_zero_iff.mpr (Or.inl hkp)
    rw [hl] at hlow
    have hsmall : p^a≤p := by
      have ht := Nat.pow_le_pow_right hp.pos (show a≤1 by omega)
      simpa using ht
    have hp5 : p≤5 := by omega
    nlinarith
  · have hv : padicValNat p c=0 := padicValNat_primes heq
    rw [hv, add_zero] at hlow
    have hbound : p^a≤k := le_trans (Nat.pow_le_pow_right hp.pos hlow) hpk
    nlinarith

/-- For every natural exponent, no separated original solution has a
prime-power reflected sum. Exponent zero is included and ruled out by size. -/
theorem not_four_prime_power_reflected_sum (k n m p a : ℕ)
    (hk : 2≤k) (hsep : n+k≤m) (hp : p.Prime)
    (hsum : reflectedSum k n m=p^a) :
    product k m ≠ 4*product k n := by
  intro heq
  have : Fact p.Prime := ⟨hp⟩
  have hval : padicValNat p (reflectedSum k n m)=a := by
    rw [hsum]
    exact padicValNat.prime_pow a
  have hsize := (reflected_sum_size k n m hk hsep heq).2
  by_cases hhigh : Nat.log p k+padicValNat p (reflectedCoefficient k)<a
  · obtain ⟨i, hi, _, hTpos, hdiv⟩ := original_high_contact_nat k n m p hp hk hsep heq
      (by rwa [hval])
    rw [hval] at hdiv
    have hle := Nat.le_of_dvd hTpos hdiv
    have hfactor := contact_multiplier_at_least_three p hp
    have hscaled := Nat.mul_le_mul_left (p^a) hfactor
    have hexp : p^(a+1+padicValNat p 4)=p^a*p^(1+padicValNat p 4) := by
      rw [← pow_add]
      congr 1
      omega
    rw [hexp] at hle
    have hw := contact_magnitude_lt k n m i hk hsep heq hi
    rw [hsum] at hw
    nlinarith
  · obtain ⟨hc, hc5⟩ := coefficient_prime_and_le_five k
    exact no_prime_power_low_branch k p a (reflectedCoefficient k) hk hp hc hc5
      (by rwa [hsum] at hsize) (by omega)

/-- info: 'B686Reflected.coefficient_prime_and_le_five' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms coefficient_prime_and_le_five
/-- info: 'B686Reflected.contact_magnitude_lt' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact_magnitude_lt
/-- info: 'B686Reflected.contact_multiplier_at_least_three' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact_multiplier_at_least_three
/-- info: 'B686Reflected.no_prime_power_low_branch' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_prime_power_low_branch
/-- info: 'B686Reflected.not_four_prime_power_reflected_sum' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_prime_power_reflected_sum

end B686Reflected
