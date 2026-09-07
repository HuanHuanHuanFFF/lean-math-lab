import research.tasks.«B686-Four».round6.a.Contact
import research.tasks.«B686-Four».round5.worker.ContactTail

set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A

theorem offset_monomial_bounds (w d : ℤ) (a b : ℕ) (hd : 0 ≤ d)
    (hl : 0 ≤ w) (hu : w ≤ 3 * d) :
    0 ≤ w ^ a * d ^ b ∧ w ^ a * d ^ b ≤ 3 ^ a * d ^ (a + b) := by
  have hw := pow_le_pow_left₀ hl hu a
  have hb : 0 ≤ d ^ b := pow_nonneg hd b
  have ht := mul_le_mul_of_nonneg_right hw hb
  simp only [mul_pow, pow_add] at ht ⊢
  exact ⟨mul_nonneg (pow_nonneg hl a) hb, by nlinarith only [ht]⟩

def part123_0 (z d : ℤ) : ℤ :=
  0

theorem part123_0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 0 ≤ part123_0 z d ∧ part123_0 z d ≤ 0 * d ^ 0 := by
  norm_num [part123_0]

def part123_1 (z d : ℤ) : ℤ :=
  (-443214504 : ℤ) * z ^ 1 * d ^ 0

theorem part123_1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -3718321046 * d ^ 1 ≤ part123_1 z d ∧ part123_1 z d ≤ -3718320912 * d ^ 1 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 0 hd hw0 hwu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  have hid : 10000000000000000000000000000 * part123_1 z d =
      (-37183209122589048000000000000000000000 : ℤ) * w ^ 0 * d ^ 1 + (-443214504000000000000000000000 : ℤ) * w ^ 1 * d ^ 0 := by
    dsimp [w, part123_1]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u]

def part123_2 (z d : ℤ) : ℤ :=
  (-843012684 : ℤ) * z ^ 1 * d ^ 1 + (81099792 : ℤ) * z ^ 2 * d ^ 0

theorem part123_2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -1364382390 * d ^ 2 ≤ part123_2 z d ∧ part123_2 z d ≤ -1364382234 * d ^ 2 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 1 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  have hid : 10000000000000000000000000000 * part123_2 z d =
      (-13643823893824859609995200000000000000 : ℤ) * w ^ 0 * d ^ 2 + (517750783133500800000000000000 : ℤ) * w ^ 1 * d ^ 1 + (8109979200000000000000 : ℤ) * w ^ 2 * d ^ 0 := by
    dsimp [w, part123_2]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u]

def part123_3 (z d : ℤ) : ℤ :=
  (-1231151400 : ℤ) * z ^ 0 * d ^ 3 + (-213936678 : ℤ) * z ^ 1 * d ^ 2 + (126852966 : ℤ) * z ^ 2 * d ^ 1 + (45630702 : ℤ) * z ^ 3 * d ^ 0

theorem part123_3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    32845906961 * d ^ 3 ≤ part123_3 z d ∧ part123_3 z d ≤ 32845910426 * d ^ 3 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 2 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 1 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  have hid : 10000000000000000000000000000 * part123_3 z d =
      (328459069611107577830806187493060000000 : ℤ) * w ^ 0 * d ^ 3 + (11549347210325818011595140000000 : ℤ) * w ^ 1 * d ^ 2 + (127530089780090220000000 : ℤ) * w ^ 2 * d ^ 1 + (456307020000000 : ℤ) * w ^ 3 * d ^ 0 := by
    dsimp [w, part123_3]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def part123_4 (z d : ℤ) : ℤ :=
  (-2341701900 : ℤ) * z ^ 0 * d ^ 4 + (-1393759710 : ℤ) * z ^ 1 * d ^ 3 + (-99037701 : ℤ) * z ^ 2 * d ^ 2 + (100492650 : ℤ) * z ^ 3 * d ^ 1 + (-7805970 : ℤ) * z ^ 4 * d ^ 0

theorem part123_4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -335692028 * d ^ 4 ≤ part123_4 z d ∧ part123_4 z d ≤ -335691945 * d ^ 4 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 3 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 2 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 1 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := offset_monomial_bounds w d 4 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  have hid : 10000000000000000000000000000 * part123_4 z d =
      (-3356919450527738955296774738191525170 : ℤ) * w ^ 0 * d ^ 4 + (-273476253010593437069109839640 : ℤ) * w ^ 1 * d ^ 3 + (-86623753134136677845580 : ℤ) * w ^ 2 * d ^ 2 + (-1614581772361560 : ℤ) * w ^ 3 * d ^ 1 + (-7805970 : ℤ) * w ^ 4 * d ^ 0 := by
    dsimp [w, part123_4]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def part123_5 (z d : ℤ) : ℤ :=
  (1922752090 : ℤ) * z ^ 0 * d ^ 5 + (1795094470 : ℤ) * z ^ 1 * d ^ 4 + (583742610 : ℤ) * z ^ 2 * d ^ 3 + (38990369 : ℤ) * z ^ 3 * d ^ 2 + (-16369632 : ℤ) * z ^ 4 * d ^ 1

theorem part123_5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    37232 * d ^ 5 ≤ part123_5 z d ∧ part123_5 z d ≤ 42885 * d ^ 5 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 4 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 3 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 2 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := offset_monomial_bounds w d 4 1 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  have hid : 10000000000000000000000000000 * part123_5 z d =
      (428847798556081869445269316370848 : ℤ) * w ^ 0 * d ^ 5 + (-18840804239539692716410198256384 : ℤ) * w ^ 1 * d ^ 4 + (-534776704986904947642048 : ℤ) * w ^ 2 * d ^ 3 + (-5103377278222336 : ℤ) * w ^ 3 * d ^ 2 + (-16369632 : ℤ) * w ^ 4 * d ^ 1 := by
    dsimp [w, part123_5]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem auxiliary123_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 < auxiliary123 z d ∧ auxiliary123 z d < 50000 * d ^ 5 := by
  have hd0 : 0 ≤ d := by omega
  have hd1 : 1 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := part123_0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := part123_1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := part123_2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := part123_3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := part123_4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := part123_5_bounds z d hd0 hl hu
  have ha : (1 : ℤ) ≤ d ^ 3 := one_le_pow₀ hd1
  have hb : d ^ 1 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 1 ≤ 3)
  have hc : d ^ 2 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 2 ≤ 3)
  have hrest : -37928613862 * d ^ 3 ≤ part123_0 z d + part123_1 z d + part123_2 z d + part123_3 z d ∧
      part123_0 z d + part123_1 z d + part123_2 z d + part123_3 z d ≤ 37928613862 * d ^ 3 := by
    norm_num at h0l h0u h1l h1u hb
    constructor <;> nlinarith only [h0l,h0u,h1l,h1u,h2l,h2u,h3l,h3u,ha,hb,hc]
  have h54 : 50000 * d ^ 4 ≤ d ^ 5 := by
    have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 4)
    nlinarith only [h]
  have h53 : 2500000000 * d ^ 3 ≤ d ^ 5 := by
    have hsq := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have h := mul_le_mul_of_nonneg_right hsq (pow_nonneg hd0 3)
    norm_num at h
    nlinarith only [h]
  have hd5 : 0 < d ^ 5 := by positivity
  have hid : auxiliary123 z d = part123_0 z d + part123_1 z d + part123_2 z d + part123_3 z d + part123_4 z d + part123_5 z d := by
    unfold auxiliary123 part123_0 part123_1 part123_2 part123_3 part123_4 part123_5
    ring
  rw [hid]
  constructor <;> nlinarith only [hrest.1,hrest.2,h4l,h4u,h5l,h5u,h54,h53,hd5]

def part134_0 (z d : ℤ) : ℤ :=
  0

theorem part134_0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 0 ≤ part134_0 z d ∧ part134_0 z d ≤ 0 * d ^ 0 := by
  norm_num [part134_0]

def part134_1 (z d : ℤ) : ℤ :=
  (373248 : ℤ) * z ^ 1 * d ^ 0

theorem part134_1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    3131341 * d ^ 1 ≤ part134_1 z d ∧ part134_1 z d ≤ 3131342 * d ^ 1 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 0 hd hw0 hwu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  have hid : 10000000000000000000000000000 * part134_1 z d =
      (31313412158976000000000000000000000 : ℤ) * w ^ 0 * d ^ 1 + (373248000000000000000000000 : ℤ) * w ^ 1 * d ^ 0 := by
    dsimp [w, part134_1]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u]

def part134_2 (z d : ℤ) : ℤ :=
  (-1836 : ℤ) * z ^ 1 * d ^ 1 + (52488 : ℤ) * z ^ 2 * d ^ 0

theorem part134_2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    3678843 * d ^ 2 ≤ part134_2 z d ∧ part134_2 z d ≤ 3678844 * d ^ 2 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 1 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  have hid : 10000000000000000000000000000 * part134_2 z d =
      (36788431876719160327200000000000000 : ℤ) * w ^ 0 * d ^ 2 + (878853716971200000000000000 : ℤ) * w ^ 1 * d ^ 1 + (5248800000000000000 : ℤ) * w ^ 2 * d ^ 0 := by
    dsimp [w, part134_2]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u]

def part134_3 (z d : ℤ) : ℤ :=
  (1036800 : ℤ) * z ^ 0 * d ^ 3 + (966798 : ℤ) * z ^ 1 * d ^ 2 + (-126918 : ℤ) * z ^ 2 * d ^ 1 + (-22356 : ℤ) * z ^ 3 * d ^ 0

theorem part134_3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -12985713 * d ^ 3 ≤ part134_3 z d ∧ part134_3 z d ≤ -12985710 * d ^ 3 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 2 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 1 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  have hid : 10000000000000000000000000000 * part134_3 z d =
      (-129857106455976727753182886680000000 : ℤ) * w ^ 0 * d ^ 3 + (-5883169258179737152920000000 : ℤ) * w ^ 1 * d ^ 2 + (-68958087473160000000 : ℤ) * w ^ 2 * d ^ 1 + (-223560000000 : ℤ) * w ^ 3 * d ^ 0 := by
    dsimp [w, part134_3]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def part134_4 (z d : ℤ) : ℤ :=
  (-5100 : ℤ) * z ^ 0 * d ^ 4 + (378750 : ℤ) * z ^ 1 * d ^ 3 + (135753 : ℤ) * z ^ 2 * d ^ 2 + (-21000 : ℤ) * z ^ 3 * d ^ 1 + (540 : ℤ) * z ^ 4 * d ^ 0

theorem part134_4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    3002174 * d ^ 4 ≤ part134_4 z d ∧ part134_4 z d ≤ 3002175 * d ^ 4 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 3 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 2 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 1 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := offset_monomial_bounds w d 4 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  have hid : 10000000000000000000000000000 * part134_4 z d =
      (30021748465168416106757959423934940 : ℤ) * w ^ 0 * d ^ 4 + (-502158225151542404695817520 : ℤ) * w ^ 1 * d ^ 3 + (-16474174938857308440 : ℤ) * w ^ 2 * d ^ 2 + (-28788124080 : ℤ) * w ^ 3 * d ^ 1 + (540 : ℤ) * w ^ 4 * d ^ 0 := by
    dsimp [w, part134_4]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def part134_5 (z d : ℤ) : ℤ :=
  (565870 : ℤ) * z ^ 0 * d ^ 5 + (-57430 : ℤ) * z ^ 1 * d ^ 4 + (-183150 : ℤ) * z ^ 2 * d ^ 3 + (-37331 : ℤ) * z ^ 3 * d ^ 2 + (7034 : ℤ) * z ^ 4 * d ^ 1

theorem part134_5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -4925 * d ^ 5 ≤ part134_5 z d ∧ part134_5 z d ≤ -4922 * d ^ 5 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 4 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 3 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 2 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := offset_monomial_bounds w d 4 1 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  have hid : 10000000000000000000000000000 * part134_5 z d =
      (-49240210193524655368830359706726 : ℤ) * w ^ 0 * d ^ 5 + (5600648437616710544847814008 : ℤ) * w ^ 1 * d ^ 4 + (184772229018233874876 : ℤ) * w ^ 2 * d ^ 3 + (1987142472632 : ℤ) * w ^ 3 * d ^ 2 + (7034 : ℤ) * w ^ 4 * d ^ 1 := by
    dsimp [w, part134_5]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem auxiliary134_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 5 < auxiliary134 z d ∧ auxiliary134 z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  have hd1 : 1 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := part134_0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := part134_1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := part134_2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := part134_3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := part134_4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := part134_5_bounds z d hd0 hl hu
  have ha : (1 : ℤ) ≤ d ^ 3 := one_le_pow₀ hd1
  have hb : d ^ 1 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 1 ≤ 3)
  have hc : d ^ 2 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 2 ≤ 3)
  have hrest : -19795899 * d ^ 3 ≤ part134_0 z d + part134_1 z d + part134_2 z d + part134_3 z d ∧
      part134_0 z d + part134_1 z d + part134_2 z d + part134_3 z d ≤ 19795899 * d ^ 3 := by
    norm_num at h0l h0u h1l h1u hb
    constructor <;> nlinarith only [h0l,h0u,h1l,h1u,h2l,h2u,h3l,h3u,ha,hb,hc]
  have h54 : 50000 * d ^ 4 ≤ d ^ 5 := by
    have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 4)
    nlinarith only [h]
  have h53 : 2500000000 * d ^ 3 ≤ d ^ 5 := by
    have hsq := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have h := mul_le_mul_of_nonneg_right hsq (pow_nonneg hd0 3)
    norm_num at h
    nlinarith only [h]
  have hd5 : 0 < d ^ 5 := by positivity
  have hid : auxiliary134 z d = part134_0 z d + part134_1 z d + part134_2 z d + part134_3 z d + part134_4 z d + part134_5 z d := by
    unfold auxiliary134 part134_0 part134_1 part134_2 part134_3 part134_4 part134_5
    ring
  rw [hid]
  constructor <;> nlinarith only [hrest.1,hrest.2,h4l,h4u,h5l,h5u,h54,h53,hd5]

def part235_0 (z d : ℤ) : ℤ :=
  0

theorem part235_0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 0 ≤ part235_0 z d ∧ part235_0 z d ≤ 0 * d ^ 0 := by
  norm_num [part235_0]

def part235_1 (z d : ℤ) : ℤ :=
  (-373248 : ℤ) * z ^ 1 * d ^ 0

theorem part235_1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -3131342 * d ^ 1 ≤ part235_1 z d ∧ part235_1 z d ≤ -3131341 * d ^ 1 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 0 hd hw0 hwu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  have hid : 10000000000000000000000000000 * part235_1 z d =
      (-31313412158976000000000000000000000 : ℤ) * w ^ 0 * d ^ 1 + (-373248000000000000000000000 : ℤ) * w ^ 1 * d ^ 0 := by
    dsimp [w, part235_1]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u]

def part235_2 (z d : ℤ) : ℤ :=
  (-1836 : ℤ) * z ^ 1 * d ^ 1 + (52488 : ℤ) * z ^ 2 * d ^ 0

theorem part235_2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    3678843 * d ^ 2 ≤ part235_2 z d ∧ part235_2 z d ≤ 3678844 * d ^ 2 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 1 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  have hid : 10000000000000000000000000000 * part235_2 z d =
      (36788431876719160327200000000000000 : ℤ) * w ^ 0 * d ^ 2 + (878853716971200000000000000 : ℤ) * w ^ 1 * d ^ 1 + (5248800000000000000 : ℤ) * w ^ 2 * d ^ 0 := by
    dsimp [w, part235_2]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u]

def part235_3 (z d : ℤ) : ℤ :=
  (-1036800 : ℤ) * z ^ 0 * d ^ 3 + (-966798 : ℤ) * z ^ 1 * d ^ 2 + (126918 : ℤ) * z ^ 2 * d ^ 1 + (22356 : ℤ) * z ^ 3 * d ^ 0

theorem part235_3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    12985710 * d ^ 3 ≤ part235_3 z d ∧ part235_3 z d ≤ 12985713 * d ^ 3 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 2 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 1 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  have hid : 10000000000000000000000000000 * part235_3 z d =
      (129857106455976727753182886680000000 : ℤ) * w ^ 0 * d ^ 3 + (5883169258179737152920000000 : ℤ) * w ^ 1 * d ^ 2 + (68958087473160000000 : ℤ) * w ^ 2 * d ^ 1 + (223560000000 : ℤ) * w ^ 3 * d ^ 0 := by
    dsimp [w, part235_3]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def part235_4 (z d : ℤ) : ℤ :=
  (-5100 : ℤ) * z ^ 0 * d ^ 4 + (378750 : ℤ) * z ^ 1 * d ^ 3 + (135753 : ℤ) * z ^ 2 * d ^ 2 + (-21000 : ℤ) * z ^ 3 * d ^ 1 + (540 : ℤ) * z ^ 4 * d ^ 0

theorem part235_4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    3002174 * d ^ 4 ≤ part235_4 z d ∧ part235_4 z d ≤ 3002175 * d ^ 4 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 3 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 2 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 1 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := offset_monomial_bounds w d 4 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  have hid : 10000000000000000000000000000 * part235_4 z d =
      (30021748465168416106757959423934940 : ℤ) * w ^ 0 * d ^ 4 + (-502158225151542404695817520 : ℤ) * w ^ 1 * d ^ 3 + (-16474174938857308440 : ℤ) * w ^ 2 * d ^ 2 + (-28788124080 : ℤ) * w ^ 3 * d ^ 1 + (540 : ℤ) * w ^ 4 * d ^ 0 := by
    dsimp [w, part235_4]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def part235_5 (z d : ℤ) : ℤ :=
  (-565870 : ℤ) * z ^ 0 * d ^ 5 + (57430 : ℤ) * z ^ 1 * d ^ 4 + (183150 : ℤ) * z ^ 2 * d ^ 3 + (37331 : ℤ) * z ^ 3 * d ^ 2 + (-7034 : ℤ) * z ^ 4 * d ^ 1

theorem part235_5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    4922 * d ^ 5 ≤ part235_5 z d ∧ part235_5 z d ≤ 4925 * d ^ 5 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 4 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 3 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 2 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := offset_monomial_bounds w d 4 1 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  have hid : 10000000000000000000000000000 * part235_5 z d =
      (49240210193524655368830359706726 : ℤ) * w ^ 0 * d ^ 5 + (-5600648437616710544847814008 : ℤ) * w ^ 1 * d ^ 4 + (-184772229018233874876 : ℤ) * w ^ 2 * d ^ 3 + (-1987142472632 : ℤ) * w ^ 3 * d ^ 2 + (-7034 : ℤ) * w ^ 4 * d ^ 1 := by
    dsimp [w, part235_5]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem auxiliary235_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 < auxiliary235 z d ∧ auxiliary235 z d < 50000 * d ^ 5 := by
  have hd0 : 0 ≤ d := by omega
  have hd1 : 1 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := part235_0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := part235_1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := part235_2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := part235_3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := part235_4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := part235_5_bounds z d hd0 hl hu
  have ha : (1 : ℤ) ≤ d ^ 3 := one_le_pow₀ hd1
  have hb : d ^ 1 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 1 ≤ 3)
  have hc : d ^ 2 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 2 ≤ 3)
  have hrest : -19795899 * d ^ 3 ≤ part235_0 z d + part235_1 z d + part235_2 z d + part235_3 z d ∧
      part235_0 z d + part235_1 z d + part235_2 z d + part235_3 z d ≤ 19795899 * d ^ 3 := by
    norm_num at h0l h0u h1l h1u hb
    constructor <;> nlinarith only [h0l,h0u,h1l,h1u,h2l,h2u,h3l,h3u,ha,hb,hc]
  have h54 : 50000 * d ^ 4 ≤ d ^ 5 := by
    have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 4)
    nlinarith only [h]
  have h53 : 2500000000 * d ^ 3 ≤ d ^ 5 := by
    have hsq := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have h := mul_le_mul_of_nonneg_right hsq (pow_nonneg hd0 3)
    norm_num at h
    nlinarith only [h]
  have hd5 : 0 < d ^ 5 := by positivity
  have hid : auxiliary235 z d = part235_0 z d + part235_1 z d + part235_2 z d + part235_3 z d + part235_4 z d + part235_5 z d := by
    unfold auxiliary235 part235_0 part235_1 part235_2 part235_3 part235_4 part235_5
    ring
  rw [hid]
  constructor <;> nlinarith only [hrest.1,hrest.2,h4l,h4u,h5l,h5u,h54,h53,hd5]

def part345_0 (z d : ℤ) : ℤ :=
  0

theorem part345_0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 0 ≤ part345_0 z d ∧ part345_0 z d ≤ 0 * d ^ 0 := by
  norm_num [part345_0]

def part345_1 (z d : ℤ) : ℤ :=
  (443214504 : ℤ) * z ^ 1 * d ^ 0

theorem part345_1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    3718320912 * d ^ 1 ≤ part345_1 z d ∧ part345_1 z d ≤ 3718321046 * d ^ 1 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 0 hd hw0 hwu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  have hid : 10000000000000000000000000000 * part345_1 z d =
      (37183209122589048000000000000000000000 : ℤ) * w ^ 0 * d ^ 1 + (443214504000000000000000000000 : ℤ) * w ^ 1 * d ^ 0 := by
    dsimp [w, part345_1]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u]

def part345_2 (z d : ℤ) : ℤ :=
  (-843012684 : ℤ) * z ^ 1 * d ^ 1 + (81099792 : ℤ) * z ^ 2 * d ^ 0

theorem part345_2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -1364382390 * d ^ 2 ≤ part345_2 z d ∧ part345_2 z d ≤ -1364382234 * d ^ 2 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 1 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  have hid : 10000000000000000000000000000 * part345_2 z d =
      (-13643823893824859609995200000000000000 : ℤ) * w ^ 0 * d ^ 2 + (517750783133500800000000000000 : ℤ) * w ^ 1 * d ^ 1 + (8109979200000000000000 : ℤ) * w ^ 2 * d ^ 0 := by
    dsimp [w, part345_2]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u]

def part345_3 (z d : ℤ) : ℤ :=
  (1231151400 : ℤ) * z ^ 0 * d ^ 3 + (213936678 : ℤ) * z ^ 1 * d ^ 2 + (-126852966 : ℤ) * z ^ 2 * d ^ 1 + (-45630702 : ℤ) * z ^ 3 * d ^ 0

theorem part345_3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -32845910426 * d ^ 3 ≤ part345_3 z d ∧ part345_3 z d ≤ -32845906961 * d ^ 3 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 2 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 1 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  have hid : 10000000000000000000000000000 * part345_3 z d =
      (-328459069611107577830806187493060000000 : ℤ) * w ^ 0 * d ^ 3 + (-11549347210325818011595140000000 : ℤ) * w ^ 1 * d ^ 2 + (-127530089780090220000000 : ℤ) * w ^ 2 * d ^ 1 + (-456307020000000 : ℤ) * w ^ 3 * d ^ 0 := by
    dsimp [w, part345_3]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def part345_4 (z d : ℤ) : ℤ :=
  (-2341701900 : ℤ) * z ^ 0 * d ^ 4 + (-1393759710 : ℤ) * z ^ 1 * d ^ 3 + (-99037701 : ℤ) * z ^ 2 * d ^ 2 + (100492650 : ℤ) * z ^ 3 * d ^ 1 + (-7805970 : ℤ) * z ^ 4 * d ^ 0

theorem part345_4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -335692028 * d ^ 4 ≤ part345_4 z d ∧ part345_4 z d ≤ -335691945 * d ^ 4 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 3 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 2 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 1 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := offset_monomial_bounds w d 4 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  have hid : 10000000000000000000000000000 * part345_4 z d =
      (-3356919450527738955296774738191525170 : ℤ) * w ^ 0 * d ^ 4 + (-273476253010593437069109839640 : ℤ) * w ^ 1 * d ^ 3 + (-86623753134136677845580 : ℤ) * w ^ 2 * d ^ 2 + (-1614581772361560 : ℤ) * w ^ 3 * d ^ 1 + (-7805970 : ℤ) * w ^ 4 * d ^ 0 := by
    dsimp [w, part345_4]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def part345_5 (z d : ℤ) : ℤ :=
  (-1922752090 : ℤ) * z ^ 0 * d ^ 5 + (-1795094470 : ℤ) * z ^ 1 * d ^ 4 + (-583742610 : ℤ) * z ^ 2 * d ^ 3 + (-38990369 : ℤ) * z ^ 3 * d ^ 2 + (16369632 : ℤ) * z ^ 4 * d ^ 1

theorem part345_5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -42885 * d ^ 5 ≤ part345_5 z d ∧ part345_5 z d ≤ -37232 * d ^ 5 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := offset_monomial_bounds w d 1 4 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := offset_monomial_bounds w d 2 3 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := offset_monomial_bounds w d 3 2 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := offset_monomial_bounds w d 4 1 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  have hid : 10000000000000000000000000000 * part345_5 z d =
      (-428847798556081869445269316370848 : ℤ) * w ^ 0 * d ^ 5 + (18840804239539692716410198256384 : ℤ) * w ^ 1 * d ^ 4 + (534776704986904947642048 : ℤ) * w ^ 2 * d ^ 3 + (5103377278222336 : ℤ) * w ^ 3 * d ^ 2 + (16369632 : ℤ) * w ^ 4 * d ^ 1 := by
    dsimp [w, part345_5]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem auxiliary345_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 5 < auxiliary345 z d ∧ auxiliary345 z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  have hd1 : 1 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := part345_0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := part345_1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := part345_2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := part345_3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := part345_4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := part345_5_bounds z d hd0 hl hu
  have ha : (1 : ℤ) ≤ d ^ 3 := one_le_pow₀ hd1
  have hb : d ^ 1 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 1 ≤ 3)
  have hc : d ^ 2 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 2 ≤ 3)
  have hrest : -37928613862 * d ^ 3 ≤ part345_0 z d + part345_1 z d + part345_2 z d + part345_3 z d ∧
      part345_0 z d + part345_1 z d + part345_2 z d + part345_3 z d ≤ 37928613862 * d ^ 3 := by
    norm_num at h0l h0u h1l h1u hb
    constructor <;> nlinarith only [h0l,h0u,h1l,h1u,h2l,h2u,h3l,h3u,ha,hb,hc]
  have h54 : 50000 * d ^ 4 ≤ d ^ 5 := by
    have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 4)
    nlinarith only [h]
  have h53 : 2500000000 * d ^ 3 ≤ d ^ 5 := by
    have hsq := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have h := mul_le_mul_of_nonneg_right hsq (pow_nonneg hd0 3)
    norm_num at h
    nlinarith only [h]
  have hd5 : 0 < d ^ 5 := by positivity
  have hid : auxiliary345 z d = part345_0 z d + part345_1 z d + part345_2 z d + part345_3 z d + part345_4 z d + part345_5 z d := by
    unfold auxiliary345 part345_0 part345_1 part345_2 part345_3 part345_4 part345_5
    ring
  rw [hid]
  constructor <;> nlinarith only [hrest.1,hrest.2,h4l,h4u,h5l,h5u,h54,h53,hd5]

/-- info: 'B686Round6A.offset_monomial_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms offset_monomial_bounds
/-- info: 'B686Round6A.auxiliary123_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary123_bounds
/-- info: 'B686Round6A.auxiliary134_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary134_bounds
/-- info: 'B686Round6A.auxiliary235_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary235_bounds
/-- info: 'B686Round6A.auxiliary345_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary345_bounds
end B686Round6A
