import research.tasks.«B686-Four».round4.worker.K5Combined
import research.tasks.«B686-Four».round4.main.ShiftCongruence

/-!
Original natural-number B686 k=5 statements for one or two prime-power
displacement factors, with prime bases at least 5. The main task proves the
second-order congruence and position existence. Worker tail and finite
certificates exclude the resulting square divisibility for all d>=5.
No unrestricted B686 conclusion or novelty claim is made.
-/

namespace B686Round4K5

theorem not_four_prime_power_shift (n d p a : ℕ) (hd : 5 ≤ d)
    (hp : p.Prime) (hp5 : 5 ≤ p) (ha : 0 < a) (hshift : d = p ^ a) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  intro heq
  obtain ⟨i, hi, hpi⟩ := B686Round4Shift.large_prime_power_square 5 n d p a hp hp5
    (by omega) ha (by rw [hshift]) heq
  have hdsq : (d : ℤ) ^ 2 ∣ error n d i := by
    unfold error
    convert hpi using 1
    rw [hshift, Nat.cast_pow, ← pow_mul]
    congr 1
    omega
  have hdiv : (d : ℤ) ^ 2 ∣ error n d i * error n d i := dvd_mul_of_dvd_left hdsq _
  obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
  exact not_four_of_two_position n d i i hd hi1 hi5 hi1 hi5 hdiv heq

theorem not_four_prime_power (n m p a : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (hp5 : 5 ≤ p) (ha : 0 < a) (hshift : m - n = p ^ a) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have heq : n + (m - n) = m := by omega
  simpa only [heq] using not_four_prime_power_shift n (m - n) p a
    (by omega) hp hp5 ha hshift

theorem not_four_two_prime_powers_shift (n d p q a b : ℕ) (hd : 5 ≤ d)
    (hp : p.Prime) (hq : q.Prime) (hp5 : 5 ≤ p) (hq5 : 5 ≤ q)
    (ha : 0 < a) (hb : 0 < b) (hshift : d = p ^ a * q ^ b) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hpq : p = q
  · apply not_four_prime_power_shift n d p (a + b) hd hp hp5 (by omega)
    simpa only [hpq, pow_add] using hshift
  · intro heq
    obtain ⟨i, hi, j, hj, hdiv⟩ := B686Round4Shift.two_prime_power_positions
      5 n d p q a b hp hq hpq hp5 hq5 (by omega) (by omega) ha hb hshift heq
    obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
    obtain ⟨hj1, hj5⟩ := Finset.mem_Icc.mp hj
    exact not_four_of_two_position n d i j hd hi1 hi5 hj1 hj5 hdiv heq

theorem not_four_two_prime_powers (n m p q a b : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (hq : q.Prime) (hp5 : 5 ≤ p) (hq5 : 5 ≤ q)
    (ha : 0 < a) (hb : 0 < b) (hshift : m - n = p ^ a * q ^ b) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have heq : n + (m - n) = m := by omega
  simpa only [heq] using not_four_two_prime_powers_shift n (m - n) p q a b
    (by omega) hp hq hp5 hq5 ha hb hshift

/-- info: 'B686Round4K5.not_four_prime_power' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_prime_power
/-- info: 'B686Round4K5.not_four_two_prime_powers' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_two_prime_powers

end B686Round4K5
