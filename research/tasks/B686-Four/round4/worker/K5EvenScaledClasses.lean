import research.tasks.«B686-Four».round4.worker.K5ScaledPrimeClasses

/-! The factor2 version, with p,q different from3. The resulting modulus
loss is4, whose integer gap uses exactly the existing d>=3000 tail and
finite continuation. No additional finite range is introduced. -/

namespace B686Round4K5

theorem four_error_product_bounds (n d i j : ℤ) (hn : 0 ≤ n) (hd : 3000 ≤ d)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (heq : p5 (n + d) = 4 * p5 n) :
    281 * d ^ 2 < 4 * error n d i * error n d j ∧
      4 * error n d i * error n d j < 282 * d ^ 2 := by
  have hs := centered_rational_strip n d hn (by omega) heq
  obtain ⟨hil, hiu⟩ := loss_error_bounds n d i hd hi hi' hs
  obtain ⟨hjl, hju⟩ := loss_error_bounds n d j hd hj hj' hs
  have hdi : 0 < d := by omega
  have hei : 0 < error n d i := by omega
  have hej : 0 < error n d j := by omega
  have hd2 : 0 < d ^ 2 := by positivity
  constructor
  · have hmul := mul_lt_mul hil hjl.le (by positivity : 0 < 8387 * d)
      (by positivity : 0 ≤ 1000 * error n d i)
    nlinarith only [hmul, hd2]
  · have hmul := mul_lt_mul hiu hju.le (by positivity : 0 < 1000 * error n d j)
      (by positivity : 0 ≤ 8392 * d)
    nlinarith only [hmul, hd2]

theorem not_four_of_four_two_position (n d i j : ℕ) (hd : 5 ≤ d)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (hdiv : (d : ℤ) ^ 2 ∣ 4 * error n d i * error n d j) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hlarge : 3000 ≤ d
  · intro heq
    have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
      have hm := p5_nat_product (n + d)
      have hn := p5_nat_product n
      push_cast at hm
      rw [hm, hn]
      exact_mod_cast heq
    obtain ⟨hl, hu⟩ := four_error_product_bounds n d i j (by omega) (by omega)
      (by omega) (by omega) (by omega) (by omega) hp
    obtain ⟨z, hz⟩ := hdiv
    have hd2 : (0 : ℤ) < (d : ℤ) ^ 2 := by positivity
    have hzl : 281 < z := (mul_lt_mul_iff_right₀ hd2).mp (by nlinarith only [hl, hz])
    have hzu : z < 282 := (mul_lt_mul_iff_right₀ hd2).mp (by nlinarith only [hu, hz])
    omega
  · exact B686Round4K5Finite.not_four_loss_finite n d hd (by omega)

theorem not_four_two_times_two_prime_powers_shift (n d p q a b : ℕ) (hd : 5 ≤ d)
    (hp : p.Prime) (hq : q.Prime) (hp3 : p ≠ 3) (hq3 : q ≠ 3)
    (ha : 0 < a) (hb : 0 < b) (hshift : d = 2 * p ^ a * q ^ b) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  intro heq
  have hMD : p ^ a * q ^ b ∣ d := by
    refine ⟨2, ?_⟩
    rw [hshift]
    ring
  obtain ⟨i, hi, j, hj, hdiv⟩ := two_prime_powers_no_three_positions n d p q a b
    hp hq hp3 hq3 ha hb hMD heq
  have hdsq : (d : ℤ) ^ 2 ∣ 4 * error n d i * error n d j := by
    have hid : (d : ℤ) ^ 2 = 4 * (((p ^ a * q ^ b : ℕ) : ℤ) ^ 2) := by
      rw [hshift]
      push_cast
      ring
    rw [hid]
    simpa only [mul_assoc] using mul_dvd_mul (dvd_refl (4 : ℤ)) hdiv
  obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
  obtain ⟨hj1, hj5⟩ := Finset.mem_Icc.mp hj
  exact not_four_of_four_two_position n d i j hd hi1 hi5 hj1 hj5 hdsq heq

theorem not_four_two_times_two_prime_powers (n m p q a b : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (hq : q.Prime) (hp3 : p ≠ 3) (hq3 : q ≠ 3)
    (ha : 0 < a) (hb : 0 < b) (hshift : m - n = 2 * p ^ a * q ^ b) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have heq : n + (m - n) = m := by omega
  simpa only [heq] using not_four_two_times_two_prime_powers_shift n (m - n) p q a b
    (by omega) hp hq hp3 hq3 ha hb hshift

/-- info: 'B686Round4K5.not_four_of_four_two_position' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_of_four_two_position
/-- info: 'B686Round4K5.not_four_two_times_two_prime_powers' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_two_times_two_prime_powers

end B686Round4K5
