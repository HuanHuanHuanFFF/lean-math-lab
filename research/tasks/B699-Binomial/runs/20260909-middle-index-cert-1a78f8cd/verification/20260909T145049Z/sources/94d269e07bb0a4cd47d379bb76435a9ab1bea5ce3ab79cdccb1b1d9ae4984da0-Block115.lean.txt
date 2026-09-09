import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block115

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10131697, 10131871, 10132037, 10132217, 10132399, 10132547, 10132721, 10132873, 10133047, 10133159, 10133329, 10133467, 10133609, 10133771, 10133917, 10134097]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10131529 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10131529 10134097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10131529) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10134259, 10134437, 10134589, 10134769, 10134953, 10135133, 10135313, 10135469, 10135649, 10135813, 10135969, 10136153, 10136327, 10136509, 10136683, 10136839]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10134097 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10134097 10136839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10134097) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10136993, 10137119, 10137277, 10137461, 10137643, 10137821, 10138003, 10138169, 10138351, 10138523, 10138691, 10138873, 10139047, 10139231, 10139411, 10139557]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10136839 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10136839 10139557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10136839) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10139737, 10139881, 10140059, 10140241, 10140421, 10140601, 10140773, 10140947, 10141127, 10141291, 10141471, 10141631, 10141771, 10141951, 10142131, 10142309]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10139557 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10139557 10142309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10139557) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10142491, 10142651, 10142813, 10142963, 10143139, 10143323, 10143503, 10143677, 10143857, 10144039, 10144217, 10144397, 10144579, 10144763, 10144933, 10145117]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10142309 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10142309 10145117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10142309) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10145299, 10145483, 10145657, 10145827, 10146007, 10146187, 10146349, 10146533, 10146713, 10146863, 10147043, 10147211, 10147373, 10147549, 10147733, 10147903]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10145117 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10145117 10147903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10145117) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10148087, 10148219, 10148401, 10148561, 10148741, 10148891, 10149071, 10149203, 10149353, 10149533, 10149709, 10149869, 10150043, 10150219, 10150397, 10150573]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10147903 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10147903 10150573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10147903) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10150747, 10150901, 10151081, 10151233, 10151417, 10151593, 10151767, 10151929, 10152089, 10152239, 10152391, 10152563, 10152679, 10152847, 10153021, 10153177]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10150573 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10150573 10153177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10150573) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10153361, 10153541, 10153699, 10153883, 10154059, 10154231, 10154413, 10154597, 10154779, 10154953, 10155127, 10155293, 10155473, 10155637, 10155799, 10155983]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10153177 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10153177 10155983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10153177) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10156049, 10156229, 10156403, 10156543, 10156723, 10156891, 10157071, 10157239, 10157423, 10157531, 10157701, 10157879, 10158053, 10158227, 10158403, 10158569]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10155983 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10155983 10158569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10155983) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10158737, 10158913, 10159087, 10159271, 10159453, 10159613, 10159789, 10159957, 10160141, 10160323, 10160489, 10160663, 10160833, 10161017, 10161163, 10161343]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10158569 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10158569 10161343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10158569) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10161499, 10161659, 10161841, 10162003, 10162183, 10162351, 10162507, 10162687, 10162871, 10162993, 10163173, 10163353, 10163521, 10163701, 10163851, 10164029]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10161343 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10161343 10164029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10161343) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10164199, 10164347, 10164527, 10164701, 10164871, 10165037, 10165219, 10165391, 10165543, 10165721, 10165871, 10166033, 10166213, 10166389, 10166573, 10166743]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10164029 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10164029 10166743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10164029) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10166927, 10167097, 10167281, 10167431, 10167601, 10167779, 10167953, 10168127, 10168297, 10168481, 10168663, 10168843, 10169021, 10169183, 10169359, 10169491]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10166743 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10166743 10169491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10166743) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10169669, 10169843, 10170023, 10170203, 10170383, 10170557, 10170739, 10170887, 10171067, 10171241, 10171417, 10171597, 10171769, 10171949, 10172093, 10172221]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10169491 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10169491 10172221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10169491) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10172399, 10172549, 10172731, 10172843, 10173017, 10173181, 10173349, 10173533, 10173697, 10173851, 10173967, 10174147, 10174327, 10174511, 10174673, 10174849]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10172221 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10172221 10174849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10172221) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10175029, 10175189, 10175353, 10175527, 10175701, 10175881, 10176059, 10176233, 10176409, 10176553, 10176737, 10176919, 10177093, 10177267, 10177421, 10177603]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10174849 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10174849 10177603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10174849) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10177777, 10177933, 10178117, 10178297, 10178459, 10178639, 10178789, 10178953, 10179097, 10179263, 10179427, 10179577, 10179751, 10179929, 10180097, 10180279]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10177603 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10177603 10180279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10177603) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10180463, 10180613, 10180787, 10180969, 10181137, 10181287, 10181467, 10181629, 10181803, 10181959, 10182131, 10182313, 10182493, 10182673, 10182839, 10183013]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10180279 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10180279 10183013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10180279) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10183193, 10183363, 10183529, 10183711, 10183891, 10184059, 10184243, 10184413, 10184591, 10184773, 10184899, 10185059, 10185209, 10185379, 10185563, 10185739]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10183013 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10183013 10185739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10183013) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10185893, 10186051, 10186219, 10186403, 10186577, 10186753, 10186933, 10187101, 10187269, 10187399, 10187537, 10187711, 10187893, 10188071, 10188247, 10188421]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10185739 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10185739 10188421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10185739) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10188587, 10188767, 10188943, 10189099, 10189259, 10189381, 10189547, 10189703, 10189843, 10190027, 10190179, 10190347, 10190501, 10190683, 10190867, 10191037]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10188421 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10188421 10191037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10188421) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10191197, 10191373, 10191481, 10191659, 10191833, 10192009, 10192157, 10192327, 10192463, 10192631, 10192813, 10192997, 10193173, 10193357, 10193509, 10193663]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10191037 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10191037 10193663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10191037) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10193839, 10194017, 10194193, 10194361, 10194533, 10194707, 10194889, 10195061, 10195201, 10195363, 10195547, 10195727, 10195891, 10196063, 10196231, 10196411]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10193663 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10193663 10196411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10193663) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10196587, 10196761, 10196929, 10197107, 10197259, 10197437, 10197613, 10197757, 10197917, 10198093, 10198261, 10198427, 10198609, 10198789, 10198967, 10199149]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10196411 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10196411 10199149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10196411) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10199323, 10199467, 10199641, 10199821, 10199999, 10200173, 10200343, 10200521, 10200691, 10200859, 10201013, 10201193, 10201369, 10201553, 10201699, 10201871]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10199149 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10199149 10201871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10199149) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10202021, 10202191, 10202369, 10202551, 10202729, 10202909, 10203071, 10203251, 10203397, 10203581, 10203763, 10203889, 10204067, 10204231, 10204409, 10204591]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10201871 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10201871 10204591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10201871) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10204771, 10204949, 10205119, 10205297, 10205449, 10205621, 10205803, 10205963, 10206121, 10206299, 10206479, 10206659, 10206839, 10207007, 10207181, 10207303]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10204591 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10204591 10207303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10204591) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10207487, 10207657, 10207831, 10207999, 10208179, 10208333, 10208509, 10208689, 10208873, 10209053, 10209233, 10209379, 10209559, 10209739, 10209883, 10210061]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10207303 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10207303 10210061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10207303) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10210243, 10210427, 10210601, 10210769, 10210951, 10211129, 10211309, 10211491, 10211659, 10211837, 10212011, 10212179, 10212353, 10212511, 10212691, 10212863]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10210061 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10210061 10212863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10210061) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10213031, 10213207, 10213391, 10213571, 10213751, 10213933, 10214111, 10214291, 10214443, 10214623, 10214791, 10214959, 10215119, 10215287, 10215463, 10215641]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10212863 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10212863 10215641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10212863) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10215817, 10215971, 10216153, 10216309, 10216457, 10216637, 10216799, 10216981, 10217161, 10217327, 10217479, 10217653, 10217827, 10218007, 10218191, 10218359]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10215641 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10215641 10218359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10215641) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10131529 10136839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10131529)
    (mid := 10134097) (hi := 10136839) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10136839 10142309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10136839)
    (mid := 10139557) (hi := 10142309) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10142309 10147903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10142309)
    (mid := 10145117) (hi := 10147903) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10147903 10153177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10147903)
    (mid := 10150573) (hi := 10153177) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10153177 10158569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10153177)
    (mid := 10155983) (hi := 10158569) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10158569 10164029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10158569)
    (mid := 10161343) (hi := 10164029) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10164029 10169491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10164029)
    (mid := 10166743) (hi := 10169491) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10169491 10174849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10169491)
    (mid := 10172221) (hi := 10174849) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10174849 10180279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10174849)
    (mid := 10177603) (hi := 10180279) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10180279 10185739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10180279)
    (mid := 10183013) (hi := 10185739) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10185739 10191037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10185739)
    (mid := 10188421) (hi := 10191037) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10191037 10196411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10191037)
    (mid := 10193663) (hi := 10196411) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10196411 10201871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10196411)
    (mid := 10199149) (hi := 10201871) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10201871 10207303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10201871)
    (mid := 10204591) (hi := 10207303) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10207303 10212863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10207303)
    (mid := 10210061) (hi := 10212863) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10212863 10218359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10212863)
    (mid := 10215641) (hi := 10218359) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10131529 10142309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10131529)
    (mid := 10136839) (hi := 10142309) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10142309 10153177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10142309)
    (mid := 10147903) (hi := 10153177) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10153177 10164029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10153177)
    (mid := 10158569) (hi := 10164029) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10164029 10174849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10164029)
    (mid := 10169491) (hi := 10174849) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10174849 10185739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10174849)
    (mid := 10180279) (hi := 10185739) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10185739 10196411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10185739)
    (mid := 10191037) (hi := 10196411) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10196411 10207303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10196411)
    (mid := 10201871) (hi := 10207303) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10207303 10218359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10207303)
    (mid := 10212863) (hi := 10218359) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10131529 10153177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10131529)
    (mid := 10142309) (hi := 10153177) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10153177 10174849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10153177)
    (mid := 10164029) (hi := 10174849) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10174849 10196411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10174849)
    (mid := 10185739) (hi := 10196411) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10196411 10218359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10196411)
    (mid := 10207303) (hi := 10218359) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10131529 10174849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10131529)
    (mid := 10153177) (hi := 10174849) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10174849 10218359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10174849)
    (mid := 10196411) (hi := 10218359) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10131529 10218359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10131529)
    (mid := 10174849) (hi := 10218359) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10131529 10218359 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block115

#print axioms B699MiddleExtension.PrimorialBlocks.Block115.joined
