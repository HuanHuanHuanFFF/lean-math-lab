import research.tasks.«B686-Four».round4.worker.K5Combined

/-!
Sharper centered rational bounds for k=5, and cubic integer gaps used by
the symmetric-three-position route. This file does not assume algebraic
irrationality or numerical root approximations: all constants are checked
by ordered-ring arguments and exact integer powers.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 5000000

namespace B686Round4K5

def central (x : ℤ) : ℤ := x ^ 5 - 5 * x ^ 3 + 4 * x

theorem central_identity (n : ℤ) : p5 n = central (n + 3) := by
  unfold p5 central
  ring

theorem central_pos (x : ℤ) (hx : 3 ≤ x) : 0 < central x := by
  have hx1 : 0 < x ^ 2 - 1 := by nlinarith
  have hx4 : 0 < x ^ 2 - 4 := by nlinarith
  have hid : central x = x * (x ^ 2 - 1) * (x ^ 2 - 4) := by unfold central; ring
  rw [hid]
  positivity

theorem central_power_bounds (x y : ℤ) (hx : 3 ≤ x) (hxy : x < y)
    (heq : central y = 4 * central x) :
    y ^ 5 < 4 * x ^ 5 ∧ 4 * x ^ 5 - y ^ 5 < 15 * x ^ 3 := by
  have hp := central_pos x hx
  have hxpos : 0 < x := by omega
  have hypos : 0 < y := by omega
  have hsum : 0 < y + x := by omega
  have hx4 : 0 ≤ x ^ 2 - 4 := by nlinarith
  have hy4 : 0 ≤ y ^ 2 - 4 := by nlinarith
  have hb : 0 < 5 * x ^ 2 * y ^ 2 - 4 * x ^ 2 - 4 * y ^ 2 := by
    have hid : 5 * x ^ 2 * y ^ 2 - 4 * x ^ 2 - 4 * y ^ 2 =
        3 * x ^ 2 * y ^ 2 + (x ^ 2 - 4) * y ^ 2 + (y ^ 2 - 4) * x ^ 2 := by ring
    rw [hid]
    positivity
  have hprod : 0 < (4 * x ^ 5 - y ^ 5) * central x := by
    have hid : central y * x ^ 5 - central x * y ^ 5 =
        x * y * (y - x) * (y + x) *
          (5 * x ^ 2 * y ^ 2 - 4 * x ^ 2 - 4 * y ^ 2) := by unfold central; ring
    rw [heq] at hid
    have hpos : 0 < x * y * (y - x) * (y + x) *
          (5 * x ^ 2 * y ^ 2 - 4 * x ^ 2 - 4 * y ^ 2) := by
      have : 0 < y - x := by omega
      positivity
    nlinarith only [hid, hpos]
  have hpow : y ^ 5 < 4 * x ^ 5 := by
    rcases mul_pos_iff.mp hprod with h | h
    · linarith [h.1]
    · linarith [h.2]
  have hy4x : y < 4 * x := by
    by_contra hnot
    have ht := pow_le_pow_left₀ (by omega : (0 : ℤ) ≤ 4 * x)
      (by omega : 4 * x ≤ y) 5
    rw [mul_pow] at ht
    norm_num at ht
    have hx5 : 0 < x ^ 5 := by positivity
    nlinarith only [ht, hpow, hx5]
  have hc := pow_le_pow_left₀ (by omega : (0 : ℤ) ≤ x) hxy.le 3
  refine ⟨hpow, ?_⟩
  dsimp [central] at heq
  linarith

theorem centered_rational_strip (n d : ℤ) (hn : 0 ≤ n) (hd : 600 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n) :
    3129812 * d < 1000000 * (n + 3) ∧
      1000000 * (n + 3) < 3129820 * d := by
  let x := n + 3
  let y := n + d + 3
  have hx : 3 ≤ x := by dsimp [x]; omega
  have hxy : x < y := by dsimp [x, y]; omega
  have hcent : central y = 4 * central x := by
    simpa only [central_identity, x, y] using heq
  obtain ⟨hp, hg⟩ := central_power_bounds x y hx hxy hcent
  have hx5 : 0 < x ^ 5 := by positivity
  have hs := rational_strip n d hn (by omega) heq
  have hx1800 : 1800 ≤ x := by dsimp [x]; omega
  change 3129812 * d < 1000000 * x ∧ 1000000 * x < 3129820 * d
  constructor
  · by_contra hnot
    have hf : 4129812 * x ≤ 3129812 * y := by dsimp [x, y] at *; omega
    have ht := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 4129812 * x) hf 5
    simp only [mul_pow] at ht
    norm_num at ht
    nlinarith only [ht, hp, hx5]
  · by_contra hnot
    have hf : 3129820 * y ≤ 4129820 * x := by dsimp [x, y] at *; omega
    have ht := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 3129820 * y) hf 5
    simp only [mul_pow] at ht
    norm_num at ht
    have hx2 := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 1800) hx1800 2
    have hx3 : 0 < x ^ 3 := by positivity
    have hbig := mul_le_mul_of_nonneg_right hx2 hx3.le
    have hid : x ^ 2 * x ^ 3 = x ^ 5 := by ring
    rw [hid] at hbig
    norm_num at hbig
    nlinarith only [ht, hg, hx3, hbig]

def cubic (A B z d : ℤ) : ℤ := z * (3 * z ^ 2 - A * d ^ 2 - B)

theorem cubic_gaps (n d : ℤ) (hn : 0 ≤ n) (hd : 600 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n) :
    (932 * d ^ 3 < cubic 100 108 (error n d 3) d ∧
      cubic 100 108 (error n d 3) d < 933 * d ^ 3) ∧
    (1603 * d ^ 3 < cubic 20 27 (error n d 3) d ∧
      cubic 20 27 (error n d 3) d < 1604 * d ^ 3) := by
  let z := error n d 3
  obtain ⟨hl, hu⟩ := centered_rational_strip n d hn hd heq
  have hzl : 8389436 * d ≤ 1000000 * z := by dsimp [z, error]; omega
  have hzu : 1000000 * z ≤ 8389460 * d := by dsimp [z, error]; omega
  have hz : 0 < z := by omega
  have hdpos : 0 < d := by omega
  have hd3 : 0 < d ^ 3 := by positivity
  have hl3 := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 8389436 * d) hzl 3
  have hu3 := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 1000000 * z) hzu 3
  simp only [mul_pow] at hl3 hu3
  norm_num at hl3 hu3
  have hld := mul_le_mul_of_nonneg_right hzl (sq_nonneg d)
  have hud := mul_le_mul_of_nonneg_right hzu (sq_nonneg d)
  have hdd : (600 : ℤ) ^ 2 ≤ d ^ 2 := pow_le_pow_left₀ (by decide) hd 2
  have hdd' := mul_le_mul_of_nonneg_right hdd hdpos.le
  have hdid : d ^ 2 * d = d ^ 3 := by ring
  rw [hdid] at hdd'
  norm_num at hdd'
  have hz9 : z ≤ 9 * d := by omega
  have hb108 : 300 * 108 * z < d ^ 3 := by nlinarith only [hz9, hdd', hdpos]
  have hb27 : 300 * 27 * z < d ^ 3 := by nlinarith only [hz9, hdd', hdpos]
  change (932 * d ^ 3 < cubic 100 108 z d ∧ cubic 100 108 z d < 933 * d ^ 3) ∧
    (1603 * d ^ 3 < cubic 20 27 z d ∧ cubic 20 27 z d < 1604 * d ^ 3)
  dsimp [cubic]
  constructor <;> constructor
  · nlinarith only [hl3, hud, hb108, hd3]
  · nlinarith only [hu3, hld, hz, hd3]
  · nlinarith only [hl3, hud, hb27, hd3]
  · nlinarith only [hu3, hld, hz, hd3]

theorem not_four_of_cubic (n d : ℕ) (hd : 5 ≤ d)
    (hdiv : (d : ℤ) ^ 3 ∣ cubic 100 108 (error n d 3) d ∨
      (d : ℤ) ^ 3 ∣ cubic 20 27 (error n d 3) d) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hlarge : 600 ≤ d
  · intro heq
    have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
      have hm := p5_nat_product (n + d)
      have hn := p5_nat_product n
      push_cast at hm
      rw [hm, hn]
      exact_mod_cast heq
    obtain ⟨⟨hl1, hu1⟩, ⟨hl2, hu2⟩⟩ := cubic_gaps n d (by omega) (by omega) hp
    have hd3 : (0 : ℤ) < (d : ℤ) ^ 3 := by positivity
    rcases hdiv with ⟨z, hz⟩ | ⟨z, hz⟩
    · have hzl : 932 < z := (mul_lt_mul_iff_right₀ hd3).mp (by nlinarith only [hl1, hz])
      have hzu : z < 933 := (mul_lt_mul_iff_right₀ hd3).mp (by nlinarith only [hu1, hz])
      omega
    · have hzl : 1603 < z := (mul_lt_mul_iff_right₀ hd3).mp (by nlinarith only [hl2, hz])
      have hzu : z < 1604 := (mul_lt_mul_iff_right₀ hd3).mp (by nlinarith only [hu2, hz])
      omega
  · exact B686Round4K5Finite.not_four_small_displacement n d hd (by omega)

/-- info: 'B686Round4K5.centered_rational_strip' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms centered_rational_strip
/-- info: 'B686Round4K5.not_four_of_cubic' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_of_cubic

end B686Round4K5
