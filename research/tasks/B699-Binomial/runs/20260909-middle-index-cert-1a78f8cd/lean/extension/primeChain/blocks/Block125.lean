import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block125

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11006777, 11006959, 11007127, 11007257, 11007439, 11007589, 11007757, 11007937, 11008117, 11008297, 11008477, 11008649, 11008831, 11008967, 11009147, 11009321]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11006659 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11006659 11009321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11006659) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11009501, 11009657, 11009837, 11010019, 11010187, 11010347, 11010529, 11010707, 11010871, 11011031, 11011211, 11011381, 11011523, 11011673, 11011853, 11012033]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11009321 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11009321 11012033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11009321) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11012213, 11012389, 11012567, 11012747, 11012927, 11013097, 11013271, 11013439, 11013623, 11013791, 11013973, 11014141, 11014291, 11014463, 11014637, 11014811]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11012033 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11012033 11014811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11012033) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11014987, 11015171, 11015351, 11015533, 11015717, 11015897, 11016059, 11016217, 11016367, 11016541, 11016667, 11016851, 11017033, 11017217, 11017373, 11017553]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11014811 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11014811 11017553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11014811) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11017733, 11017907, 11018089, 11018263, 11018429, 11018611, 11018767, 11018951, 11019133, 11019313, 11019497, 11019643, 11019817, 11020001, 11020181, 11020363]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11017553 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11017553 11020363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11017553) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11020543, 11020699, 11020861, 11021041, 11021183, 11021357, 11021533, 11021707, 11021891, 11022073, 11022257, 11022437, 11022619, 11022799, 11022967, 11023121]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11020363 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11020363 11023121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11020363) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11023291, 11023469, 11023651, 11023823, 11023997, 11024149, 11024311, 11024471, 11024647, 11024821, 11024999, 11025169, 11025347, 11025517, 11025691, 11025853]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11023121 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11023121 11025853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11023121) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11026033, 11026207, 11026373, 11026553, 11026733, 11026901, 11027069, 11027243, 11027417, 11027561, 11027717, 11027899, 11028049, 11028211, 11028389, 11028551]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11025853 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11025853 11028551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11025853) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11028709, 11028893, 11029043, 11029223, 11029393, 11029573, 11029751, 11029927, 11030111, 11030293, 11030471, 11030651, 11030827, 11030989, 11031169, 11031313]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11028551 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11028551 11031313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11028551) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11031497, 11031679, 11031859, 11032039, 11032223, 11032397, 11032579, 11032741, 11032909, 11033047, 11033227, 11033411, 11033591, 11033749, 11033921, 11034091]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11031313 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11031313 11034091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11031313) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11034271, 11034451, 11034629, 11034811, 11034983, 11035153, 11035319, 11035489, 11035667, 11035831, 11035991, 11036147, 11036329, 11036507, 11036687, 11036833]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11034091 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11034091 11036833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11034091) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11036983, 11037167, 11037349, 11037529, 11037703, 11037883, 11038063, 11038243, 11038409, 11038579, 11038739, 11038903, 11039087, 11039269, 11039453, 11039621]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11036833 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11036833 11039621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11036833) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11039771, 11039933, 11040103, 11040241, 11040413, 11040587, 11040761, 11040941, 11041111, 11041273, 11041441, 11041601, 11041781, 11041957, 11042137, 11042309]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11039621 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11039621 11042309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11039621) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11042453, 11042627, 11042807, 11042989, 11043157, 11043341, 11043517, 11043691, 11043869, 11044043, 11044223, 11044403, 11044573, 11044729, 11044889, 11045051]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11042309 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11042309 11045051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11042309) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11045191, 11045371, 11045521, 11045659, 11045843, 11046023, 11046197, 11046377, 11046559, 11046703, 11046887, 11047063, 11047247, 11047411, 11047583, 11047763]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11045051 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11045051 11047763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11045051) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11047931, 11048069, 11048251, 11048423, 11048599, 11048749, 11048923, 11049079, 11049257, 11049433, 11049611, 11049793, 11049977, 11050147, 11050313, 11050489]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11047763 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11047763 11050489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11047763) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11050661, 11050843, 11051023, 11051203, 11051357, 11051527, 11051681, 11051857, 11052017, 11052199, 11052383, 11052563, 11052731, 11052911, 11053073, 11053253]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11050489 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11050489 11053253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11050489) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11053433, 11053613, 11053793, 11053957, 11054123, 11054287, 11054441, 11054623, 11054803, 11054987, 11055167, 11055349, 11055533, 11055713, 11055887, 11056051]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11053253 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11053253 11056051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11053253) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11056217, 11056387, 11056561, 11056733, 11056909, 11057083, 11057261, 11057437, 11057621, 11057777, 11057953, 11058127, 11058287, 11058457, 11058637, 11058797]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11056051 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11056051 11058797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11056051) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11058977, 11059141, 11059313, 11059493, 11059661, 11059837, 11059973, 11060143, 11060321, 11060501, 11060683, 11060849, 11061031, 11061199, 11061377, 11061559]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11058797 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11058797 11061559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11058797) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11061727, 11061887, 11062069, 11062243, 11062421, 11062591, 11062729, 11062897, 11063057, 11063233, 11063417, 11063581, 11063749, 11063933, 11064103, 11064281]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11061559 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11061559 11064281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11061559) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11064437, 11064619, 11064797, 11064971, 11065133, 11065309, 11065493, 11065673, 11065843, 11066021, 11066183, 11066359, 11066543, 11066717, 11066899, 11067083]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11064281 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11064281 11067083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11064281) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11067233, 11067317, 11067491, 11067673, 11067857, 11068039, 11068201, 11068381, 11068559, 11068741, 11068919, 11069099, 11069281, 11069459, 11069629, 11069803]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11067083 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11067083 11069803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11067083) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11069983, 11070161, 11070329, 11070469, 11070649, 11070827, 11071009, 11071187, 11071363, 11071537, 11071703, 11071883, 11072063, 11072227, 11072381, 11072557]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11069803 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11069803 11072557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11069803) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11072717, 11072891, 11073071, 11073253, 11073407, 11073583, 11073763, 11073947, 11074103, 11074279, 11074451, 11074621, 11074801, 11074981, 11075161, 11075333]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11072557 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11072557 11075333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11072557) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11075507, 11075683, 11075861, 11076017, 11076199, 11076383, 11076557, 11076733, 11076917, 11077069, 11077249, 11077433, 11077607, 11077777, 11077949, 11078117]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11075333 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11075333 11078117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11075333) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11078297, 11078471, 11078647, 11078827, 11079007, 11079163, 11079347, 11079511, 11079689, 11079839, 11080009, 11080193, 11080367, 11080543, 11080721, 11080859]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11078117 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11078117 11080859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11078117) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11081033, 11081209, 11081387, 11081563, 11081743, 11081923, 11082103, 11082257, 11082397, 11082581, 11082761, 11082937, 11083103, 11083283, 11083453, 11083627]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11080859 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11080859 11083627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11080859) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11083801, 11083967, 11084141, 11084317, 11084477, 11084659, 11084803, 11084951, 11085121, 11085253, 11085433, 11085611, 11085791, 11085973, 11086133, 11086301]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11083627 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11083627 11086301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11083627) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11086477, 11086657, 11086841, 11086993, 11087171, 11087341, 11087513, 11087669, 11087837, 11088019, 11088157, 11088313, 11088463, 11088631, 11088769, 11088949]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11086301 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11086301 11088949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11086301) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11089123, 11089303, 11089487, 11089669, 11089843, 11089999, 11090179, 11090363, 11090503, 11090687, 11090831, 11091011, 11091187, 11091371, 11091551, 11091697]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11088949 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11088949 11091697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11088949) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11091869, 11092033, 11092201, 11092373, 11092553, 11092733, 11092909, 11093087, 11093261, 11093437, 11093609, 11093791, 11093933, 11094113, 11094289, 11094431]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11091697 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11091697 11094431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11091697) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11006659 11012033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11006659)
    (mid := 11009321) (hi := 11012033) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11012033 11017553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11012033)
    (mid := 11014811) (hi := 11017553) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11017553 11023121 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11017553)
    (mid := 11020363) (hi := 11023121) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11023121 11028551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11023121)
    (mid := 11025853) (hi := 11028551) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11028551 11034091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11028551)
    (mid := 11031313) (hi := 11034091) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11034091 11039621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11034091)
    (mid := 11036833) (hi := 11039621) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11039621 11045051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11039621)
    (mid := 11042309) (hi := 11045051) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11045051 11050489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11045051)
    (mid := 11047763) (hi := 11050489) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11050489 11056051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11050489)
    (mid := 11053253) (hi := 11056051) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11056051 11061559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11056051)
    (mid := 11058797) (hi := 11061559) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11061559 11067083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11061559)
    (mid := 11064281) (hi := 11067083) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11067083 11072557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11067083)
    (mid := 11069803) (hi := 11072557) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11072557 11078117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11072557)
    (mid := 11075333) (hi := 11078117) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11078117 11083627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11078117)
    (mid := 11080859) (hi := 11083627) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11083627 11088949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11083627)
    (mid := 11086301) (hi := 11088949) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11088949 11094431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11088949)
    (mid := 11091697) (hi := 11094431) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11006659 11017553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11006659)
    (mid := 11012033) (hi := 11017553) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11017553 11028551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11017553)
    (mid := 11023121) (hi := 11028551) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11028551 11039621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11028551)
    (mid := 11034091) (hi := 11039621) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11039621 11050489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11039621)
    (mid := 11045051) (hi := 11050489) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11050489 11061559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11050489)
    (mid := 11056051) (hi := 11061559) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11061559 11072557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11061559)
    (mid := 11067083) (hi := 11072557) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11072557 11083627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11072557)
    (mid := 11078117) (hi := 11083627) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11083627 11094431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11083627)
    (mid := 11088949) (hi := 11094431) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11006659 11028551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11006659)
    (mid := 11017553) (hi := 11028551) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11028551 11050489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11028551)
    (mid := 11039621) (hi := 11050489) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11050489 11072557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11050489)
    (mid := 11061559) (hi := 11072557) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11072557 11094431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11072557)
    (mid := 11083627) (hi := 11094431) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11006659 11050489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11006659)
    (mid := 11028551) (hi := 11050489) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11050489 11094431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11050489)
    (mid := 11072557) (hi := 11094431) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11006659 11094431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11006659)
    (mid := 11050489) (hi := 11094431) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11006659 11094431 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block125

#print axioms B699MiddleExtension.PrimorialBlocks.Block125.joined
