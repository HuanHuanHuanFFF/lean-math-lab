import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block195

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17129069, 17129243, 17129419, 17129599, 17129767, 17129947, 17130109, 17130277, 17130437, 17130613, 17130797, 17130973, 17131133, 17131277, 17131459, 17131643]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17128897 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17128897 17131643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17128897) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17131823, 17131993, 17132161, 17132333, 17132501, 17132671, 17132831, 17132993, 17133169, 17133353, 17133503, 17133679, 17133847, 17134027, 17134207, 17134387]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17131643 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17131643 17134387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17131643) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17134567, 17134729, 17134913, 17135057, 17135233, 17135413, 17135579, 17135749, 17135903, 17136029, 17136199, 17136377, 17136557, 17136737, 17136907, 17137067]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17134387 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17134387 17137067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17134387) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17137249, 17137409, 17137577, 17137759, 17137933, 17138117, 17138299, 17138483, 17138647, 17138831, 17138959, 17139139, 17139313, 17139481, 17139649, 17139827]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17137067 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17137067 17139827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17137067) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17139989, 17140159, 17140339, 17140517, 17140691, 17140873, 17141053, 17141237, 17141353, 17141533, 17141717, 17141893, 17142053, 17142173, 17142347, 17142497]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17139827 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17139827 17142497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17139827) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17142677, 17142859, 17143039, 17143201, 17143381, 17143561, 17143741, 17143921, 17144093, 17144263, 17144419, 17144587, 17144759, 17144927, 17145103, 17145287]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17142497 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17142497 17145287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17142497) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17145461, 17145631, 17145811, 17145983, 17146141, 17146309, 17146483, 17146667, 17146849, 17147027, 17147197, 17147357, 17147531, 17147693, 17147869, 17148023]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17145287 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17145287 17148023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17145287) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17148191, 17148361, 17148539, 17148721, 17148899, 17149081, 17149261, 17149423, 17149607, 17149777, 17149919, 17150087, 17150257, 17150411, 17150563, 17150743]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17148023 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17148023 17150743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17148023) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17150921, 17151097, 17151229, 17151377, 17151559, 17151733, 17151907, 17152081, 17152259, 17152441, 17152621, 17152799, 17152981, 17153159, 17153341, 17153501]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17150743 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17150743 17153501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17150743) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17153651, 17153803, 17153987, 17154157, 17154329, 17154509, 17154691, 17154833, 17155009, 17155163, 17155337, 17155513, 17155687, 17155871, 17156053, 17156231]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17153501 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17153501 17156231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17153501) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17156407, 17156591, 17156773, 17156941, 17157109, 17157289, 17157461, 17157629, 17157781, 17157953, 17158133, 17158307, 17158489, 17158657, 17158837, 17159017]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17156231 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17156231 17159017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17156231) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17159201, 17159377, 17159551, 17159731, 17159887, 17160049, 17160233, 17160383, 17160541, 17160719, 17160893, 17161057, 17161217, 17161399, 17161583, 17161763]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17159017 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17159017 17161763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17159017) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17161943, 17162099, 17162281, 17162459, 17162611, 17162791, 17162927, 17163109, 17163281, 17163463, 17163617, 17163799, 17163961, 17164123, 17164291, 17164471]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17161763 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17161763 17164471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17161763) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17164603, 17164757, 17164909, 17165081, 17165263, 17165441, 17165623, 17165803, 17165969, 17166151, 17166323, 17166491, 17166661, 17166827, 17167009, 17167193]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17164471 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17164471 17167193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17164471) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17167373, 17167547, 17167723, 17167897, 17168057, 17168231, 17168401, 17168579, 17168719, 17168897, 17169077, 17169223, 17169401, 17169583, 17169751, 17169923]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17167193 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17167193 17169923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17167193) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17170099, 17170271, 17170453, 17170633, 17170793, 17170973, 17171153, 17171321, 17171503, 17171653, 17171837, 17172019, 17172163, 17172319, 17172479, 17172653]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17169923 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17169923 17172653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17169923) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17172833, 17172943, 17173073, 17173253, 17173421, 17173601, 17173769, 17173951, 17174099, 17174257, 17174431, 17174603, 17174761, 17174939, 17175121, 17175281]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17172653 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17172653 17175281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17172653) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17175463, 17175629, 17175787, 17175947, 17176127, 17176309, 17176483, 17176657, 17176813, 17176981, 17177161, 17177341, 17177507, 17177659, 17177821, 17178001]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17175281 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17175281 17178001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17175281) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17178163, 17178341, 17178523, 17178703, 17178859, 17179039, 17179219, 17179399, 17179583, 17179763, 17179927, 17180089, 17180227, 17180411, 17180593, 17180771]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17178001 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17178001 17180771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17178001) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17180939, 17181113, 17181289, 17181469, 17181623, 17181799, 17181973, 17182147, 17182309, 17182481, 17182609, 17182793, 17182969, 17183149, 17183321, 17183489]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17180771 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17180771 17183489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17180771) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17183653, 17183833, 17183963, 17184131, 17184313, 17184487, 17184653, 17184833, 17185013, 17185187, 17185369, 17185547, 17185717, 17185877, 17186053, 17186209]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17183489 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17183489 17186209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17183489) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17186353, 17186489, 17186671, 17186839, 17186993, 17187173, 17187341, 17187503, 17187683, 17187851, 17188007, 17188189, 17188349, 17188531, 17188709, 17188861]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17186209 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17186209 17188861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17186209) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17188999, 17189177, 17189351, 17189519, 17189693, 17189869, 17190053, 17190233, 17190413, 17190581, 17190751, 17190923, 17191091, 17191249, 17191429, 17191591]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17188861 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17188861 17191591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17188861) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17191753, 17191931, 17192113, 17192291, 17192467, 17192641, 17192821, 17192999, 17193173, 17193353, 17193467, 17193601, 17193773, 17193941, 17194117, 17194301]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17191591 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17191591 17194301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17191591) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17194481, 17194649, 17194811, 17194963, 17195131, 17195309, 17195461, 17195641, 17195809, 17195989, 17196149, 17196329, 17196511, 17196677, 17196859, 17197043]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17194301 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17194301 17197043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17194301) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17197211, 17197393, 17197577, 17197753, 17197927, 17198017, 17198171, 17198353, 17198507, 17198689, 17198869, 17199041, 17199209, 17199341, 17199493, 17199673]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17197043 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17197043 17199673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17197043) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17199851, 17200003, 17200181, 17200363, 17200537, 17200699, 17200867, 17201039, 17201159, 17201341, 17201519, 17201693, 17201851, 17202007, 17202173, 17202347]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17199673 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17199673 17202347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17199673) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17202511, 17202683, 17202863, 17203013, 17203129, 17203297, 17203469, 17203621, 17203787, 17203961, 17204141, 17204321, 17204497, 17204657, 17204819, 17204947]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17202347 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17202347 17204947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17202347) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17205121, 17205277, 17205437, 17205611, 17205781, 17205941, 17206109, 17206289, 17206463, 17206633, 17206807, 17206939, 17207119, 17207303, 17207467, 17207651]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17204947 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17204947 17207651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17204947) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17207819, 17207989, 17208173, 17208349, 17208497, 17208677, 17208859, 17209039, 17209223, 17209397, 17209571, 17209739, 17209919, 17210099, 17210269, 17210441]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17207651 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17207651 17210441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17207651) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17210603, 17210777, 17210959, 17211127, 17211307, 17211451, 17211629, 17211811, 17211989, 17212163, 17212337, 17212519, 17212703, 17212883, 17213047, 17213227]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17210441 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17210441 17213227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17210441) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17213387, 17213569, 17213747, 17213929, 17214103, 17214277, 17214427, 17214601, 17214773, 17214943, 17215117, 17215267, 17215439, 17215579, 17215741, 17215921]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17213227 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17213227 17215921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17213227) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17128897 17134387 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17128897)
    (mid := 17131643) (hi := 17134387) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17134387 17139827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17134387)
    (mid := 17137067) (hi := 17139827) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17139827 17145287 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17139827)
    (mid := 17142497) (hi := 17145287) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17145287 17150743 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17145287)
    (mid := 17148023) (hi := 17150743) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17150743 17156231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17150743)
    (mid := 17153501) (hi := 17156231) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17156231 17161763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17156231)
    (mid := 17159017) (hi := 17161763) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17161763 17167193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17161763)
    (mid := 17164471) (hi := 17167193) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17167193 17172653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17167193)
    (mid := 17169923) (hi := 17172653) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17172653 17178001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17172653)
    (mid := 17175281) (hi := 17178001) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17178001 17183489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17178001)
    (mid := 17180771) (hi := 17183489) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17183489 17188861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17183489)
    (mid := 17186209) (hi := 17188861) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17188861 17194301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17188861)
    (mid := 17191591) (hi := 17194301) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17194301 17199673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17194301)
    (mid := 17197043) (hi := 17199673) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17199673 17204947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17199673)
    (mid := 17202347) (hi := 17204947) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17204947 17210441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17204947)
    (mid := 17207651) (hi := 17210441) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17210441 17215921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17210441)
    (mid := 17213227) (hi := 17215921) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17128897 17139827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17128897)
    (mid := 17134387) (hi := 17139827) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17139827 17150743 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17139827)
    (mid := 17145287) (hi := 17150743) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17150743 17161763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17150743)
    (mid := 17156231) (hi := 17161763) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17161763 17172653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17161763)
    (mid := 17167193) (hi := 17172653) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17172653 17183489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17172653)
    (mid := 17178001) (hi := 17183489) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17183489 17194301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17183489)
    (mid := 17188861) (hi := 17194301) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17194301 17204947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17194301)
    (mid := 17199673) (hi := 17204947) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17204947 17215921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17204947)
    (mid := 17210441) (hi := 17215921) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17128897 17150743 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17128897)
    (mid := 17139827) (hi := 17150743) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17150743 17172653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17150743)
    (mid := 17161763) (hi := 17172653) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17172653 17194301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17172653)
    (mid := 17183489) (hi := 17194301) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17194301 17215921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17194301)
    (mid := 17204947) (hi := 17215921) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17128897 17172653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17128897)
    (mid := 17150743) (hi := 17172653) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17172653 17215921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17172653)
    (mid := 17194301) (hi := 17215921) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17128897 17215921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17128897)
    (mid := 17172653) (hi := 17215921) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17128897 17215921 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block195

#print axioms B699MiddleExtension.PrimorialBlocks.Block195.joined
