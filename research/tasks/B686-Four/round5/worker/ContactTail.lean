import research.tasks.«B686-Four».round4.worker.K5CubicTail

/-! Tail height and nonzero bounds for an exact combination of main's saturated
six-contact auxiliaries. No numerical root approximation is an assumption. -/
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round5Tail
open B686Round4K5

def optimizedAuxiliary (z d : ℤ) : ℤ :=
  (36372240 : ℤ) * z ^ 0 * d ^ 0 + (5574096 : ℤ) * z ^ 0 * d ^ 1 + (131316174 : ℤ) * z ^ 0 * d ^ 2 + (-18468090 : ℤ) * z ^ 0 * d ^ 3 + (37841040 : ℤ) * z ^ 0 * d ^ 4 + (-35457080 : ℤ) * z ^ 0 * d ^ 5 + (-8019000 : ℤ) * z ^ 1 * d ^ 0 + (-17391510 : ℤ) * z ^ 1 * d ^ 1 + (-21435129 : ℤ) * z ^ 1 * d ^ 2 + (-29058600 : ℤ) * z ^ 1 * d ^ 3 + (-2740440 : ℤ) * z ^ 1 * d ^ 4 + (-3715200 : ℤ) * z ^ 2 * d ^ 0 + (2124405 : ℤ) * z ^ 2 * d ^ 1 + (-11355486 : ℤ) * z ^ 2 * d ^ 2 + (7843190 : ℤ) * z ^ 2 * d ^ 3 + (891000 : ℤ) * z ^ 3 * d ^ 0 + (1932390 : ℤ) * z ^ 3 * d ^ 1 + (1721681 : ℤ) * z ^ 3 * d ^ 2 + (-36240 : ℤ) * z ^ 4 * d ^ 0 + (-304861 : ℤ) * z ^ 4 * d ^ 1

theorem refined_strip (n d : ℤ) (hn : 0 ≤ n) (hd : 20000 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n) :
    83894387 * d ≤ 10000000 * error n d 3 ∧
      10000000 * error n d 3 ≤ 83894390 * d := by
  let x := n + 3
  let y := n + d + 3
  have hx : 3 ≤ x := by dsimp [x]; omega
  have hxy : x < y := by dsimp [x, y]; omega
  have hcent : central y = 4 * central x := by
    simpa only [central_identity, x, y] using heq
  obtain ⟨hp, hg⟩ := central_power_bounds x y hx hxy hcent
  have hx5 : 0 < x ^ 5 := by positivity
  have hs := rational_strip n d hn (by omega) heq
  have hx60000 : 60000 ≤ x := by dsimp [x]; omega
  have hl : 31298129 * d < 10000000 * x := by
    by_contra hnot
    have hf : 41298129 * x ≤ 31298129 * y := by dsimp [x, y] at *; omega
    have ht := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 41298129 * x) hf 5
    simp only [mul_pow] at ht
    norm_num at ht
    nlinarith only [ht, hp, hx5]
  have hu : 10000000 * x < 31298130 * d := by
    by_contra hnot
    have hf : 31298130 * y ≤ 41298130 * x := by dsimp [x, y] at *; omega
    have ht := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 31298130 * y) hf 5
    simp only [mul_pow] at ht
    norm_num at ht
    have hx2 := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 60000) hx60000 2
    have hx3 : 0 < x ^ 3 := by positivity
    have hbig := mul_le_mul_of_nonneg_right hx2 hx3.le
    have hid : x ^ 2 * x ^ 3 = x ^ 5 := by ring
    rw [hid] at hbig
    norm_num at hbig
    nlinarith only [ht, hg, hx3, hbig]
  dsimp [x, error] at *
  omega

theorem scaled_monomial_bounds (z d : ℤ) (a b : ℕ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    83894387 ^ a * d ^ (a + b) ≤ 10000000 ^ a * z ^ a * d ^ b ∧
      10000000 ^ a * z ^ a * d ^ b ≤ 83894390 ^ a * d ^ (a + b) := by
  have hz : 0 ≤ z := by omega
  have h1 := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 83894387 * d) hl a
  have h2 := pow_le_pow_left₀ (by positivity : (0 : ℤ) ≤ 10000000 * z) hu a
  have hb : 0 ≤ d ^ b := pow_nonneg hd b
  have h1' := mul_le_mul_of_nonneg_right h1 hb
  have h2' := mul_le_mul_of_nonneg_right h2 hb
  simp only [mul_pow, pow_add] at *
  constructor <;> nlinarith only [h1', h2']

def part0 (z d : ℤ) : ℤ :=
  (36372240 : ℤ) * z ^ 0 * d ^ 0

theorem part0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    36372240 * d ^ 0 ≤ part0 z d ∧ part0 z d ≤ 36372240 * d ^ 0 := by
  norm_num [part0]

def part1 (z d : ℤ) : ℤ :=
  (5574096 : ℤ) * z ^ 0 * d ^ 1 + (-8019000 : ℤ) * z ^ 1 * d ^ 0

theorem part1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -62000000 * d ^ 1 ≤ part1 z d ∧ part1 z d ≤ -61000000 * d ^ 1 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 0 hd hl hu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  unfold part1
  constructor <;> nlinarith only [hdK, h1l, h1u]

def part2 (z d : ℤ) : ℤ :=
  (131316174 : ℤ) * z ^ 0 * d ^ 2 + (-17391510 : ℤ) * z ^ 1 * d ^ 1 + (-3715200 : ℤ) * z ^ 2 * d ^ 0

theorem part2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -277000000 * d ^ 2 ≤ part2 z d ∧ part2 z d ≤ -276000000 * d ^ 2 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 1 hd hl hu
  obtain ⟨h2l, h2u⟩ := scaled_monomial_bounds z d 2 0 hd hl hu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  unfold part2
  constructor <;> nlinarith only [hdK, h1l, h1u, h2l, h2u]

def part3 (z d : ℤ) : ℤ :=
  (-18468090 : ℤ) * z ^ 0 * d ^ 3 + (-21435129 : ℤ) * z ^ 1 * d ^ 2 + (2124405 : ℤ) * z ^ 2 * d ^ 1 + (891000 : ℤ) * z ^ 3 * d ^ 0

theorem part3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    477000000 * d ^ 3 ≤ part3 z d ∧ part3 z d ≤ 478000000 * d ^ 3 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 2 hd hl hu
  obtain ⟨h2l, h2u⟩ := scaled_monomial_bounds z d 2 1 hd hl hu
  obtain ⟨h3l, h3u⟩ := scaled_monomial_bounds z d 3 0 hd hl hu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  unfold part3
  constructor <;> nlinarith only [hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def part4 (z d : ℤ) : ℤ :=
  (37841040 : ℤ) * z ^ 0 * d ^ 4 + (-29058600 : ℤ) * z ^ 1 * d ^ 3 + (-11355486 : ℤ) * z ^ 2 * d ^ 2 + (1932390 : ℤ) * z ^ 3 * d ^ 1 + (-36240 : ℤ) * z ^ 4 * d ^ 0

theorem part4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -44000000 * d ^ 4 ≤ part4 z d ∧ part4 z d ≤ -43000000 * d ^ 4 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 3 hd hl hu
  obtain ⟨h2l, h2u⟩ := scaled_monomial_bounds z d 2 2 hd hl hu
  obtain ⟨h3l, h3u⟩ := scaled_monomial_bounds z d 3 1 hd hl hu
  obtain ⟨h4l, h4u⟩ := scaled_monomial_bounds z d 4 0 hd hl hu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  unfold part4
  constructor <;> nlinarith only [hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def part5 (z d : ℤ) : ℤ :=
  (-35457080 : ℤ) * z ^ 0 * d ^ 5 + (-2740440 : ℤ) * z ^ 1 * d ^ 4 + (7843190 : ℤ) * z ^ 2 * d ^ 3 + (1721681 : ℤ) * z ^ 3 * d ^ 2 + (-304861 : ℤ) * z ^ 4 * d ^ 1

theorem part5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -17000 * d ^ 5 ≤ part5 z d ∧ part5 z d ≤ -16000 * d ^ 5 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 4 hd hl hu
  obtain ⟨h2l, h2u⟩ := scaled_monomial_bounds z d 2 3 hd hl hu
  obtain ⟨h3l, h3u⟩ := scaled_monomial_bounds z d 3 2 hd hl hu
  obtain ⟨h4l, h4u⟩ := scaled_monomial_bounds z d 4 1 hd hl hu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  unfold part5
  constructor <;> nlinarith only [hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem optimized_bounds (z d : ℤ) (hd : 20000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -20000 * d ^ 5 < optimizedAuxiliary z d ∧ optimizedAuxiliary z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  have hd1 : 1 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := part0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := part1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := part2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := part3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := part4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := part5_bounds z d hd0 hl hu
  have ha : (1 : ℤ) ≤ d ^ 3 := one_le_pow₀ hd1
  have hb : d ^ 1 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 1 ≤ 3)
  have hc : d ^ 2 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 2 ≤ 3)
  have hrest : -1000000000 * d ^ 3 ≤ part0 z d + part1 z d + part2 z d + part3 z d ∧
      part0 z d + part1 z d + part2 z d + part3 z d ≤ 1000000000 * d ^ 3 := by
    norm_num at h0l h0u h1l h1u hb
    constructor <;> nlinarith only [h0l,h0u,h1l,h1u,h2l,h2u,h3l,h3u,ha,hb,hc]
  have h54 : 20000 * d ^ 4 ≤ d ^ 5 := by
    have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 4)
    nlinarith only [h]
  have h53 : 400000000 * d ^ 3 ≤ d ^ 5 := by
    have hsq := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 20000) hd 2
    have h := mul_le_mul_of_nonneg_right hsq (pow_nonneg hd0 3)
    norm_num at h
    nlinarith only [h]
  have hd5 : 0 < d ^ 5 := by positivity
  have hid : optimizedAuxiliary z d = part0 z d + part1 z d + part2 z d +
      part3 z d + part4 z d + part5 z d := by
    unfold optimizedAuxiliary part0 part1 part2 part3 part4 part5
    ring
  rw [hid]
  constructor <;> nlinarith only [hrest.1,hrest.2,h4l,h4u,h5l,h5u,h54,h53,hd5]

/-- info: 'B686Round5Tail.refined_strip' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms refined_strip
/-- info: 'B686Round5Tail.optimized_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms optimized_bounds
end B686Round5Tail
