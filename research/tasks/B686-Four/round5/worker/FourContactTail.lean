import research.tasks.«B686-Four».round5.worker.ContactTail

/-! Height and sign for the degree10/order11 noncentral four-position auxiliary.
All polynomial coefficients and interval comparisons are kernel-checked. -/
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round5FourTail
open B686Round5Tail

def optimizedFour (z d : ℤ) : ℤ :=
  (-18895680 : ℤ) * z ^ 0 * d ^ 0 + (-153816084 : ℤ) * z ^ 0 * d ^ 2 + (-422805420 : ℤ) * z ^ 0 * d ^ 4 + (-391957704 : ℤ) * z ^ 0 * d ^ 6 + (17236485 : ℤ) * z ^ 0 * d ^ 8 + (73906420 : ℤ) * z ^ 0 * d ^ 10 + (4374000 : ℤ) * z ^ 1 * d ^ 3 + (36739575 : ℤ) * z ^ 1 * d ^ 5 + (89840700 : ℤ) * z ^ 1 * d ^ 7 + (54942600 : ℤ) * z ^ 1 * d ^ 9 + (2624400 : ℤ) * z ^ 2 * d ^ 0 + (19322145 : ℤ) * z ^ 2 * d ^ 2 + (48911040 : ℤ) * z ^ 2 * d ^ 4 + (48028095 : ℤ) * z ^ 2 * d ^ 6 + (15304915 : ℤ) * z ^ 2 * d ^ 8 + (162000 : ℤ) * z ^ 3 * d ^ 3 + (717525 : ℤ) * z ^ 3 * d ^ 5 + (704940 : ℤ) * z ^ 3 * d ^ 7 + (-58320 : ℤ) * z ^ 4 * d ^ 0 + (-377541 : ℤ) * z ^ 4 * d ^ 2 + (-751320 : ℤ) * z ^ 4 * d ^ 4 + (-409451 : ℤ) * z ^ 4 * d ^ 6

def part0 (z d : ℤ) : ℤ :=
  (-18895680 : ℤ) * z ^ 0 * d ^ 0

theorem part0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -20000000 * d ^ 0 ≤ part0 z d ∧ part0 z d ≤ 0 * d ^ 0 := by
  norm_num [part0]

def part2 (z d : ℤ) : ℤ :=
  (-153816084 : ℤ) * z ^ 0 * d ^ 2 + (2624400 : ℤ) * z ^ 2 * d ^ 0

theorem part2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 2 ≤ part2 z d ∧ part2 z d ≤ 32000000 * d ^ 2 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 1 hd hl hu
  obtain ⟨h2l, h2u⟩ := scaled_monomial_bounds z d 2 0 hd hl hu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  unfold part2
  constructor <;> nlinarith only [hdK, h1l, h1u, h2l, h2u]

def part4 (z d : ℤ) : ℤ :=
  (-422805420 : ℤ) * z ^ 0 * d ^ 4 + (4374000 : ℤ) * z ^ 1 * d ^ 3 + (19322145 : ℤ) * z ^ 2 * d ^ 2 + (-58320 : ℤ) * z ^ 4 * d ^ 0

theorem part4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 4 ≤ part4 z d ∧ part4 z d ≤ 686000000 * d ^ 4 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 3 hd hl hu
  obtain ⟨h2l, h2u⟩ := scaled_monomial_bounds z d 2 2 hd hl hu
  obtain ⟨h3l, h3u⟩ := scaled_monomial_bounds z d 3 1 hd hl hu
  obtain ⟨h4l, h4u⟩ := scaled_monomial_bounds z d 4 0 hd hl hu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  unfold part4
  constructor <;> nlinarith only [hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def part6 (z d : ℤ) : ℤ :=
  (-391957704 : ℤ) * z ^ 0 * d ^ 6 + (36739575 : ℤ) * z ^ 1 * d ^ 5 + (48911040 : ℤ) * z ^ 2 * d ^ 4 + (162000 : ℤ) * z ^ 3 * d ^ 3 + (-377541 : ℤ) * z ^ 4 * d ^ 2

theorem part6_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 6 ≤ part6 z d ∧ part6 z d ≤ 1585000000 * d ^ 6 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 5 hd hl hu
  obtain ⟨h2l, h2u⟩ := scaled_monomial_bounds z d 2 4 hd hl hu
  obtain ⟨h3l, h3u⟩ := scaled_monomial_bounds z d 3 3 hd hl hu
  obtain ⟨h4l, h4u⟩ := scaled_monomial_bounds z d 4 2 hd hl hu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 6 := pow_nonneg hd 6
  unfold part6
  constructor <;> nlinarith only [hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def part8 (z d : ℤ) : ℤ :=
  (17236485 : ℤ) * z ^ 0 * d ^ 8 + (89840700 : ℤ) * z ^ 1 * d ^ 7 + (48028095 : ℤ) * z ^ 2 * d ^ 6 + (717525 : ℤ) * z ^ 3 * d ^ 5 + (-751320 : ℤ) * z ^ 4 * d ^ 4

theorem part8_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 8 ≤ part8 z d ∧ part8 z d ≤ 854000000 * d ^ 8 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 7 hd hl hu
  obtain ⟨h2l, h2u⟩ := scaled_monomial_bounds z d 2 6 hd hl hu
  obtain ⟨h3l, h3u⟩ := scaled_monomial_bounds z d 3 5 hd hl hu
  obtain ⟨h4l, h4u⟩ := scaled_monomial_bounds z d 4 4 hd hl hu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 8 := pow_nonneg hd 8
  unfold part8
  constructor <;> nlinarith only [hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def part10 (z d : ℤ) : ℤ :=
  (73906420 : ℤ) * z ^ 0 * d ^ 10 + (54942600 : ℤ) * z ^ 1 * d ^ 9 + (15304915 : ℤ) * z ^ 2 * d ^ 8 + (704940 : ℤ) * z ^ 3 * d ^ 7 + (-409451 : ℤ) * z ^ 4 * d ^ 6

theorem part10_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -15000 * d ^ 10 ≤ part10 z d ∧ part10 z d ≤ -14000 * d ^ 10 := by
  obtain ⟨h1l, h1u⟩ := scaled_monomial_bounds z d 1 9 hd hl hu
  obtain ⟨h2l, h2u⟩ := scaled_monomial_bounds z d 2 8 hd hl hu
  obtain ⟨h3l, h3u⟩ := scaled_monomial_bounds z d 3 7 hd hl hu
  obtain ⟨h4l, h4u⟩ := scaled_monomial_bounds z d 4 6 hd hl hu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 10 := pow_nonneg hd 10
  unfold part10
  constructor <;> nlinarith only [hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem four_bounds (z d : ℤ) (hd : 20000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -20000 * d ^ 10 < optimizedFour z d ∧ optimizedFour z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  have hd1 : 1 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := part0_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := part2_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := part4_bounds z d hd0 hl hu
  obtain ⟨h6l, h6u⟩ := part6_bounds z d hd0 hl hu
  obtain ⟨h8l, h8u⟩ := part8_bounds z d hd0 hl hu
  obtain ⟨h10l, h10u⟩ := part10_bounds z d hd0 hl hu
  have ha : (1 : ℤ) ≤ d ^ 8 := one_le_pow₀ hd1
  have hb : d ^ 2 ≤ d ^ 8 := pow_le_pow_right₀ hd1 (by decide : 2 ≤ 8)
  have hc : d ^ 4 ≤ d ^ 8 := pow_le_pow_right₀ hd1 (by decide : 4 ≤ 8)
  have he : d ^ 6 ≤ d ^ 8 := pow_le_pow_right₀ hd1 (by decide : 6 ≤ 8)
  have hrest : -4000000000 * d ^ 8 ≤ part0 z d + part2 z d + part4 z d + part6 z d + part8 z d ∧
      part0 z d + part2 z d + part4 z d + part6 z d + part8 z d ≤ 4000000000 * d ^ 8 := by
    norm_num at h0l h0u h2l h4l h6l h8l
    constructor <;> nlinarith only [h0l,h0u,h2l,h2u,h4l,h4u,h6l,h6u,h8l,h8u,ha,hb,hc,he]
  have h108 : 400000000 * d ^ 8 ≤ d ^ 10 := by
    have hsq := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 20000) hd 2
    have h := mul_le_mul_of_nonneg_right hsq (pow_nonneg hd0 8)
    norm_num at h
    nlinarith only [h]
  have hd10 : 0 < d ^ 10 := by positivity
  have hid : optimizedFour z d = part0 z d + part2 z d + part4 z d +
      part6 z d + part8 z d + part10 z d := by
    unfold optimizedFour part0 part2 part4 part6 part8 part10
    ring
  rw [hid]
  constructor <;> nlinarith only [hrest.1,hrest.2,h10l,h10u,h108,hd10]

/-- info: 'B686Round5FourTail.four_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms four_bounds
end B686Round5FourTail
