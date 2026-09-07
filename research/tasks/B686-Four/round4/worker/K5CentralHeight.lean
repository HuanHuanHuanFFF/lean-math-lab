import research.tasks.«B686-Four».round4.worker.K5CubicTail

/-! Height obstruction to the proposed center-dominant mixed-order use.
The already-necessary cubic condition forces q_center^2<d in the tail;
therefore d^3*q_center^2 never exceeds the quartic scale d^4 there.
This does not invalidate the central fifth congruence or other uses of it. -/

namespace B686Round4K5

theorem cube_divisor_height (z d q : ℤ) (hd : 600 ≤ d)
    (hz : 0 < z) (hzu : z < 9 * d) (hq : 0 ≤ q) (hqz : q ^ 3 ∣ z) :
    q ^ 3 < 9 * d ∧ q ^ 2 < d := by
  have hqpos : 0 < q := by
    by_contra hnot
    have hq0 : q = 0 := by omega
    rw [hq0] at hqz
    norm_num at hqz
    omega
  have hq3pos : 0 < q ^ 3 := by positivity
  obtain ⟨u, hu⟩ := hqz
  have hu0 : 0 < u := (mul_lt_mul_iff_right₀ hq3pos).mp (by nlinarith only [hz, hu])
  have hu1 : 0 ≤ u - 1 := by omega
  have hmul := mul_nonneg hq3pos.le hu1
  have hcube : q ^ 3 < 9 * d := by nlinarith only [hmul, hu, hzu]
  refine ⟨hcube, ?_⟩
  by_contra hnot
  have hdq : d ≤ q ^ 2 := by omega
  have hq9 : 9 ≤ q := by
    by_contra h
    have hq8 : q ≤ 8 := by omega
    have ht := pow_le_pow_left₀ hq hq8 2
    norm_num at ht
    omega
  have hprod := mul_le_mul_of_nonneg_left hdq hq
  have hprod' := mul_le_mul_of_nonneg_right hq9 (by omega : 0 ≤ d)
  nlinarith only [hcube, hprod, hprod']

theorem center_group_height (n d q : ℕ) (hd : 600 ≤ d)
    (heq : (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) =
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)))
    (hcenter : (q : ℤ) ^ 3 ∣ error n d 3) :
    (q : ℤ) ^ 3 < 9 * (d : ℤ) ∧ (q : ℤ) ^ 2 < d ∧
      (d : ℤ) ^ 3 * (q : ℤ) ^ 2 < (d : ℤ) ^ 4 := by
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    have hm := p5_nat_product (n + d)
    have hn := p5_nat_product n
    push_cast at hm
    rw [hm, hn]
    exact_mod_cast heq
  have hs := rational_strip n d (by omega) (by omega) hp
  obtain ⟨hl, hu⟩ := error_bounds n d 3 (by omega) (by decide) (by decide) hs
  have hz : 0 < error n d 3 := by omega
  have hzu : error n d 3 < 9 * (d : ℤ) := by omega
  obtain ⟨h3, h2⟩ := cube_divisor_height (error n d 3) d q (by omega) hz hzu (by omega) hcenter
  refine ⟨h3, h2, ?_⟩
  have hp3 : (0 : ℤ) < (d : ℤ) ^ 3 := by positivity
  have hm := mul_lt_mul_of_pos_left h2 hp3
  nlinarith only [hm]

/-- info: 'B686Round4K5.center_group_height' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms center_group_height

end B686Round4K5
