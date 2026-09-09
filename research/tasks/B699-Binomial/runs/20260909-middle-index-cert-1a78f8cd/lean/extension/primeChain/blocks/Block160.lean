import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block160

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14071973, 14072153, 14072329, 14072491, 14072671, 14072833, 14073011, 14073181, 14073361, 14073541, 14073713, 14073893, 14074057, 14074241, 14074399, 14074583]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14071807 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14071807 14074583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14071807) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14074751, 14074909, 14075077, 14075251, 14075417, 14075597, 14075771, 14075939, 14076121, 14076277, 14076451, 14076631, 14076757, 14076941, 14077123, 14077307]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14074583 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14074583 14077307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14074583) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14077477, 14077643, 14077799, 14077979, 14078153, 14078327, 14078503, 14078671, 14078851, 14079001, 14079161, 14079337, 14079521, 14079697, 14079881, 14080057]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14077307 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14077307 14080057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14077307) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14080211, 14080379, 14080559, 14080739, 14080903, 14081077, 14081251, 14081429, 14081611, 14081779, 14081953, 14082083, 14082253, 14082433, 14082617, 14082799]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14080057 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14080057 14082799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14080057) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14082979, 14083159, 14083309, 14083483, 14083639, 14083819, 14083991, 14084159, 14084327, 14084501, 14084677, 14084849, 14085031, 14085199, 14085371, 14085541]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14082799 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14082799 14085541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14082799) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14085713, 14085893, 14086067, 14086231, 14086403, 14086573, 14086753, 14086909, 14087093, 14087179, 14087327, 14087497, 14087681, 14087819, 14088001, 14088169]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14085541 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14085541 14088169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14085541) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14088341, 14088493, 14088677, 14088847, 14089007, 14089177, 14089351, 14089529, 14089709, 14089877, 14090057, 14090239, 14090423, 14090597, 14090779, 14090963]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14088169 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14088169 14090963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14088169) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14091139, 14091313, 14091463, 14091631, 14091811, 14091983, 14092147, 14092297, 14092457, 14092633, 14092801, 14092979, 14093147, 14093329, 14093509, 14093693]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14090963 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14090963 14093693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14090963) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14093857, 14094023, 14094191, 14094359, 14094539, 14094671, 14094833, 14095009, 14095183, 14095313, 14095493, 14095673, 14095813, 14095919, 14096083, 14096261]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14093693 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14093693 14096261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14093693) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14096441, 14096623, 14096801, 14096983, 14097151, 14097323, 14097497, 14097673, 14097817, 14098001, 14098177, 14098349, 14098531, 14098697, 14098879, 14099009]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14096261 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14096261 14099009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14096261) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14099177, 14099353, 14099509, 14099689, 14099873, 14100043, 14100227, 14100407, 14100551, 14100733, 14100883, 14101067, 14101247, 14101387, 14101567, 14101729]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14099009 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14099009 14101729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14099009) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14101883, 14102051, 14102201, 14102371, 14102549, 14102723, 14102899, 14103059, 14103239, 14103413, 14103587, 14103769, 14103917, 14104087, 14104253, 14104421]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14101729 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14101729 14104421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14101729) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14104591, 14104729, 14104891, 14105059, 14105227, 14105411, 14105573, 14105753, 14105921, 14106101, 14106283, 14106467, 14106647, 14106823, 14106979, 14107153]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14104421 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14104421 14107153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14104421) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14107307, 14107439, 14107609, 14107789, 14107969, 14108153, 14108333, 14108509, 14108693, 14108869, 14109047, 14109217, 14109401, 14109583, 14109757, 14109923]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14107153 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14107153 14109923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14107153) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14110079, 14110259, 14110441, 14110583, 14110757, 14110931, 14111113, 14111291, 14111459, 14111639, 14111809, 14111987, 14112149, 14112331, 14112509, 14112691]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14109923 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14109923 14112691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14109923) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14112853, 14113037, 14113199, 14113381, 14113507, 14113663, 14113843, 14114027, 14114197, 14114371, 14114533, 14114671, 14114843, 14115011, 14115163, 14115317]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14112691 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14112691 14115317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14112691) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14115469, 14115623, 14115793, 14115977, 14116153, 14116337, 14116519, 14116703, 14116877, 14117053, 14117231, 14117381, 14117563, 14117737, 14117921, 14118089]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14115317 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14115317 14118089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14115317) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14118257, 14118439, 14118607, 14118781, 14118961, 14119141, 14119321, 14119499, 14119661, 14119823, 14120003, 14120177, 14120339, 14120503, 14120681, 14120861]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14118089 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14118089 14120861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14118089) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14121031, 14121167, 14121323, 14121493, 14121677, 14121853, 14122007, 14122183, 14122319, 14122501, 14122673, 14122847, 14123027, 14123191, 14123353, 14123509]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14120861 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14120861 14123509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14120861) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14123689, 14123873, 14124043, 14124221, 14124401, 14124577, 14124709, 14124889, 14125039, 14125217, 14125399, 14125571, 14125751, 14125927, 14126107, 14126261]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14123509 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14123509 14126261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14123509) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14126419, 14126603, 14126773, 14126953, 14127131, 14127301, 14127481, 14127653, 14127829, 14127991, 14128159, 14128321, 14128489, 14128663, 14128823, 14128997]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14126261 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14126261 14128997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14126261) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14129147, 14129321, 14129501, 14129683, 14129821, 14129993, 14130143, 14130299, 14130469, 14130653, 14130821, 14131001, 14131147, 14131261, 14131433, 14131603]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14128997 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14128997 14131603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14128997) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14131781, 14131951, 14132089, 14132273, 14132449, 14132633, 14132813, 14132981, 14133113, 14133281, 14133461, 14133617, 14133787, 14133961, 14134129, 14134303]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14131603 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14131603 14134303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14131603) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14134459, 14134643, 14134819, 14134997, 14135137, 14135321, 14135503, 14135669, 14135843, 14136013, 14136179, 14136359, 14136539, 14136719, 14136901, 14137063]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14134303 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14134303 14137063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14134303) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14137243, 14137423, 14137573, 14137699, 14137873, 14138039, 14138219, 14138401, 14138581, 14138753, 14138933, 14139113, 14139289, 14139473, 14139649, 14139823]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14137063 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14137063 14139823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14137063) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14140001, 14140177, 14140361, 14140543, 14140717, 14140901, 14141077, 14141261, 14141429, 14141587, 14141767, 14141951, 14142127, 14142311, 14142481, 14142649]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14139823 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14139823 14142649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14139823) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14142823, 14143007, 14143187, 14143369, 14143537, 14143709, 14143891, 14144069, 14144243, 14144423, 14144593, 14144743, 14144927, 14145091, 14145251, 14145431]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14142649 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14142649 14145431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14142649) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14145611, 14145793, 14145973, 14146141, 14146303, 14146487, 14146619, 14146801, 14146981, 14147143, 14147317, 14147491, 14147663, 14147843, 14148011, 14148187]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14145431 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14145431 14148187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14145431) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14148371, 14148553, 14148733, 14148907, 14149081, 14149241, 14149417, 14149589, 14149753, 14149913, 14150093, 14150249, 14150413, 14150561, 14150743, 14150897]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14148187 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14148187 14150897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14148187) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14151061, 14151199, 14151377, 14151547, 14151703, 14151881, 14152063, 14152231, 14152409, 14152561, 14152741, 14152877, 14153057, 14153221, 14153389, 14153567]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14150897 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14150897 14153567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14150897) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14153749, 14153933, 14154113, 14154289, 14154467, 14154641, 14154797, 14154971, 14155153, 14155331, 14155489, 14155667, 14155837, 14156003, 14156179, 14156327]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14153567 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14153567 14156327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14153567) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14156473, 14156641, 14156809, 14156993, 14157137, 14157317, 14157499, 14157677, 14157859, 14158043, 14158219, 14158393, 14158577, 14158759, 14158927, 14159111]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14156327 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14156327 14159111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14156327) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14071807 14077307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 14074583) (hi := 14077307) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14077307 14082799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14077307)
    (mid := 14080057) (hi := 14082799) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14082799 14088169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14082799)
    (mid := 14085541) (hi := 14088169) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14088169 14093693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14088169)
    (mid := 14090963) (hi := 14093693) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14093693 14099009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14093693)
    (mid := 14096261) (hi := 14099009) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14099009 14104421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14099009)
    (mid := 14101729) (hi := 14104421) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14104421 14109923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14104421)
    (mid := 14107153) (hi := 14109923) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14109923 14115317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14109923)
    (mid := 14112691) (hi := 14115317) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14115317 14120861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14115317)
    (mid := 14118089) (hi := 14120861) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14120861 14126261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14120861)
    (mid := 14123509) (hi := 14126261) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14126261 14131603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14126261)
    (mid := 14128997) (hi := 14131603) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14131603 14137063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14131603)
    (mid := 14134303) (hi := 14137063) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14137063 14142649 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14137063)
    (mid := 14139823) (hi := 14142649) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14142649 14148187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14142649)
    (mid := 14145431) (hi := 14148187) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14148187 14153567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14148187)
    (mid := 14150897) (hi := 14153567) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14153567 14159111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14153567)
    (mid := 14156327) (hi := 14159111) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14071807 14082799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 14077307) (hi := 14082799) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14082799 14093693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14082799)
    (mid := 14088169) (hi := 14093693) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14093693 14104421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14093693)
    (mid := 14099009) (hi := 14104421) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14104421 14115317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14104421)
    (mid := 14109923) (hi := 14115317) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14115317 14126261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14115317)
    (mid := 14120861) (hi := 14126261) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14126261 14137063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14126261)
    (mid := 14131603) (hi := 14137063) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14137063 14148187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14137063)
    (mid := 14142649) (hi := 14148187) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14148187 14159111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14148187)
    (mid := 14153567) (hi := 14159111) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14071807 14093693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 14082799) (hi := 14093693) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14093693 14115317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14093693)
    (mid := 14104421) (hi := 14115317) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14115317 14137063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14115317)
    (mid := 14126261) (hi := 14137063) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14137063 14159111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14137063)
    (mid := 14148187) (hi := 14159111) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14071807 14115317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 14093693) (hi := 14115317) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14115317 14159111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14115317)
    (mid := 14137063) (hi := 14159111) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14071807 14159111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 14115317) (hi := 14159111) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14071807 14159111 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block160

#print axioms B699MiddleExtension.PrimorialBlocks.Block160.joined
