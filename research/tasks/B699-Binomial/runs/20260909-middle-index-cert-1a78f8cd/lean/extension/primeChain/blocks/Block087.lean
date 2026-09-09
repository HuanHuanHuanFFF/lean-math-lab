import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block087

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7677823, 7678003, 7678183, 7678367, 7678523, 7678681, 7678861, 7679039, 7679213, 7679389, 7679561, 7679719, 7679887, 7680067, 7680251, 7680419]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7677679 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7677679 7680419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7677679) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7680581, 7680763, 7680929, 7681109, 7681283, 7681417, 7681591, 7681771, 7681939, 7682119, 7682281, 7682431, 7682581, 7682749, 7682923, 7683107]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7680419 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7680419 7683107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7680419) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7683287, 7683421, 7683601, 7683773, 7683943, 7684091, 7684273, 7684447, 7684619, 7684801, 7684979, 7685149, 7685297, 7685467, 7685651, 7685833]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7683107 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7683107 7685833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7683107) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7686017, 7686199, 7686331, 7686449, 7686631, 7686751, 7686923, 7687103, 7687283, 7687447, 7687627, 7687811, 7687993, 7688173, 7688333, 7688503]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7685833 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7685833 7688503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7685833) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7688687, 7688861, 7689043, 7689223, 7689401, 7689571, 7689743, 7689923, 7690099, 7690283, 7690457, 7690637, 7690807, 7690981, 7691147, 7691329]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7688503 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7688503 7691329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7688503) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7691507, 7691669, 7691851, 7692019, 7692193, 7692343, 7692491, 7692661, 7692827, 7693009, 7693183, 7693351, 7693531, 7693709, 7693867, 7694051]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7691329 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7691329 7694051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7691329) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7694233, 7694389, 7694569, 7694747, 7694923, 7695097, 7695269, 7695421, 7695601, 7695769, 7695949, 7696133, 7696303, 7696483, 7696657, 7696841]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7694051 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7694051 7696841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7694051) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7697017, 7697189, 7697363, 7697539, 7697713, 7697881, 7698049, 7698193, 7698377, 7698547, 7698731, 7698913, 7699073, 7699247, 7699423, 7699607]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7696841 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7696841 7699607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7696841) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7699789, 7699973, 7700131, 7700309, 7700489, 7700659, 7700839, 7701019, 7701191, 7701347, 7701523, 7701689, 7701871, 7702001, 7702153, 7702333]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7699607 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7699607 7702333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7699607) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7702517, 7702687, 7702843, 7703027, 7703173, 7703351, 7703513, 7703681, 7703851, 7704017, 7704173, 7704341, 7704511, 7704677, 7704841, 7705003]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7702333 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7702333 7705003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7702333) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7705183, 7705367, 7705519, 7705699, 7705883, 7706063, 7706239, 7706399, 7706579, 7706759, 7706929, 7707113, 7707283, 7707439, 7707607, 7707779]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7705003 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7705003 7707779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7705003) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7707943, 7708117, 7708301, 7708483, 7708651, 7708823, 7708991, 7709161, 7709329, 7709501, 7709683, 7709861, 7710013, 7710193, 7710377, 7710559]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7707779 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7707779 7710559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7707779) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7710743, 7710907, 7711087, 7711271, 7711453, 7711637, 7711819, 7711987, 7712171, 7712323, 7712503, 7712641, 7712821, 7712989, 7713163, 7713317]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7710559 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7710559 7713317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7710559) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7713491, 7713661, 7713841, 7714001, 7714183, 7714367, 7714543, 7714699, 7714879, 7715053, 7715179, 7715359, 7715483, 7715657, 7715837, 7716019]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7713317 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7713317 7716019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7713317) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7716199, 7716383, 7716563, 7716743, 7716913, 7717063, 7717247, 7717429, 7717607, 7717789, 7717951, 7718131, 7718309, 7718483, 7718653, 7718813]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7716019 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7716019 7718813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7716019) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7718993, 7719167, 7719337, 7719511, 7719689, 7719869, 7720051, 7720211, 7720393, 7720561, 7720729, 7720903, 7721071, 7721251, 7721423, 7721521]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7718813 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7718813 7721521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7718813) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7721671, 7721849, 7722017, 7722191, 7722373, 7722557, 7722739, 7722919, 7723099, 7723283, 7723459, 7723643, 7723817, 7723999, 7724131, 7724293]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7721521 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7721521 7724293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7721521) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7724473, 7724627, 7724807, 7724957, 7725131, 7725307, 7725469, 7725649, 7725821, 7726003, 7726157, 7726337, 7726489, 7726669, 7726837, 7727017]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7724293 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7724293 7727017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7724293) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7727201, 7727381, 7727521, 7727689, 7727869, 7728053, 7728221, 7728403, 7728571, 7728739, 7728923, 7729097, 7729277, 7729451, 7729621, 7729763]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7727017 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7727017 7729763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7727017) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7729937, 7730113, 7730297, 7730479, 7730651, 7730819, 7730993, 7731169, 7731337, 7731517, 7731671, 7731851, 7732027, 7732211, 7732391, 7732567]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7729763 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7729763 7732567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7729763) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7732729, 7732891, 7733069, 7733251, 7733431, 7733611, 7733771, 7733951, 7734127, 7734301, 7734457, 7734637, 7734821, 7734997, 7735181, 7735363]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7732567 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7732567 7735363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7732567) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7735543, 7735711, 7735891, 7736063, 7736213, 7736389, 7736567, 7736749, 7736893, 7737071, 7737241, 7737419, 7737557, 7737739, 7737859, 7738037]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7735363 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7735363 7738037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7735363) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7738207, 7738391, 7738559, 7738739, 7738889, 7739051, 7739231, 7739411, 7739587, 7739759, 7739929, 7740097, 7740281, 7740463, 7740647, 7740791]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7738037 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7738037 7740791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7738037) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7740913, 7741093, 7741277, 7741451, 7741633, 7741807, 7741967, 7742149, 7742321, 7742477, 7742641, 7742807, 7742957, 7743133, 7743233, 7743409]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7740791 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7740791 7743409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7740791) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7743587, 7743737, 7743919, 7744091, 7744273, 7744453, 7744631, 7744783, 7744963, 7745147, 7745323, 7745447, 7745593, 7745767, 7745951, 7746133]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7743409 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7743409 7746133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7743409) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7746301, 7746461, 7746617, 7746793, 7746967, 7747123, 7747301, 7747477, 7747643, 7747819, 7748003, 7748177, 7748359, 7748537, 7748717, 7748899]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7746133 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7746133 7748899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7746133) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7749067, 7749251, 7749403, 7749571, 7749751, 7749913, 7750097, 7750273, 7750439, 7750597, 7750753, 7750913, 7751089, 7751273, 7751441, 7751617]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7748899 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7748899 7751617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7748899) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7751789, 7751969, 7752137, 7752319, 7752473, 7752653, 7752827, 7752991, 7753171, 7753337, 7753517, 7753679, 7753849, 7754017, 7754189, 7754353]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7751617 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7751617 7754353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7751617) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7754507, 7754689, 7754843, 7755017, 7755199, 7755379, 7755563, 7755721, 7755889, 7756069, 7756247, 7756429, 7756597, 7756781, 7756961, 7757137]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7754353 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7754353 7757137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7754353) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7757311, 7757483, 7757653, 7757809, 7757987, 7758161, 7758343, 7758523, 7758701, 7758871, 7759051, 7759231, 7759387, 7759547, 7759723, 7759897]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7757137 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7757137 7759897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7757137) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7760063, 7760243, 7760413, 7760579, 7760761, 7760933, 7761107, 7761289, 7761451, 7761617, 7761799, 7761967, 7762141, 7762301, 7762483, 7762639]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7759897 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7759897 7762639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7759897) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7762789, 7762967, 7763137, 7763317, 7763501, 7763683, 7763867, 7764049, 7764221, 7764403, 7764527, 7764707, 7764881, 7765019, 7765201, 7765343]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7762639 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7762639 7765343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7762639) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7677679 7683107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7677679)
    (mid := 7680419) (hi := 7683107) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7683107 7688503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7683107)
    (mid := 7685833) (hi := 7688503) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7688503 7694051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7688503)
    (mid := 7691329) (hi := 7694051) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7694051 7699607 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7694051)
    (mid := 7696841) (hi := 7699607) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7699607 7705003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7699607)
    (mid := 7702333) (hi := 7705003) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7705003 7710559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7705003)
    (mid := 7707779) (hi := 7710559) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7710559 7716019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7710559)
    (mid := 7713317) (hi := 7716019) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7716019 7721521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7716019)
    (mid := 7718813) (hi := 7721521) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7721521 7727017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7721521)
    (mid := 7724293) (hi := 7727017) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7727017 7732567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7727017)
    (mid := 7729763) (hi := 7732567) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7732567 7738037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7732567)
    (mid := 7735363) (hi := 7738037) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7738037 7743409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7738037)
    (mid := 7740791) (hi := 7743409) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7743409 7748899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7743409)
    (mid := 7746133) (hi := 7748899) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7748899 7754353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7748899)
    (mid := 7751617) (hi := 7754353) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7754353 7759897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7754353)
    (mid := 7757137) (hi := 7759897) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7759897 7765343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7759897)
    (mid := 7762639) (hi := 7765343) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7677679 7688503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7677679)
    (mid := 7683107) (hi := 7688503) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7688503 7699607 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7688503)
    (mid := 7694051) (hi := 7699607) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7699607 7710559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7699607)
    (mid := 7705003) (hi := 7710559) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7710559 7721521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7710559)
    (mid := 7716019) (hi := 7721521) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7721521 7732567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7721521)
    (mid := 7727017) (hi := 7732567) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7732567 7743409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7732567)
    (mid := 7738037) (hi := 7743409) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7743409 7754353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7743409)
    (mid := 7748899) (hi := 7754353) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7754353 7765343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7754353)
    (mid := 7759897) (hi := 7765343) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7677679 7699607 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7677679)
    (mid := 7688503) (hi := 7699607) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7699607 7721521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7699607)
    (mid := 7710559) (hi := 7721521) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7721521 7743409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7721521)
    (mid := 7732567) (hi := 7743409) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7743409 7765343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7743409)
    (mid := 7754353) (hi := 7765343) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7677679 7721521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7677679)
    (mid := 7699607) (hi := 7721521) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7721521 7765343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7721521)
    (mid := 7743409) (hi := 7765343) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7677679 7765343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7677679)
    (mid := 7721521) (hi := 7765343) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7677679 7765343 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block087

#print axioms B699MiddleExtension.PrimorialBlocks.Block087.joined
