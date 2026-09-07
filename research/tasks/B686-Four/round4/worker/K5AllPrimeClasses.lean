import research.tasks.«B686-Four».round4.worker.K5AllPrimeLocal
import research.tasks.«B686-Four».round4.worker.K5LossTail
import research.tasks.«B686-Four».round4.worker.K5LossFinite

/-! Original k5 exclusions for one or two arbitrary prime-power factors
of the displacement. Includes bases2 and3, all positive exponents, and
allows the two bases to coincide. This is still a restricted displacement
class, not an unrestricted solution of B686/Four. -/

namespace B686Round4K5

theorem not_four_of_loss_two_position (n d i j : ℕ) (hd : 5 ≤ d)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (hdiv : (d : ℤ) ^ 2 ∣ 9 * error n d i * error n d j) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hlarge : 3000 ≤ d
  · exact not_four_loss_tail n d i j hlarge hi hi' hj hj' hdiv
  · exact B686Round4K5Finite.not_four_loss_finite n d hd (by omega)

theorem two_prime_power_loss_positions (n d p q a b : ℕ)
    (hp : p.Prime) (hq : q.Prime) (hpq : p ≠ q)
    (ha : 0 < a) (hb : 0 < b) (hd : d = p ^ a * q ^ b)
    (heq : (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) =
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r))) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ∃ j : ℕ, j ∈ Finset.Icc 1 5 ∧
      (d : ℤ) ^ 2 ∣ 9 * error n d i * error n d j := by
  have hpd : p ^ a ∣ d := by rw [hd]; exact dvd_mul_right _ _
  have hqd : q ^ b ∣ d := by rw [hd]; exact dvd_mul_left _ _
  obtain ⟨i, hi, hpi⟩ := prime_power_square_loss n d p a hp ha hpd heq
  obtain ⟨j, hj, hqj⟩ := prime_power_square_loss n d q b hq hb hqd heq
  have hc : IsCoprime ((p : ℤ) ^ (2 * a)) ((q : ℤ) ^ (2 * b)) :=
    ((Nat.coprime_primes hp hq).mpr hpq).isCoprime.pow
  have hleft : (p : ℤ) ^ (2 * a) ∣ 9 * error n d i * error n d j :=
    dvd_mul_of_dvd_left hpi _
  have hright : (q : ℤ) ^ (2 * b) ∣ 9 * error n d i * error n d j := by
    simpa only [mul_assoc, mul_comm, mul_left_comm] using
      dvd_mul_of_dvd_right hqj (error n d i)
  refine ⟨i, hi, j, hj, ?_⟩
  have hid : (d : ℤ) ^ 2 = (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b) := by
    rw [hd, Nat.cast_mul, Nat.cast_pow, Nat.cast_pow, mul_pow, ← pow_mul, ← pow_mul]
    simp only [Nat.mul_comm a 2, Nat.mul_comm b 2]
  rw [hid]
  exact hc.mul_dvd hleft hright

theorem not_four_any_two_prime_powers_shift (n d p q a b : ℕ) (hd : 5 ≤ d)
    (hp : p.Prime) (hq : q.Prime) (ha : 0 < a) (hb : 0 < b)
    (hshift : d = p ^ a * q ^ b) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hpq : p = q
  · apply not_four_any_prime_power_shift n d p (a + b) hd hp (by omega)
    simpa only [hpq, pow_add] using hshift
  · intro heq
    obtain ⟨i, hi, j, hj, hdiv⟩ := two_prime_power_loss_positions n d p q a b
      hp hq hpq ha hb hshift heq
    obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
    obtain ⟨hj1, hj5⟩ := Finset.mem_Icc.mp hj
    exact not_four_of_loss_two_position n d i j hd hi1 hi5 hj1 hj5 hdiv heq

theorem not_four_any_two_prime_powers (n m p q a b : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (hq : q.Prime) (ha : 0 < a) (hb : 0 < b)
    (hshift : m - n = p ^ a * q ^ b) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have heq : n + (m - n) = m := by omega
  simpa only [heq] using not_four_any_two_prime_powers_shift n (m - n) p q a b
    (by omega) hp hq ha hb hshift

/-- info: 'B686Round4K5.not_four_of_loss_two_position' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_of_loss_two_position
/-- info: 'B686Round4K5.two_prime_power_loss_positions' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms two_prime_power_loss_positions
/-- info: 'B686Round4K5.not_four_any_two_prime_powers' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_any_two_prime_powers

end B686Round4K5
