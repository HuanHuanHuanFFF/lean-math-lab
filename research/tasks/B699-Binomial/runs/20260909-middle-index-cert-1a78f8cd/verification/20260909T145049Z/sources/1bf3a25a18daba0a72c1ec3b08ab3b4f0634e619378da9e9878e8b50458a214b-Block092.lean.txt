import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block092

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8116993, 8117173, 8117353, 8117537, 8117719, 8117903, 8118083, 8118251, 8118433, 8118611, 8118791, 8118973, 8119157, 8119339, 8119499, 8119679]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8116817 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8116817 8119679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8116817) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8119831, 8119997, 8120179, 8120363, 8120531, 8120711, 8120891, 8121067, 8121209, 8121383, 8121559, 8121739, 8121923, 8122099, 8122273, 8122421]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8119679 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8119679 8122421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8119679) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8122603, 8122781, 8122951, 8123123, 8123303, 8123483, 8123657, 8123837, 8124019, 8124199, 8124367, 8124551, 8124731, 8124887, 8125037, 8125211]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8122421 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8122421 8125211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8122421) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8125391, 8125573, 8125757, 8125933, 8126117, 8126297, 8126479, 8126653, 8126821, 8127001, 8127181, 8127341, 8127517, 8127697, 8127871, 8128051]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8125211 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8125211 8128051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8125211) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8128217, 8128369, 8128543, 8128723, 8128877, 8129057, 8129227, 8129411, 8129567, 8129743, 8129923, 8130077, 8130251, 8130427, 8130611, 8130791]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8128051 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8128051 8130791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8128051) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8130973, 8131153, 8131337, 8131511, 8131693, 8131873, 8132051, 8132221, 8132401, 8132567, 8132743, 8132923, 8133107, 8133289, 8133469, 8133641]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8130791 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8130791 8133641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8130791) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8133809, 8133989, 8134163, 8134303, 8134481, 8134661, 8134813, 8134991, 8135159, 8135329, 8135497, 8135641, 8135821, 8135983, 8136157, 8136341]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8133641 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8133641 8136341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8133641) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8136521, 8136701, 8136881, 8137043, 8137223, 8137397, 8137573, 8137733, 8137897, 8138063, 8138243, 8138413, 8138579, 8138761, 8138909, 8139071]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8136341 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8136341 8139071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8136341) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8139253, 8139431, 8139611, 8139773, 8139919, 8140103, 8140261, 8140441, 8140609, 8140771, 8140927, 8141093, 8141267, 8141449, 8141611, 8141789]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8139071 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8139071 8141789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8139071) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8141971, 8142151, 8142319, 8142503, 8142683, 8142857, 8143033, 8143207, 8143351, 8143501, 8143657, 8143841, 8144011, 8144167, 8144341, 8144497]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8141789 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8141789 8144497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8141789) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8144671, 8144849, 8145031, 8145211, 8145367, 8145541, 8145713, 8145871, 8146007, 8146183, 8146363, 8146529, 8146711, 8146867, 8147047, 8147189]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8144497 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8144497 8147189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8144497) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8147357, 8147537, 8147717, 8147899, 8148079, 8148263, 8148421, 8148589, 8148757, 8148937, 8149111, 8149279, 8149459, 8149639, 8149789, 8149951]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8147189 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8147189 8149951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8147189) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8150111, 8150291, 8150473, 8150657, 8150839, 8151023, 8151203, 8151383, 8151547, 8151719, 8151901, 8152033, 8152217, 8152379, 8152549, 8152709]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8149951 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8149951 8152709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8149951) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8152889, 8153069, 8153237, 8153417, 8153597, 8153779, 8153953, 8154131, 8154313, 8154473, 8154647, 8154827, 8155001, 8155183, 8155349, 8155531]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8152709 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8152709 8155531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8152709) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8155687, 8155859, 8156023, 8156189, 8156359, 8156543, 8156723, 8156903, 8157077, 8157257, 8157431, 8157599, 8157769, 8157949, 8158133, 8158291]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8155531 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8155531 8158291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8155531) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8158471, 8158649, 8158789, 8158967, 8159143, 8159321, 8159483, 8159663, 8159839, 8160011, 8160181, 8160337, 8160491, 8160673, 8160851, 8161031]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8158291 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8158291 8161031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8158291) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8161213, 8161381, 8161537, 8161687, 8161859, 8162041, 8162213, 8162353, 8162521, 8162701, 8162863, 8163047, 8163227, 8163401, 8163583, 8163739]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8161031 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8161031 8163739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8161031) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8163923, 8164099, 8164259, 8164441, 8164621, 8164801, 8164973, 8165149, 8165329, 8165503, 8165681, 8165813, 8165977, 8166107, 8166289, 8166469]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8163739 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8163739 8166469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8163739) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8166649, 8166799, 8166967, 8167151, 8167319, 8167499, 8167673, 8167847, 8168023, 8168207, 8168371, 8168549, 8168729, 8168911, 8169079, 8169263]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8166469 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8166469 8169263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8166469) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8169433, 8169617, 8169767, 8169937, 8170093, 8170243, 8170397, 8170579, 8170711, 8170873, 8171057, 8171231, 8171399, 8171573, 8171741, 8171921]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8169263 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8169263 8171921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8169263) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8172103, 8172253, 8172419, 8172589, 8172713, 8172847, 8173031, 8173201, 8173351, 8173523, 8173699, 8173871, 8174053, 8174219, 8174401, 8174581]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8171921 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8171921 8174581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8171921) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8174741, 8174911, 8175077, 8175253, 8175397, 8175577, 8175743, 8175919, 8176093, 8176237, 8176411, 8176547, 8176723, 8176873, 8177041, 8177219]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8174581 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8174581 8177219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8174581) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8177401, 8177563, 8177747, 8177929, 8178109, 8178293, 8178473, 8178647, 8178829, 8179001, 8179169, 8179351, 8179529, 8179693, 8179867, 8180041]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8177219 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8177219 8180041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8177219) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8180201, 8180369, 8180537, 8180719, 8180897, 8181079, 8181253, 8181421, 8181601, 8181781, 8181961, 8182123, 8182271, 8182453, 8182637, 8182819]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8180041 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8180041 8182819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8180041) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8182987, 8183159, 8183321, 8183503, 8183683, 8183867, 8184019, 8184199, 8184367, 8184523, 8184691, 8184857, 8185039, 8185223, 8185403, 8185579]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8182819 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8182819 8185579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8182819) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8185757, 8185921, 8186099, 8186279, 8186447, 8186621, 8186753, 8186933, 8187097, 8187269, 8187451, 8187629, 8187799, 8187983, 8188163, 8188333]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8185579 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8185579 8188333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8185579) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8188513, 8188693, 8188861, 8189039, 8189197, 8189369, 8189539, 8189711, 8189837, 8190011, 8190187, 8190367, 8190509, 8190667, 8190839, 8190997]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8188333 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8188333 8190997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8188333) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8191181, 8191363, 8191537, 8191699, 8191877, 8192039, 8192201, 8192383, 8192557, 8192699, 8192881, 8193041, 8193209, 8193343, 8193527, 8193707]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8190997 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8190997 8193707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8190997) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8193877, 8194007, 8194183, 8194367, 8194541, 8194721, 8194903, 8195087, 8195269, 8195431, 8195587, 8195767, 8195947, 8196127, 8196301, 8196481]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8193707 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8193707 8196481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8193707) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8196653, 8196833, 8197003, 8197183, 8197339, 8197507, 8197687, 8197837, 8198017, 8198191, 8198371, 8198551, 8198717, 8198891, 8199029, 8199187]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8196481 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8196481 8199187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8196481) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8199371, 8199553, 8199703, 8199883, 8200061, 8200219, 8200403, 8200561, 8200741, 8200921, 8201101, 8201257, 8201441, 8201621, 8201801, 8201981]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8199187 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8199187 8201981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8199187) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8202149, 8202277, 8202461, 8202629, 8202811, 8202989, 8203147, 8203331, 8203511, 8203691, 8203873, 8204041, 8204221, 8204389, 8204569, 8204747]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8201981 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8201981 8204747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8201981) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8116817 8122421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8116817)
    (mid := 8119679) (hi := 8122421) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8122421 8128051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8122421)
    (mid := 8125211) (hi := 8128051) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8128051 8133641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8128051)
    (mid := 8130791) (hi := 8133641) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8133641 8139071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8133641)
    (mid := 8136341) (hi := 8139071) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8139071 8144497 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8139071)
    (mid := 8141789) (hi := 8144497) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8144497 8149951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8144497)
    (mid := 8147189) (hi := 8149951) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8149951 8155531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8149951)
    (mid := 8152709) (hi := 8155531) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8155531 8161031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8155531)
    (mid := 8158291) (hi := 8161031) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8161031 8166469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8161031)
    (mid := 8163739) (hi := 8166469) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8166469 8171921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8166469)
    (mid := 8169263) (hi := 8171921) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8171921 8177219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8171921)
    (mid := 8174581) (hi := 8177219) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8177219 8182819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8177219)
    (mid := 8180041) (hi := 8182819) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8182819 8188333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8182819)
    (mid := 8185579) (hi := 8188333) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8188333 8193707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8188333)
    (mid := 8190997) (hi := 8193707) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8193707 8199187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8193707)
    (mid := 8196481) (hi := 8199187) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8199187 8204747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8199187)
    (mid := 8201981) (hi := 8204747) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8116817 8128051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8116817)
    (mid := 8122421) (hi := 8128051) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8128051 8139071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8128051)
    (mid := 8133641) (hi := 8139071) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8139071 8149951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8139071)
    (mid := 8144497) (hi := 8149951) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8149951 8161031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8149951)
    (mid := 8155531) (hi := 8161031) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8161031 8171921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8161031)
    (mid := 8166469) (hi := 8171921) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8171921 8182819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8171921)
    (mid := 8177219) (hi := 8182819) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8182819 8193707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8182819)
    (mid := 8188333) (hi := 8193707) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8193707 8204747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8193707)
    (mid := 8199187) (hi := 8204747) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8116817 8139071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8116817)
    (mid := 8128051) (hi := 8139071) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8139071 8161031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8139071)
    (mid := 8149951) (hi := 8161031) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8161031 8182819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8161031)
    (mid := 8171921) (hi := 8182819) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8182819 8204747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8182819)
    (mid := 8193707) (hi := 8204747) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8116817 8161031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8116817)
    (mid := 8139071) (hi := 8161031) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8161031 8204747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8161031)
    (mid := 8182819) (hi := 8204747) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8116817 8204747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8116817)
    (mid := 8161031) (hi := 8204747) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8116817 8204747 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block092

#print axioms B699MiddleExtension.PrimorialBlocks.Block092.joined
