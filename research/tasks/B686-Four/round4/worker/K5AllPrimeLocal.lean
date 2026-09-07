import research.tasks.«B686-Four».round4.worker.K5SmallPrimeSquares
import research.tasks.«B686-Four».round4.worker.K5ThreeAdic

/-! All-prime local loss-nine square and the original prime-power class.
Unlike the earlier large-prime class, this includes bases2 and3. The single
prime-power class reuses only the earlier d<600 finite certificates. -/

namespace B686Round4K5

theorem prime_power_square_loss (n d p a : ℕ) (hp : p.Prime) (ha : 0 < a)
    (hpd : p ^ a ∣ d)
    (heq : (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) =
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i))) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ (p : ℤ) ^ (2 * a) ∣ 9 * error n d i := by
  by_cases hp3 : p = 3
  · subst p
    exact B686Round4SmallPrime.three_power_square_loss n d a ha hpd heq
  · have hplain : ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ (p : ℤ) ^ (2 * a) ∣ error n d i := by
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
    obtain ⟨i, hi, h⟩ := hplain
    exact ⟨i, hi, dvd_mul_of_dvd_right h 9⟩

theorem not_four_any_prime_power_shift (n d p a : ℕ) (hd : 5 ≤ d)
    (hp : p.Prime) (ha : 0 < a) (hshift : d = p ^ a) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hlarge : 600 ≤ d
  · intro heq
    obtain ⟨i, hi, hpi⟩ := prime_power_square_loss n d p a hp ha (by rw [hshift]) heq
    have hdsq : (d : ℤ) ^ 2 ∣ 9 * error n d i := by
      convert hpi using 1
      rw [hshift, Nat.cast_pow, ← pow_mul]
      congr 1
      omega
    have hp5 : p5 ((n : ℤ) + d) = 4 * p5 n := by
      have hm := p5_nat_product (n + d)
      have hn := p5_nat_product n
      push_cast at hm
      rw [hm, hn]
      exact_mod_cast heq
    obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
    have hs := rational_strip n d (by omega) (by omega) hp5
    obtain ⟨hl, hu⟩ := error_bounds n d i (by omega) (by omega) (by omega) hs
    have hepos : 0 < error n d i := by omega
    have heupper : error n d i < 9 * (d : ℤ) := by omega
    have hd600 : (600 : ℤ) ≤ d := by omega
    have hdpos : (0 : ℤ) < d := by omega
    have hd2 : (0 : ℤ) < (d : ℤ) ^ 2 := by positivity
    have hbound : 9 * error n d i < (d : ℤ) ^ 2 := by nlinarith
    obtain ⟨z, hz⟩ := hdsq
    have hz0 : 0 < z := (mul_lt_mul_iff_right₀ hd2).mp (by nlinarith only [hepos, hz])
    have hz1 : z < 1 := (mul_lt_mul_iff_right₀ hd2).mp (by nlinarith only [hbound, hz])
    omega
  · exact B686Round4K5Finite.not_four_small_displacement n d hd (by omega)

theorem not_four_any_prime_power (n m p a : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (ha : 0 < a) (hshift : m - n = p ^ a) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have heq : n + (m - n) = m := by omega
  simpa only [heq] using not_four_any_prime_power_shift n (m - n) p a
    (by omega) hp ha hshift

/-- info: 'B686Round4K5.prime_power_square_loss' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_power_square_loss
/-- info: 'B686Round4K5.not_four_any_prime_power' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_any_prime_power

end B686Round4K5
