import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block225

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19749757, 19749929, 19750111, 19750279, 19750463, 19750639, 19750817, 19750981, 19751143, 19751323, 19751453, 19751629, 19751803, 19751981, 19752163, 19752347]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19749593 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19749593 19752347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19749593) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19752527, 19752703, 19752881, 19753061, 19753241, 19753403, 19753579, 19753763, 19753933, 19754093, 19754239, 19754419, 19754599, 19754767, 19754951, 19755133]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19752347 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19752347 19755133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19752347) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19755313, 19755473, 19755623, 19755797, 19755971, 19756153, 19756313, 19756493, 19756663, 19756837, 19757011, 19757183, 19757363, 19757539, 19757707, 19757873]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19755133 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19755133 19757873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19755133) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19758049, 19758229, 19758413, 19758589, 19758737, 19758919, 19759097, 19759279, 19759459, 19759633, 19759811, 19759973, 19760141, 19760309, 19760453, 19760623]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19757873 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19757873 19760623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19757873) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19760789, 19760971, 19761149, 19761331, 19761503, 19761671, 19761821, 19762003, 19762187, 19762349, 19762493, 19762669, 19762849, 19763033, 19763201, 19763383]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19760623 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19760623 19763383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19760623) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19763567, 19763749, 19763929, 19764103, 19764257, 19764439, 19764611, 19764779, 19764947, 19765129, 19765307, 19765489, 19765667, 19765843, 19766011, 19766183]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19763383 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19763383 19766183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19763383) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19766363, 19766543, 19766717, 19766881, 19767053, 19767227, 19767403, 19767563, 19767703, 19767883, 19768061, 19768241, 19768423, 19768583, 19768751, 19768933]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19766183 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19766183 19768933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19766183) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19769117, 19769273, 19769441, 19769621, 19769801, 19769983, 19770139, 19770313, 19770479, 19770631, 19770791, 19770967, 19771133, 19771309, 19771483, 19771643]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19768933 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19768933 19771643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19768933) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19771813, 19771987, 19772153, 19772323, 19772453, 19772629, 19772813, 19772993, 19773161, 19773337, 19773517, 19773697, 19773869, 19773979, 19774159, 19774333]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19771643 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19771643 19774333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19771643) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19774511, 19774693, 19774861, 19775023, 19775167, 19775351, 19775531, 19775671, 19775849, 19775989, 19776157, 19776329, 19776487, 19776671, 19776839, 19777013]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19774333 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19774333 19777013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19774333) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19777189, 19777369, 19777543, 19777717, 19777897, 19778081, 19778263, 19778443, 19778617, 19778779, 19778947, 19779121, 19779293, 19779451, 19779629, 19779803]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19777013 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19777013 19779803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19777013) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19779973, 19780157, 19780307, 19780489, 19780669, 19780853, 19781023, 19781207, 19781371, 19781551, 19781719, 19781891, 19782043, 19782227, 19782403, 19782583]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19779803 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19779803 19782583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19779803) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19782767, 19782949, 19783129, 19783297, 19783457, 19783639, 19783811, 19783957, 19784123, 19784273, 19784431, 19784593, 19784771, 19784951, 19785131, 19785307]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19782583 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19782583 19785307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19782583) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19785487, 19785643, 19785823, 19785979, 19786133, 19786307, 19786489, 19786667, 19786843, 19787023, 19787171, 19787351, 19787519, 19787701, 19787863, 19788047]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19785307 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19785307 19788047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19785307) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19788227, 19788409, 19788581, 19788761, 19788941, 19789123, 19789307, 19789489, 19789673, 19789837, 19790011, 19790161, 19790341, 19790503, 19790653, 19790831]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19788047 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19788047 19790831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19788047) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19790983, 19791143, 19791323, 19791503, 19791649, 19791823, 19791973, 19792153, 19792337, 19792511, 19792693, 19792867, 19793047, 19793203, 19793387, 19793563]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19790831 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19790831 19793563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19790831) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19793701, 19793881, 19794059, 19794241, 19794419, 19794581, 19794739, 19794823, 19794991, 19795159, 19795343, 19795493, 19795651, 19795823, 19795987, 19796141]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19793563 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19793563 19796141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19793563) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19796267, 19796429, 19796611, 19796753, 19796929, 19797101, 19797269, 19797443, 19797619, 19797787, 19797959, 19798117, 19798301, 19798483, 19798643, 19798819]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19796141 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19796141 19798819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19796141) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19798991, 19799149, 19799327, 19799497, 19799671, 19799851, 19799993, 19800169, 19800353, 19800497, 19800673, 19800817, 19800961, 19801129, 19801307, 19801487]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19798819 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19798819 19801487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19798819) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19801669, 19801823, 19801997, 19802173, 19802311, 19802483, 19802663, 19802843, 19803019, 19803169, 19803353, 19803523, 19803703, 19803869, 19804027, 19804193]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19801487 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19801487 19804193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19801487) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19804373, 19804549, 19804721, 19804901, 19805059, 19805207, 19805389, 19805573, 19805749, 19805917, 19806097, 19806263, 19806443, 19806587, 19806769, 19806937]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19804193 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19804193 19806937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19804193) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19807121, 19807283, 19807457, 19807583, 19807763, 19807939, 19808123, 19808303, 19808449, 19808629, 19808809, 19808993, 19809149, 19809311, 19809481, 19809653]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19806937 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19806937 19809653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19806937) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19809833, 19810013, 19810163, 19810319, 19810481, 19810657, 19810841, 19811023, 19811191, 19811369, 19811521, 19811663, 19811819, 19811971, 19812113, 19812277]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19809653 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19809653 19812277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19809653) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19812451, 19812607, 19812791, 19812971, 19813151, 19813303, 19813487, 19813667, 19813847, 19814021, 19814189, 19814329, 19814497, 19814681, 19814863, 19815041]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19812277 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19812277 19815041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19812277) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19815203, 19815373, 19815539, 19815713, 19815893, 19816051, 19816229, 19816393, 19816567, 19816733, 19816903, 19816999, 19817167, 19817351, 19817519, 19817683]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19815041 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19815041 19817683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19815041) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19817867, 19818031, 19818181, 19818353, 19818529, 19818713, 19818871, 19819039, 19819201, 19819367, 19819549, 19819733, 19819903, 19820077, 19820257, 19820441]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19817683 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19817683 19820441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19817683) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19820621, 19820797, 19820951, 19821127, 19821299, 19821449, 19821631, 19821799, 19821979, 19822163, 19822333, 19822511, 19822679, 19822843, 19823021, 19823203]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19820441 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19820441 19823203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19820441) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19823359, 19823543, 19823711, 19823879, 19824061, 19824241, 19824379, 19824559, 19824743, 19824913, 19825097, 19825277, 19825459, 19825639, 19825811, 19825979]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19823203 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19823203 19825979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19823203) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19826141, 19826321, 19826501, 19826663, 19826843, 19827023, 19827187, 19827361, 19827517, 19827701, 19827869, 19828037, 19828217, 19828397, 19828531, 19828703]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19825979 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19825979 19828703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19825979) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19828883, 19829041, 19829221, 19829401, 19829581, 19829729, 19829899, 19830079, 19830263, 19830407, 19830581, 19830689, 19830847, 19830973, 19831153, 19831303]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19828703 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19828703 19831303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19828703) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19831481, 19831663, 19831841, 19832009, 19832171, 19832339, 19832521, 19832689, 19832843, 19833001, 19833179, 19833349, 19833533, 19833703, 19833839, 19834007]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19831303 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19831303 19834007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19831303) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19834187, 19834363, 19834547, 19834729, 19834889, 19835063, 19835237, 19835393, 19835573, 19835743, 19835917, 19836101, 19836269, 19836451, 19836629, 19836799]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19834007 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19834007 19836799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19834007) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19749593 19755133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19749593)
    (mid := 19752347) (hi := 19755133) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19755133 19760623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19755133)
    (mid := 19757873) (hi := 19760623) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19760623 19766183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19760623)
    (mid := 19763383) (hi := 19766183) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19766183 19771643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19766183)
    (mid := 19768933) (hi := 19771643) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19771643 19777013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19771643)
    (mid := 19774333) (hi := 19777013) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19777013 19782583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19777013)
    (mid := 19779803) (hi := 19782583) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19782583 19788047 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19782583)
    (mid := 19785307) (hi := 19788047) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19788047 19793563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19788047)
    (mid := 19790831) (hi := 19793563) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19793563 19798819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19793563)
    (mid := 19796141) (hi := 19798819) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19798819 19804193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19798819)
    (mid := 19801487) (hi := 19804193) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19804193 19809653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19804193)
    (mid := 19806937) (hi := 19809653) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19809653 19815041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19809653)
    (mid := 19812277) (hi := 19815041) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19815041 19820441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19815041)
    (mid := 19817683) (hi := 19820441) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19820441 19825979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19820441)
    (mid := 19823203) (hi := 19825979) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19825979 19831303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19825979)
    (mid := 19828703) (hi := 19831303) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19831303 19836799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19831303)
    (mid := 19834007) (hi := 19836799) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19749593 19760623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19749593)
    (mid := 19755133) (hi := 19760623) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19760623 19771643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19760623)
    (mid := 19766183) (hi := 19771643) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19771643 19782583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19771643)
    (mid := 19777013) (hi := 19782583) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19782583 19793563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19782583)
    (mid := 19788047) (hi := 19793563) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19793563 19804193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19793563)
    (mid := 19798819) (hi := 19804193) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19804193 19815041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19804193)
    (mid := 19809653) (hi := 19815041) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19815041 19825979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19815041)
    (mid := 19820441) (hi := 19825979) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19825979 19836799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19825979)
    (mid := 19831303) (hi := 19836799) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19749593 19771643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19749593)
    (mid := 19760623) (hi := 19771643) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19771643 19793563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19771643)
    (mid := 19782583) (hi := 19793563) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19793563 19815041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19793563)
    (mid := 19804193) (hi := 19815041) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19815041 19836799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19815041)
    (mid := 19825979) (hi := 19836799) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19749593 19793563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19749593)
    (mid := 19771643) (hi := 19793563) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19793563 19836799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19793563)
    (mid := 19815041) (hi := 19836799) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19749593 19836799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19749593)
    (mid := 19793563) (hi := 19836799) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19749593 19836799 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block225

#print axioms B699MiddleExtension.PrimorialBlocks.Block225.joined
