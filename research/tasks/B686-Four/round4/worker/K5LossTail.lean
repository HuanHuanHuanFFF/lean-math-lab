import research.tasks.«B686-Four».round4.worker.K5CubicTail

/-! Loss-nine variant of the two-position square tail. The factor9 is
needed only for the ternary local congruence. All constants are rational
and all inequalities are checked in the ordered integer ring. -/

set_option maxRecDepth 100000
set_option maxHeartbeats 5000000

namespace B686Round4K5

theorem loss_error_bounds (n d i : ℤ) (hd : 3000 ≤ d) (hi : 1 ≤ i) (hi' : i ≤ 5)
    (hs : 3129812 * d < 1000000 * (n + 3) ∧
      1000000 * (n + 3) < 3129820 * d) :
    8387 * d < 1000 * error n d i ∧ 1000 * error n d i < 8392 * d := by
  dsimp [error]
  omega

theorem loss_error_product_bounds (n d i j : ℤ) (hn : 0 ≤ n) (hd : 3000 ≤ d)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (heq : p5 (n + d) = 4 * p5 n) :
    633 * d ^ 2 < 9 * error n d i * error n d j ∧
      9 * error n d i * error n d j < 634 * d ^ 2 := by
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

theorem not_four_loss_tail (n d i j : ℕ) (hd : 3000 ≤ d)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (hdiv : (d : ℤ) ^ 2 ∣ 9 * error n d i * error n d j) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  intro heq
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    have hm := p5_nat_product (n + d)
    have hn := p5_nat_product n
    push_cast at hm
    rw [hm, hn]
    exact_mod_cast heq
  obtain ⟨hl, hu⟩ := loss_error_product_bounds n d i j (by omega) (by omega)
    (by omega) (by omega) (by omega) (by omega) hp
  obtain ⟨z, hz⟩ := hdiv
  have hd2 : (0 : ℤ) < (d : ℤ) ^ 2 := by positivity
  have hzl : 633 < z := (mul_lt_mul_iff_right₀ hd2).mp (by nlinarith only [hl, hz])
  have hzu : z < 634 := (mul_lt_mul_iff_right₀ hd2).mp (by nlinarith only [hu, hz])
  omega

/-- info: 'B686Round4K5.not_four_loss_tail' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_loss_tail

end B686Round4K5
