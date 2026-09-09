import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block216

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18963421, 18963587, 18963761, 18963911, 18964093, 18964277, 18964459, 18964633, 18964817, 18964997, 18965171, 18965347, 18965519, 18965677, 18965839, 18966019]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18963281 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18963281 18966019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18963281) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18966197, 18966371, 18966539, 18966719, 18966901, 18967037, 18967217, 18967391, 18967549, 18967727, 18967891, 18968069, 18968231, 18968381, 18968561, 18968701]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18966019 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18966019 18968701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18966019) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18968881, 18969047, 18969221, 18969403, 18969583, 18969767, 18969949, 18970121, 18970297, 18970459, 18970631, 18970811, 18970967, 18971149, 18971317, 18971497]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18968701 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18968701 18971497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18968701) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18971681, 18971857, 18972029, 18972199, 18972383, 18972563, 18972727, 18972893, 18973069, 18973249, 18973433, 18973589, 18973771, 18973949, 18974129, 18974297]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18971497 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18971497 18974297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18971497) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18974441, 18974623, 18974807, 18974987, 18975163, 18975343, 18975511, 18975679, 18975833, 18975997, 18976171, 18976351, 18976513, 18976651, 18976831, 18977011]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18974297 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18974297 18977011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18974297) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18977171, 18977353, 18977533, 18977639, 18977813, 18977963, 18978119, 18978301, 18978481, 18978653, 18978811, 18978989, 18979171, 18979349, 18979523, 18979703]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18977011 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18977011 18979703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18977011) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18979817, 18979999, 18980167, 18980341, 18980503, 18980683, 18980839, 18981023, 18981199, 18981377, 18981559, 18981731, 18981901, 18982043, 18982207, 18982391]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18979703 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18979703 18982391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18979703) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18982573, 18982709, 18982883, 18983059, 18983243, 18983423, 18983581, 18983761, 18983929, 18984109, 18984281, 18984463, 18984643, 18984817, 18984991, 18985163]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18982391 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18982391 18985163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18982391) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18985339, 18985513, 18985679, 18985859, 18986029, 18986207, 18986381, 18986533, 18986699, 18986873, 18987053, 18987233, 18987391, 18987569, 18987739, 18987907]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18985163 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18985163 18987907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18985163) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18988091, 18988273, 18988421, 18988603, 18988769, 18988943, 18989071, 18989249, 18989431, 18989587, 18989767, 18989947, 18990113, 18990277, 18990451, 18990623]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18987907 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18987907 18990623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18987907) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18990793, 18990973, 18991157, 18991319, 18991457, 18991639, 18991793, 18991969, 18992123, 18992299, 18992473, 18992657, 18992833, 18993017, 18993181, 18993343]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18990623 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18990623 18993343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18990623) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18993523, 18993697, 18993881, 18994051, 18994201, 18994379, 18994561, 18994741, 18994907, 18995089, 18995233, 18995399, 18995533, 18995707, 18995891, 18996049]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18993343 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18993343 18996049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18993343) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18996233, 18996403, 18996587, 18996767, 18996917, 18997087, 18997249, 18997427, 18997607, 18997757, 18997919, 18998101, 18998281, 18998411, 18998593, 18998773]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18996049 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18996049 18998773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18996049) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18998957, 18999133, 18999317, 18999473, 18999653, 18999821, 18999997, 19000153, 19000291, 19000469, 19000637, 19000811, 19000991, 19001153, 19001329, 19001503]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18998773 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18998773 19001503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18998773) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19001687, 19001839, 19002019, 19002197, 19002353, 19002521, 19002691, 19002857, 19003007, 19003189, 19003373, 19003511, 19003669, 19003811, 19003981, 19004119]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19001503 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19001503 19004119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19001503) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19004291, 19004471, 19004653, 19004837, 19005001, 19005163, 19005341, 19005523, 19005703, 19005863, 19006037, 19006159, 19006333, 19006469, 19006633, 19006811]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19004119 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19004119 19006811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19004119) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19006987, 19007171, 19007347, 19007509, 19007689, 19007873, 19008043, 19008221, 19008403, 19008559, 19008733, 19008917, 19009097, 19009261, 19009433, 19009607]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19006811 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19006811 19009607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19006811) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19009787, 19009967, 19010143, 19010309, 19010479, 19010653, 19010809, 19010993, 19011163, 19011337, 19011497, 19011679, 19011859, 19012039, 19012199, 19012381]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19009607 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19009607 19012381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19009607) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19012519, 19012687, 19012871, 19013039, 19013221, 19013383, 19013567, 19013749, 19013933, 19014103, 19014277, 19014451, 19014631, 19014799, 19014979, 19015133]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19012381 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19012381 19015133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19012381) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19015277, 19015459, 19015643, 19015771, 19015949, 19016119, 19016297, 19016479, 19016651, 19016819, 19016971, 19017151, 19017331, 19017511, 19017683, 19017857]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19015133 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19015133 19017857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19015133) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19018009, 19018163, 19018339, 19018507, 19018669, 19018843, 19019017, 19019197, 19019353, 19019503, 19019687, 19019863, 19020041, 19020203, 19020373, 19020541]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19017857 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19017857 19020541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19017857) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19020709, 19020889, 19021063, 19021199, 19021357, 19021531, 19021697, 19021843, 19022009, 19022191, 19022359, 19022519, 19022701, 19022849, 19023031, 19023197]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19020541 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19020541 19023197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19020541) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19023371, 19023551, 19023733, 19023899, 19024081, 19024249, 19024433, 19024591, 19024769, 19024949, 19025101, 19025267, 19025443, 19025627, 19025801, 19025977]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19023197 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19023197 19025977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19023197) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19026131, 19026307, 19026487, 19026661, 19026823, 19027007, 19027147, 19027313, 19027483, 19027651, 19027817, 19027979, 19028161, 19028333, 19028507, 19028689]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19025977 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19025977 19028689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19025977) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19028827, 19029007, 19029187, 19029337, 19029503, 19029679, 19029853, 19030031, 19030213, 19030387, 19030549, 19030733, 19030877, 19031057, 19031239, 19031423]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19028689 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19028689 19031423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19028689) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19031599, 19031773, 19031951, 19032131, 19032313, 19032463, 19032641, 19032821, 19032971, 19033153, 19033331, 19033513, 19033697, 19033879, 19034053, 19034221]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19031423 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19031423 19034221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19031423) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19034401, 19034573, 19034749, 19034929, 19035103, 19035259, 19035413, 19035551, 19035727, 19035899, 19036067, 19036219, 19036399, 19036559, 19036723, 19036891]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19034221 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19034221 19036891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19034221) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19037071, 19037251, 19037423, 19037587, 19037771, 19037947, 19038119, 19038281, 19038451, 19038631, 19038797, 19038973, 19039157, 19039327, 19039511, 19039679]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19036891 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19036891 19039679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19036891) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19039829, 19040009, 19040191, 19040363, 19040521, 19040689, 19040843, 19041017, 19041119, 19041299, 19041481, 19041653, 19041809, 19041949, 19042103, 19042267]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19039679 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19039679 19042267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19039679) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19042451, 19042619, 19042799, 19042979, 19043159, 19043341, 19043513, 19043671, 19043837, 19044019, 19044191, 19044373, 19044547, 19044719, 19044901, 19045079]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19042267 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19042267 19045079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19042267) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19045231, 19045349, 19045531, 19045703, 19045843, 19046021, 19046191, 19046351, 19046519, 19046669, 19046849, 19047019, 19047199, 19047349, 19047491, 19047673]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19045079 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19045079 19047673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19045079) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19047851, 19048027, 19048199, 19048373, 19048553, 19048727, 19048901, 19049071, 19049249, 19049431, 19049587, 19049759, 19049941, 19050107, 19050289, 19050467]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19047673 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19047673 19050467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19047673) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18963281 18968701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18963281)
    (mid := 18966019) (hi := 18968701) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18968701 18974297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18968701)
    (mid := 18971497) (hi := 18974297) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18974297 18979703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18974297)
    (mid := 18977011) (hi := 18979703) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18979703 18985163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18979703)
    (mid := 18982391) (hi := 18985163) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18985163 18990623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18985163)
    (mid := 18987907) (hi := 18990623) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18990623 18996049 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18990623)
    (mid := 18993343) (hi := 18996049) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18996049 19001503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18996049)
    (mid := 18998773) (hi := 19001503) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19001503 19006811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19001503)
    (mid := 19004119) (hi := 19006811) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19006811 19012381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19006811)
    (mid := 19009607) (hi := 19012381) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19012381 19017857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19012381)
    (mid := 19015133) (hi := 19017857) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19017857 19023197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19017857)
    (mid := 19020541) (hi := 19023197) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19023197 19028689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19023197)
    (mid := 19025977) (hi := 19028689) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19028689 19034221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19028689)
    (mid := 19031423) (hi := 19034221) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19034221 19039679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19034221)
    (mid := 19036891) (hi := 19039679) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19039679 19045079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19039679)
    (mid := 19042267) (hi := 19045079) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19045079 19050467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19045079)
    (mid := 19047673) (hi := 19050467) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18963281 18974297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18963281)
    (mid := 18968701) (hi := 18974297) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18974297 18985163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18974297)
    (mid := 18979703) (hi := 18985163) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18985163 18996049 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18985163)
    (mid := 18990623) (hi := 18996049) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18996049 19006811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18996049)
    (mid := 19001503) (hi := 19006811) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19006811 19017857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19006811)
    (mid := 19012381) (hi := 19017857) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19017857 19028689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19017857)
    (mid := 19023197) (hi := 19028689) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19028689 19039679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19028689)
    (mid := 19034221) (hi := 19039679) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19039679 19050467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19039679)
    (mid := 19045079) (hi := 19050467) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18963281 18985163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18963281)
    (mid := 18974297) (hi := 18985163) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18985163 19006811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18985163)
    (mid := 18996049) (hi := 19006811) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19006811 19028689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19006811)
    (mid := 19017857) (hi := 19028689) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19028689 19050467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19028689)
    (mid := 19039679) (hi := 19050467) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18963281 19006811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18963281)
    (mid := 18985163) (hi := 19006811) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19006811 19050467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19006811)
    (mid := 19028689) (hi := 19050467) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18963281 19050467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18963281)
    (mid := 19006811) (hi := 19050467) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18963281 19050467 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block216

#print axioms B699MiddleExtension.PrimorialBlocks.Block216.joined
