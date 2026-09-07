import research.tasks.«B686-Four».round5.worker.ContactTail

set_option maxRecDepth 200000
set_option maxHeartbeats 12000000
namespace B686Round6AProbe
def auxiliary1235 (z d : ℤ) : ℤ :=
  (696100165617781800 : ℤ) * z ^ 0 * d ^ 3 + (2709750696211685700 : ℤ) * z ^ 0 * d ^ 4 + (9706709740858246620 : ℤ) * z ^ 0 * d ^ 5 + (17636919966593601480 : ℤ) * z ^ 0 * d ^ 6 + (28757725159638329820 : ℤ) * z ^ 0 * d ^ 7 + (22429240061746277520 : ℤ) * z ^ 0 * d ^ 8 + (14306215103737340040 : ℤ) * z ^ 0 * d ^ 9 + (-8766537296147494560 : ℤ) * z ^ 0 * d ^ 10 + (-7288489894869250020 : ℤ) * z ^ 0 * d ^ 11 + (-6321529963146391500 : ℤ) * z ^ 0 * d ^ 12 + (2109359927254622300 : ℤ) * z ^ 0 * d ^ 13 + (200136998853169400 : ℤ) * z ^ 0 * d ^ 14 + (-50077071238884000 : ℤ) * z ^ 0 * d ^ 15 + (250596059622401448 : ℤ) * z ^ 1 * d ^ 0 + (975510250636206852 : ℤ) * z ^ 1 * d ^ 1 + (4006745228603656188 : ℤ) * z ^ 1 * d ^ 2 + (8111634311846236608 : ℤ) * z ^ 1 * d ^ 3 + (16462369234542823416 : ℤ) * z ^ 1 * d ^ 4 + (17394548698086051096 : ℤ) * z ^ 1 * d ^ 5 + (19034214073436841732 : ℤ) * z ^ 1 * d ^ 6 + (1647812625259600080 : ℤ) * z ^ 1 * d ^ 7 + (-2997793189172064780 : ℤ) * z ^ 1 * d ^ 8 + (-16294554946978938000 : ℤ) * z ^ 1 * d ^ 9 + (-5168373277903133940 : ℤ) * z ^ 1 * d ^ 10 + (-4159143048656488320 : ℤ) * z ^ 1 * d ^ 11 + (2053731732441683800 : ℤ) * z ^ 1 * d ^ 12 + (46349896082464900 : ℤ) * z ^ 1 * d ^ 13 + (-26250956169504000 : ℤ) * z ^ 1 * d ^ 14 + (-83532019874133816 : ℤ) * z ^ 2 * d ^ 0 + (-325170083545402284 : ℤ) * z ^ 2 * d ^ 1 + (-1304643957729317316 : ℤ) * z ^ 2 * d ^ 2 + (-2686570690134564216 : ℤ) * z ^ 2 * d ^ 3 + (-5521811674536316512 : ℤ) * z ^ 2 * d ^ 4 + (-6715846860404122152 : ℤ) * z ^ 2 * d ^ 5 + (-8640971107182335484 : ℤ) * z ^ 2 * d ^ 6 + (-5779583173096122240 : ℤ) * z ^ 2 * d ^ 7 + (-5176820215019156580 : ℤ) * z ^ 2 * d ^ 8 + (-974061997461116280 : ℤ) * z ^ 2 * d ^ 9 + (-901854639913474740 : ℤ) * z ^ 2 * d ^ 10 + (601139205984824160 : ℤ) * z ^ 2 * d ^ 11 + (-14848228970053200 : ℤ) * z ^ 2 * d ^ 12 + (136818260497500 : ℤ) * z ^ 2 * d ^ 13 + (-6961001656177818 : ℤ) * z ^ 3 * d ^ 0 + (-27097506962116857 : ℤ) * z ^ 3 * d ^ 1 + (-104853106668455433 : ℤ) * z ^ 3 * d ^ 2 + (-215272092213906003 : ℤ) * z ^ 3 * d ^ 3 + (-414146530863136476 : ℤ) * z ^ 3 * d ^ 4 + (-488788986983615811 : ℤ) * z ^ 3 * d ^ 5 + (-528129049845754962 : ℤ) * z ^ 3 * d ^ 6 + (-300941399568915495 : ℤ) * z ^ 3 * d ^ 7 + (-137680359211062405 : ℤ) * z ^ 3 * d ^ 8 + (16336297090585620 : ℤ) * z ^ 3 * d ^ 9 + (30917298390882620 : ℤ) * z ^ 3 * d ^ 10 + (210267534014990 : ℤ) * z ^ 3 * d ^ 11 + (1425541708515200 : ℤ) * z ^ 3 * d ^ 12 + (2320333885392606 : ℤ) * z ^ 4 * d ^ 0 + (9032502320705619 : ℤ) * z ^ 4 * d ^ 1 + (34091652635636031 : ℤ) * z ^ 4 * d ^ 2 + (66979687973884731 : ℤ) * z ^ 4 * d ^ 3 + (123072025259717532 : ℤ) * z ^ 4 * d ^ 4 + (129446170368522957 : ℤ) * z ^ 4 * d ^ 5 + (128751456311673894 : ℤ) * z ^ 4 * d ^ 6 + (47093622763791195 : ℤ) * z ^ 4 * d ^ 7 + (19185558540638325 : ℤ) * z ^ 4 * d ^ 8 + (-16130212712425760 : ℤ) * z ^ 4 * d ^ 9 + (67003083441130 : ℤ) * z ^ 4 * d ^ 10 + (-117298287059800 : ℤ) * z ^ 4 * d ^ 11

theorem high_offset_monomial_bounds (w d : ℤ) (a b : ℕ) (hd : 0 ≤ d)
    (hl : 0 ≤ w) (hu : w ≤ 3 * d) :
    0 ≤ w ^ a * d ^ b ∧ w ^ a * d ^ b ≤ 3 ^ a * d ^ (a + b) := by
  have hw := pow_le_pow_left₀ hl hu a
  have hb : 0 ≤ d ^ b := pow_nonneg hd b
  have ht := mul_le_mul_of_nonneg_right hw hb
  simp only [mul_pow, pow_add] at ht ⊢
  exact ⟨mul_nonneg (pow_nonneg hl a) hb, by nlinarith only [ht]⟩

def fourPart1235_0 (z d : ℤ) : ℤ :=
  0

theorem fourPart1235_0_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    0 * d ^ 0 ≤ fourPart1235_0 z d ∧ fourPart1235_0 z d ≤ 0 * d ^ 0 := by
  norm_num [fourPart1235_0]

def fourPart1235_1 (z d : ℤ) : ℤ :=
  (250596059622401448 : ℤ) * z ^ 1 * d ^ 0

theorem fourPart1235_1_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    2102360280663682094 * d ^ 1 ≤ fourPart1235_1 z d ∧ fourPart1235_1 z d ≤ 2102360355842499982 * d ^ 1 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 0 hd hw0 hwu
  norm_num at h1l h1u
  have hdK : 0 ≤ d ^ 1 := pow_nonneg hd 1
  have hid : 10000000000000000000000000000 * fourPart1235_1 z d =
      (21023602806636820947872376000000000000000000000 : ℤ) * w ^ 0 * d ^ 1 + (250596059622401448000000000000000000000 : ℤ) * w ^ 1 * d ^ 0 := by
    dsimp [w, fourPart1235_1]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u]

def fourPart1235_2 (z d : ℤ) : ℤ :=
  (975510250636206852 : ℤ) * z ^ 1 * d ^ 1 + (-83532019874133816 : ℤ) * z ^ 2 * d ^ 0

theorem fourPart1235_2_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    2304775754467519508 * d ^ 2 ≤ fourPart1235_2 z d ∧ fourPart1235_2 z d ≤ 2304775882286507969 * d ^ 2 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 1 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u
  have hdK : 0 ≤ d ^ 2 := pow_nonneg hd 2
  have hid : 10000000000000000000000000000 * fourPart1235_2 z d =
      (23047758822865079685389326041549600000000000000 : ℤ) * w ^ 0 * d ^ 2 + (-426063269806247877858158400000000000000 : ℤ) * w ^ 1 * d ^ 1 + (-8353201987413381600000000000000 : ℤ) * w ^ 2 * d ^ 0 := by
    dsimp [w, fourPart1235_2]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u]

def fourPart1235_3 (z d : ℤ) : ℤ :=
  (696100165617781800 : ℤ) * z ^ 0 * d ^ 3 + (4006745228603656188 : ℤ) * z ^ 1 * d ^ 2 + (-325170083545402284 : ℤ) * z ^ 2 * d ^ 1 + (-6961001656177818 : ℤ) * z ^ 3 * d ^ 0

theorem fourPart1235_3_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    7313829325829015785 * d ^ 3 ≤ fourPart1235_3 z d ∧ fourPart1235_3 z d ≤ 7313830201542749524 * d ^ 3 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 2 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 1 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u
  have hdK : 0 ≤ d ^ 3 := pow_nonneg hd 3
  have hid : 10000000000000000000000000000 * fourPart1235_3 z d =
      (73138302015427495230822433932941668517460000000 : ℤ) * w ^ 0 * d ^ 3 + (-2919045629014302423124741548961260000000 : ℤ) * w ^ 1 * d ^ 2 + (-50036677360070912523226980000000 : ℤ) * w ^ 2 * d ^ 1 + (-69610016561778180000000 : ℤ) * w ^ 3 * d ^ 0 := by
    dsimp [w, fourPart1235_3]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u]

def fourPart1235_4 (z d : ℤ) : ℤ :=
  (2709750696211685700 : ℤ) * z ^ 0 * d ^ 4 + (8111634311846236608 : ℤ) * z ^ 1 * d ^ 3 + (-1304643957729317316 : ℤ) * z ^ 2 * d ^ 2 + (-27097506962116857 : ℤ) * z ^ 3 * d ^ 1 + (2320333885392606 : ℤ) * z ^ 4 * d ^ 0

theorem fourPart1235_4_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -25568543640358341530 * d ^ 4 ≤ fourPart1235_4 z d ∧ fourPart1235_4 z d ≤ -25568539434342935422 * d ^ 4 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 3 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 2 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 1 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 0 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 4 := pow_nonneg hd 4
  have hid : 10000000000000000000000000000 * fourPart1235_4 z d =
      (-255685394343429354227185793472165564106200183234 : ℤ) * w ^ 0 * d ^ 4 + (-14020051051658014938411202748851825802328 : ℤ) * w ^ 1 * d ^ 3 + (-100677465069922752864199106735916 : ℤ) * w ^ 2 * d ^ 2 + (507676886180195168810088 : ℤ) * w ^ 3 * d ^ 1 + (2320333885392606 : ℤ) * w ^ 4 * d ^ 0 := by
    dsimp [w, fourPart1235_4]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_5 (z d : ℤ) : ℤ :=
  (9706709740858246620 : ℤ) * z ^ 0 * d ^ 5 + (16462369234542823416 : ℤ) * z ^ 1 * d ^ 4 + (-2686570690134564216 : ℤ) * z ^ 2 * d ^ 3 + (-104853106668455433 : ℤ) * z ^ 3 * d ^ 2 + (9032502320705619 : ℤ) * z ^ 4 * d ^ 1

theorem fourPart1235_5_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -58439545933205463907 * d ^ 5 ≤ fourPart1235_5 z d ∧ fourPart1235_5 z d ≤ -58439537106884391182 * d ^ 5 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 4 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 3 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 2 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 1 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 5 := pow_nonneg hd 5
  have hid : 10000000000000000000000000000 * fourPart1235_5 z d =
      (-584395371068843911823062075473376283786567132541 : ℤ) * w ^ 0 * d ^ 5 + (-29421069789065685440330332353879633078972 : ℤ) * w ^ 1 * d ^ 4 + (-151115640801953751935801474303934 : ℤ) * w ^ 2 * d ^ 3 + (1982573914402146923842212 : ℤ) * w ^ 3 * d ^ 2 + (9032502320705619 : ℤ) * w ^ 4 * d ^ 1 := by
    dsimp [w, fourPart1235_5]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_6 (z d : ℤ) : ℤ :=
  (17636919966593601480 : ℤ) * z ^ 0 * d ^ 6 + (17394548698086051096 : ℤ) * z ^ 1 * d ^ 5 + (-5521811674536316512 : ℤ) * z ^ 2 * d ^ 4 + (-215272092213906003 : ℤ) * z ^ 3 * d ^ 3 + (34091652635636031 : ℤ) * z ^ 4 * d ^ 2

theorem fourPart1235_6_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -183303909125840736327 * d ^ 6 ≤ fourPart1235_6 z d ∧ fourPart1235_6 z d ≤ -183303897069146861122 * d ^ 6 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 5 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 4 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 3 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 2 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 6 := pow_nonneg hd 6
  have hid : 10000000000000000000000000000 * fourPart1235_6 z d =
      (-1833038970691471722455543815408656536302049881809 : ℤ) * w ^ 0 * d ^ 6 + (-40188978546936371881080705054271952061228 : ℤ) * w ^ 1 * d ^ 5 + (345692387781771987081156314177034 : ℤ) * w ^ 2 * d ^ 4 + (9287672276595416673431988 : ℤ) * w ^ 3 * d ^ 3 + (34091652635636031 : ℤ) * w ^ 4 * d ^ 2 := by
    dsimp [w, fourPart1235_6]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_7 (z d : ℤ) : ℤ :=
  (28757725159638329820 : ℤ) * z ^ 0 * d ^ 7 + (19034214073436841732 : ℤ) * z ^ 1 * d ^ 6 + (-6715846860404122152 : ℤ) * z ^ 2 * d ^ 5 + (-414146530863136476 : ℤ) * z ^ 3 * d ^ 4 + (66979687973884731 : ℤ) * z ^ 4 * d ^ 3

theorem fourPart1235_7_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -196978071839311833725 * d ^ 7 ≤ fourPart1235_7 z d ∧ fourPart1235_7 z d ≤ -196978064969886178552 * d ^ 7 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 6 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 5 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 4 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 3 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 7 := pow_nonneg hd 7
  have hid : 10000000000000000000000000000 * fourPart1235_7 z d =
      (-1969780649698871816960616380821937235930087401109 : ℤ) * w ^ 0 * d ^ 7 + (-22898082173429569577465717872564379796828 : ℤ) * w ^ 1 * d ^ 6 + (1114604269372659726640926144678834 : ℤ) * w ^ 2 * d ^ 5 + (18335414147449961303619588 : ℤ) * w ^ 3 * d ^ 4 + (66979687973884731 : ℤ) * w ^ 4 * d ^ 3 := by
    dsimp [w, fourPart1235_7]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_8 (z d : ℤ) : ℤ :=
  (22429240061746277520 : ℤ) * z ^ 0 * d ^ 8 + (1647812625259600080 : ℤ) * z ^ 1 * d ^ 7 + (-8640971107182335484 : ℤ) * z ^ 2 * d ^ 6 + (-488788986983615811 : ℤ) * z ^ 3 * d ^ 5 + (123072025259717532 : ℤ) * z ^ 4 * d ^ 4

theorem fourPart1235_8_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -250872487785248427565 * d ^ 8 ≤ fourPart1235_8 z d ∧ fourPart1235_8 z d ≤ -250872474544109220093 * d ^ 8 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 7 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 6 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 5 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 4 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 8 := pow_nonneg hd 8
  have hid : 10000000000000000000000000000 * fourPart1235_8 z d =
      (-2508724877852484275649393672660484219929247878948 : ℤ) * w ^ 0 * d ^ 8 + (44137121382610644397783272342121902191184 : ℤ) * w ^ 1 * d ^ 7 + (3102986824317062188616923311852648 : ℤ) * w ^ 2 * d ^ 6 + (36412318594213914451171536 : ℤ) * w ^ 3 * d ^ 5 + (123072025259717532 : ℤ) * w ^ 4 * d ^ 4 := by
    dsimp [w, fourPart1235_8]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_9 (z d : ℤ) : ℤ :=
  (14306215103737340040 : ℤ) * z ^ 0 * d ^ 9 + (-2997793189172064780 : ℤ) * z ^ 1 * d ^ 8 + (-5779583173096122240 : ℤ) * z ^ 2 * d ^ 7 + (-528129049845754962 : ℤ) * z ^ 3 * d ^ 6 + (129446170368522957 : ℤ) * z ^ 4 * d ^ 5

theorem fourPart1235_9_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -88230813523459178317 * d ^ 9 ≤ fourPart1235_9 z d ∧ fourPart1235_9 z d ≤ -88230785248212427565 * d ^ 9 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 8 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 7 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 6 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 5 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 9 := pow_nonneg hd 9
  have hid : 10000000000000000000000000000 * fourPart1235_9 z d =
      (-882308135234591783161053186255139156582284695523 : ℤ) * w ^ 0 * d ^ 9 + (94250811824629925569997066778348941476284 : ℤ) * w ^ 1 * d ^ 8 + (3559290959760508204290573147833598 : ℤ) * w ^ 2 * d ^ 7 + (38157937951801640671769436 : ℤ) * w ^ 3 * d ^ 6 + (129446170368522957 : ℤ) * w ^ 4 * d ^ 5 := by
    dsimp [w, fourPart1235_9]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_10 (z d : ℤ) : ℤ :=
  (-8766537296147494560 : ℤ) * z ^ 0 * d ^ 10 + (-16294554946978938000 : ℤ) * z ^ 1 * d ^ 9 + (-5176820215019156580 : ℤ) * z ^ 2 * d ^ 8 + (-300941399568915495 : ℤ) * z ^ 3 * d ^ 7 + (128751456311673894 : ℤ) * z ^ 4 * d ^ 6

theorem fourPart1235_10_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -49725517358944677767 * d ^ 10 ≤ fourPart1235_10 z d ∧ fourPart1235_10 z d ≤ -49725476139802077278 * d ^ 10 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 9 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 8 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 7 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 6 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 10 := pow_nonneg hd 10
  have hid : 10000000000000000000000000000 * fourPart1235_10 z d =
      (-497255173589446777668998418342371194087332310266 : ℤ) * w ^ 0 * d ^ 10 + (137397129515560507744886403078331698200328 : ℤ) * w ^ 1 * d ^ 9 + (4162022812184704732821903546566916 : ℤ) * w ^ 2 * d ^ 8 + (40196684014811494174131912 : ℤ) * w ^ 3 * d ^ 7 + (128751456311673894 : ℤ) * w ^ 4 * d ^ 6 := by
    dsimp [w, fourPart1235_10]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_11 (z d : ℤ) : ℤ :=
  (-7288489894869250020 : ℤ) * z ^ 0 * d ^ 11 + (-5168373277903133940 : ℤ) * z ^ 1 * d ^ 10 + (-974061997461116280 : ℤ) * z ^ 2 * d ^ 9 + (-137680359211062405 : ℤ) * z ^ 3 * d ^ 8 + (47093622763791195 : ℤ) * z ^ 4 * d ^ 7

theorem fourPart1235_11_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    32787087393511629832 * d ^ 11 ≤ fourPart1235_11 z d ∧ fourPart1235_11 z d ≤ 32787105587532554471 * d ^ 11 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 10 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 9 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 8 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 7 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 11 := pow_nonneg hd 11
  have hid : 10000000000000000000000000000 * fourPart1235_11 z d =
      (327870873935116298325330836135443571805830416395 : ℤ) * w ^ 0 * d ^ 11 + (60646731780997503031922622449459492402340 : ℤ) * w ^ 1 * d ^ 10 + (1544820796795492099498577435423730 : ℤ) * w ^ 2 * d ^ 9 + (14426758861399408352089860 : ℤ) * w ^ 3 * d ^ 8 + (47093622763791195 : ℤ) * w ^ 4 * d ^ 7 := by
    dsimp [w, fourPart1235_11]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_12 (z d : ℤ) : ℤ :=
  (-6321529963146391500 : ℤ) * z ^ 0 * d ^ 12 + (-4159143048656488320 : ℤ) * z ^ 1 * d ^ 11 + (-901854639913474740 : ℤ) * z ^ 2 * d ^ 10 + (16336297090585620 : ℤ) * z ^ 3 * d ^ 9 + (19185558540638325 : ℤ) * z ^ 4 * d ^ 8

theorem fourPart1235_12_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -3319644130849418 * d ^ 12 ≤ fourPart1235_12 z d ∧ fourPart1235_12 z d ≤ -3310802468867926 * d ^ 12 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 11 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 10 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 9 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 8 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 12 := pow_nonneg hd 12
  have hid : 10000000000000000000000000000 * fourPart1235_12 z d =
      (-33196441308494177602241062437876990250239675 : ℤ) * w ^ 0 * d ^ 12 + (29472204321583712085644623854860199039900 : ℤ) * w ^ 1 * d ^ 11 + (761128880930243117852848349981550 : ℤ) * w ^ 2 * d ^ 10 + (6601605662983723658327100 : ℤ) * w ^ 3 * d ^ 9 + (19185558540638325 : ℤ) * w ^ 4 * d ^ 8 := by
    dsimp [w, fourPart1235_12]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_13 (z d : ℤ) : ℤ :=
  (2109359927254622300 : ℤ) * z ^ 0 * d ^ 13 + (2053731732441683800 : ℤ) * z ^ 1 * d ^ 12 + (601139205984824160 : ℤ) * z ^ 2 * d ^ 11 + (30917298390882620 : ℤ) * z ^ 3 * d ^ 10 + (-16130212712425760 : ℤ) * z ^ 4 * d ^ 9

theorem fourPart1235_13_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -13645111795046 * d ^ 13 ≤ fourPart1235_13 z d ∧ fourPart1235_13 z d ≤ -7816290126255 * d ^ 13 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 12 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 11 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 10 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 9 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 13 := pow_nonneg hd 13
  have hid : 10000000000000000000000000000 * fourPart1235_13 z d =
      (-78162901262552726579859664940723792259360 : ℤ) * w ^ 0 * d ^ 13 + (-19429403932897475865038974809748441653120 : ℤ) * w ^ 1 * d ^ 12 + (-543245021780952069571020361256640 : ℤ) * w ^ 2 * d ^ 11 + (-5103764246845439472836480 : ℤ) * w ^ 3 * d ^ 10 + (-16130212712425760 : ℤ) * w ^ 4 * d ^ 9 := by
    dsimp [w, fourPart1235_13]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_14 (z d : ℤ) : ℤ :=
  (200136998853169400 : ℤ) * z ^ 0 * d ^ 14 + (46349896082464900 : ℤ) * z ^ 1 * d ^ 13 + (-14848228970053200 : ℤ) * z ^ 2 * d ^ 12 + (210267534014990 : ℤ) * z ^ 3 * d ^ 11 + (67003083441130 : ℤ) * z ^ 4 * d ^ 10

theorem fourPart1235_14_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -175766617 * d ^ 14 ≤ fourPart1235_14 z d ∧ fourPart1235_14 z d ≤ -135092123 * d ^ 14 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 13 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 12 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 11 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 10 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 14 := pow_nonneg hd 14
  have hid : 10000000000000000000000000000 * fourPart1235_14 z d =
      (-1350938102790744990414130847336222070 : ℤ) * w ^ 0 * d ^ 14 + (-135576020331088748573619158070634440 : ℤ) * w ^ 1 * d ^ 13 + (1873899096056234227621409273820 : ℤ) * w ^ 2 * d ^ 12 + (24587405789763707749240 : ℤ) * w ^ 3 * d ^ 11 + (67003083441130 : ℤ) * w ^ 4 * d ^ 10 := by
    dsimp [w, fourPart1235_14]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

def fourPart1235_15 (z d : ℤ) : ℤ :=
  (-50077071238884000 : ℤ) * z ^ 0 * d ^ 15 + (-26250956169504000 : ℤ) * z ^ 1 * d ^ 14 + (136818260497500 : ℤ) * z ^ 2 * d ^ 13 + (1425541708515200 : ℤ) * z ^ 3 * d ^ 12 + (-117298287059800 : ℤ) * z ^ 4 * d ^ 11

theorem fourPart1235_15_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -6827 * d ^ 15 ≤ fourPart1235_15 z d ∧ fourPart1235_15 z d ≤ -3416 * d ^ 15 := by
  let w : ℤ := 10000000 * z - 83894387 * d
  have hw0 : 0 ≤ w := by dsimp [w]; omega
  have hwu : w ≤ 3 * d := by dsimp [w]; omega
  obtain ⟨h1l, h1u⟩ := high_offset_monomial_bounds w d 1 14 hd hw0 hwu
  obtain ⟨h2l, h2u⟩ := high_offset_monomial_bounds w d 2 13 hd hw0 hwu
  obtain ⟨h3l, h3u⟩ := high_offset_monomial_bounds w d 3 12 hd hw0 hwu
  obtain ⟨h4l, h4u⟩ := high_offset_monomial_bounds w d 4 11 hd hw0 hwu
  norm_num at h1l h1u h2l h2u h3l h3u h4l h4u
  have hdK : 0 ≤ d ^ 15 := pow_nonneg hd 15
  have hid : 10000000000000000000000000000 * fourPart1235_15 z d =
      (-56101969091707096279768072387800 : ℤ) * w ^ 0 * d ^ 15 + (7311664555066651502803626162400 : ℤ) * w ^ 1 * d ^ 14 + (-1351930541911306969068167917200 : ℤ) * w ^ 2 * d ^ 13 + (-25107254470975813370400 : ℤ) * w ^ 3 * d ^ 12 + (-117298287059800 : ℤ) * w ^ 4 * d ^ 11 := by
    dsimp [w, fourPart1235_15]
    ring
  constructor <;> nlinarith only [hid, hdK, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u]

theorem auxiliary1235_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 15 < auxiliary1235 z d ∧ auxiliary1235 z d < 0 := by
  have hd0 : 0 ≤ d := by omega
  obtain ⟨h0l, h0u⟩ := fourPart1235_0_bounds z d hd0 hl hu
  obtain ⟨h1l, h1u⟩ := fourPart1235_1_bounds z d hd0 hl hu
  obtain ⟨h2l, h2u⟩ := fourPart1235_2_bounds z d hd0 hl hu
  obtain ⟨h3l, h3u⟩ := fourPart1235_3_bounds z d hd0 hl hu
  obtain ⟨h4l, h4u⟩ := fourPart1235_4_bounds z d hd0 hl hu
  obtain ⟨h5l, h5u⟩ := fourPart1235_5_bounds z d hd0 hl hu
  obtain ⟨h6l, h6u⟩ := fourPart1235_6_bounds z d hd0 hl hu
  obtain ⟨h7l, h7u⟩ := fourPart1235_7_bounds z d hd0 hl hu
  obtain ⟨h8l, h8u⟩ := fourPart1235_8_bounds z d hd0 hl hu
  obtain ⟨h9l, h9u⟩ := fourPart1235_9_bounds z d hd0 hl hu
  obtain ⟨h10l, h10u⟩ := fourPart1235_10_bounds z d hd0 hl hu
  obtain ⟨h11l, h11u⟩ := fourPart1235_11_bounds z d hd0 hl hu
  obtain ⟨h12l, h12u⟩ := fourPart1235_12_bounds z d hd0 hl hu
  obtain ⟨h13l, h13u⟩ := fourPart1235_13_bounds z d hd0 hl hu
  obtain ⟨h14l, h14u⟩ := fourPart1235_14_bounds z d hd0 hl hu
  obtain ⟨h15l, h15u⟩ := fourPart1235_15_bounds z d hd0 hl hu
  have hp0 : 30517578125000000000000000000000000000000000000000000000000000000000000 * d ^ 0 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 15
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 0)
    norm_num at hmul
    nlinarith only [hmul]
  have hp1 : 610351562500000000000000000000000000000000000000000000000000000000 * d ^ 1 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 14
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 1)
    norm_num at hmul
    nlinarith only [hmul]
  have hp2 : 12207031250000000000000000000000000000000000000000000000000000 * d ^ 2 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 13
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 2)
    norm_num at hmul
    nlinarith only [hmul]
  have hp3 : 244140625000000000000000000000000000000000000000000000000 * d ^ 3 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 12
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 3)
    norm_num at hmul
    nlinarith only [hmul]
  have hp4 : 4882812500000000000000000000000000000000000000000000 * d ^ 4 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 11
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 4)
    norm_num at hmul
    nlinarith only [hmul]
  have hp5 : 97656250000000000000000000000000000000000000000 * d ^ 5 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 10
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 5)
    norm_num at hmul
    nlinarith only [hmul]
  have hp6 : 1953125000000000000000000000000000000000000 * d ^ 6 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 9
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 6)
    norm_num at hmul
    nlinarith only [hmul]
  have hp7 : 39062500000000000000000000000000000000 * d ^ 7 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 8
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 7)
    norm_num at hmul
    nlinarith only [hmul]
  have hp8 : 781250000000000000000000000000000 * d ^ 8 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 7
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 8)
    norm_num at hmul
    nlinarith only [hmul]
  have hp9 : 15625000000000000000000000000 * d ^ 9 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 6
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 9)
    norm_num at hmul
    nlinarith only [hmul]
  have hp10 : 312500000000000000000000 * d ^ 10 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 5
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 10)
    norm_num at hmul
    nlinarith only [hmul]
  have hp11 : 6250000000000000000 * d ^ 11 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 4
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 11)
    norm_num at hmul
    nlinarith only [hmul]
  have hp12 : 125000000000000 * d ^ 12 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 3
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 12)
    norm_num at hmul
    nlinarith only [hmul]
  have hp13 : 2500000000 * d ^ 13 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 13)
    norm_num at hmul
    nlinarith only [hmul]
  have hp14 : 50000 * d ^ 14 ≤ d ^ 15 := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 1
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 14)
    norm_num at hmul
    nlinarith only [hmul]
  have hdD : 0 < d ^ 15 := by positivity
  have hid : auxiliary1235 z d = fourPart1235_0 z d + fourPart1235_1 z d + fourPart1235_2 z d + fourPart1235_3 z d + fourPart1235_4 z d + fourPart1235_5 z d + fourPart1235_6 z d + fourPart1235_7 z d + fourPart1235_8 z d + fourPart1235_9 z d + fourPart1235_10 z d + fourPart1235_11 z d + fourPart1235_12 z d + fourPart1235_13 z d + fourPart1235_14 z d + fourPart1235_15 z d := by
    unfold auxiliary1235 fourPart1235_0 fourPart1235_1 fourPart1235_2 fourPart1235_3 fourPart1235_4 fourPart1235_5 fourPart1235_6 fourPart1235_7 fourPart1235_8 fourPart1235_9 fourPart1235_10 fourPart1235_11 fourPart1235_12 fourPart1235_13 fourPart1235_14 fourPart1235_15
    ring
  rw [hid]
  norm_num at h0l h0u
  constructor <;> nlinarith only [h0l, h0u, h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u, h5l, h5u, h6l, h6u, h7l, h7u, h8l, h8u, h9l, h9u, h10l, h10u, h11l, h11u, h12l, h12u, h13l, h13u, h14l, h14u, h15l, h15u, hp0, hp1, hp2, hp3, hp4, hp5, hp6, hp7, hp8, hp9, hp10, hp11, hp12, hp13, hp14, hdD]

/-- info: 'B686Round6AProbe.auxiliary1235_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1235_bounds
end B686Round6AProbe
