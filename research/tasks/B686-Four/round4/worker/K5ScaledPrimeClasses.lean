import research.tasks.«B686-Four».round4.worker.K5AllPrimeClasses

/-! Scaled two-prime-power displacement classes. The factor3 is absorbed
by the already-checked loss-nine two-position bound. This gives a genuine
three-distinct-prime subclass when p,q,3 are distinct, with v3(d)=1. -/

namespace B686Round4K5

theorem prime_power_square_no_three (n d p a : ℕ) (hp : p.Prime) (hp3 : p ≠ 3)
    (ha : 0 < a) (hpd : p ^ a ∣ d)
    (heq : (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) =
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i))) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ (p : ℤ) ^ (2 * a) ∣ error n d i := by
  by_cases hp2 : p = 2
  · subst p
    exact B686Round4SmallPrime.two_power_square n d a ha hpd heq
  · have hp5 : 5 ≤ p := by
      have hpge := hp.two_le
      by_contra h
      have hp4 : p = 4 := by omega
      subst p
      exact (by decide : ¬ Nat.Prime 4) hp
    exact B686Round4Shift.large_prime_power_square 5 n d p a hp hp5 hp3 ha hpd heq

theorem two_prime_powers_no_three_positions (n d p q a b : ℕ)
    (hp : p.Prime) (hq : q.Prime) (hp3 : p ≠ 3) (hq3 : q ≠ 3)
    (ha : 0 < a) (hb : 0 < b) (hMD : p ^ a * q ^ b ∣ d)
    (heq : (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) =
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r))) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ∃ j : ℕ, j ∈ Finset.Icc 1 5 ∧
      ((p ^ a * q ^ b : ℕ) : ℤ) ^ 2 ∣ error n d i * error n d j := by
  by_cases hpq : p = q
  · subst q
    have hpd : p ^ (a + b) ∣ d := by simpa only [pow_add] using hMD
    obtain ⟨i, hi, hpi⟩ := prime_power_square_no_three n d p (a + b) hp hp3 (by omega) hpd heq
    refine ⟨i, hi, i, hi, ?_⟩
    have hid : ((p ^ a * p ^ b : ℕ) : ℤ) ^ 2 = (p : ℤ) ^ (2 * (a + b)) := by
      rw [← pow_add, Nat.cast_pow, ← pow_mul]
      congr 1
      omega
    rw [hid]
    exact dvd_mul_of_dvd_left hpi _
  · have hpd : p ^ a ∣ d := dvd_trans (dvd_mul_right _ _) hMD
    have hqd : q ^ b ∣ d := dvd_trans (dvd_mul_left _ _) hMD
    obtain ⟨i, hi, hpi⟩ := prime_power_square_no_three n d p a hp hp3 ha hpd heq
    obtain ⟨j, hj, hqj⟩ := prime_power_square_no_three n d q b hq hq3 hb hqd heq
    have hc : IsCoprime ((p : ℤ) ^ (2 * a)) ((q : ℤ) ^ (2 * b)) :=
      ((Nat.coprime_primes hp hq).mpr hpq).isCoprime.pow
    refine ⟨i, hi, j, hj, ?_⟩
    have hid : ((p ^ a * q ^ b : ℕ) : ℤ) ^ 2 =
        (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b) := by
      rw [Nat.cast_mul, Nat.cast_pow, Nat.cast_pow, mul_pow, ← pow_mul, ← pow_mul]
      simp only [Nat.mul_comm a 2, Nat.mul_comm b 2]
    rw [hid]
    exact hc.mul_dvd (dvd_mul_of_dvd_left hpi _) (dvd_mul_of_dvd_right hqj _)

theorem not_four_three_times_two_prime_powers_shift (n d p q a b : ℕ) (hd : 5 ≤ d)
    (hp : p.Prime) (hq : q.Prime) (ha : 0 < a) (hb : 0 < b)
    (hshift : d = 3 * p ^ a * q ^ b) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hp3 : p = 3
  · subst p
    apply not_four_any_two_prime_powers_shift n d 3 q (a + 1) b hd (by decide) hq (by omega) hb
    rw [hshift, pow_succ]
    ring
  by_cases hq3 : q = 3
  · subst q
    apply not_four_any_two_prime_powers_shift n d p 3 a (b + 1) hd hp (by decide) ha (by omega)
    rw [hshift, pow_succ]
    ring
  intro heq
  have hMD : p ^ a * q ^ b ∣ d := by
    refine ⟨3, ?_⟩
    rw [hshift]
    ring
  obtain ⟨i, hi, j, hj, hdiv⟩ := two_prime_powers_no_three_positions n d p q a b
    hp hq hp3 hq3 ha hb hMD heq
  have hdsq : (d : ℤ) ^ 2 ∣ 9 * error n d i * error n d j := by
    have hid : (d : ℤ) ^ 2 = 9 * (((p ^ a * q ^ b : ℕ) : ℤ) ^ 2) := by
      rw [hshift]
      push_cast
      ring
    rw [hid]
    simpa only [mul_assoc] using mul_dvd_mul (dvd_refl (9 : ℤ)) hdiv
  obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
  obtain ⟨hj1, hj5⟩ := Finset.mem_Icc.mp hj
  exact not_four_of_loss_two_position n d i j hd hi1 hi5 hj1 hj5 hdsq heq

theorem not_four_three_times_two_prime_powers (n m p q a b : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (hq : q.Prime) (ha : 0 < a) (hb : 0 < b)
    (hshift : m - n = 3 * p ^ a * q ^ b) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have heq : n + (m - n) = m := by omega
  simpa only [heq] using not_four_three_times_two_prime_powers_shift n (m - n) p q a b
    (by omega) hp hq ha hb hshift

/-- info: 'B686Round4K5.two_prime_powers_no_three_positions' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms two_prime_powers_no_three_positions
/-- info: 'B686Round4K5.not_four_three_times_two_prime_powers' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_three_times_two_prime_powers

end B686Round4K5
