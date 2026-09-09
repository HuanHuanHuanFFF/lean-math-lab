import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block201

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17654083, 17654267, 17654447, 17654627, 17654783, 17654963, 17655139, 17655317, 17655487, 17655661, 17655829, 17655931, 17656103, 17656283, 17656459, 17656637]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17653913 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17653913 17656637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17653913) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17656817, 17656997, 17657179, 17657357, 17657513, 17657687, 17657869, 17657999, 17658161, 17658343, 17658527, 17658679, 17658863, 17659021, 17659133, 17659273]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17656637 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17656637 17659273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17656637) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17659457, 17659613, 17659783, 17659963, 17660147, 17660311, 17660479, 17660663, 17660843, 17661023, 17661169, 17661353, 17661533, 17661713, 17661881, 17662037]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17659273 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17659273 17662037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17659273) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17662217, 17662399, 17662573, 17662747, 17662921, 17663083, 17663263, 17663447, 17663621, 17663803, 17663983, 17664149, 17664331, 17664487, 17664671, 17664841]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17662037 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17662037 17664841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17662037) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17664979, 17665103, 17665283, 17665441, 17665621, 17665759, 17665903, 17666087, 17666269, 17666443, 17666609, 17666773, 17666953, 17667127, 17667277, 17667449]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17664841 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17664841 17667449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17664841) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17667581, 17667763, 17667943, 17668103, 17668283, 17668411, 17668579, 17668759, 17668927, 17669063, 17669233, 17669417, 17669599, 17669779, 17669929, 17670113]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17667449 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17667449 17670113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17667449) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17670277, 17670439, 17670623, 17670797, 17670967, 17671141, 17671309, 17671477, 17671657, 17671837, 17672021, 17672203, 17672381, 17672561, 17672729, 17672909]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17670113 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17670113 17672909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17670113) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17673017, 17673199, 17673371, 17673547, 17673703, 17673881, 17674039, 17674213, 17674381, 17674523, 17674703, 17674873, 17675057, 17675221, 17675401, 17675533]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17672909 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17672909 17675533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17672909) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17675717, 17675893, 17676067, 17676247, 17676431, 17676611, 17676793, 17676977, 17677159, 17677337, 17677507, 17677643, 17677819, 17677997, 17678179, 17678359]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17675533 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17675533 17678359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17675533) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17678539, 17678707, 17678879, 17679061, 17679239, 17679419, 17679593, 17679749, 17679929, 17680099, 17680283, 17680463, 17680643, 17680823, 17680987, 17681143]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17678359 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17678359 17681143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17678359) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17681317, 17681491, 17681669, 17681849, 17682031, 17682211, 17682391, 17682541, 17682719, 17682887, 17683037, 17683219, 17683387, 17683537, 17683691, 17683873]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17681143 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17681143 17683873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17681143) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17684057, 17684239, 17684419, 17684599, 17684773, 17684957, 17685139, 17685323, 17685497, 17685673, 17685851, 17686033, 17686217, 17686391, 17686531, 17686699]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17683873 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17683873 17686699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17683873) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17686849, 17687029, 17687209, 17687393, 17687569, 17687723, 17687903, 17688079, 17688263, 17688439, 17688623, 17688787, 17688929, 17689103, 17689267, 17689447]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17686699 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17686699 17689447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17686699) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17689631, 17689807, 17689981, 17690161, 17690303, 17690483, 17690663, 17690837, 17691007, 17691187, 17691371, 17691547, 17691727, 17691911, 17692093, 17692261]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17689447 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17689447 17692261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17689447) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17692429, 17692613, 17692793, 17692973, 17693147, 17693327, 17693471, 17693633, 17693803, 17693987, 17694169, 17694349, 17694517, 17694683, 17694847, 17695021]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17692261 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17692261 17695021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17692261) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17695201, 17695373, 17695549, 17695721, 17695883, 17696059, 17696233, 17696417, 17696593, 17696773, 17696947, 17697103, 17697271, 17697451, 17697611, 17697781]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17695021 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17695021 17697781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17695021) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17697961, 17698127, 17698271, 17698441, 17698621, 17698801, 17698981, 17699147, 17699291, 17699467, 17699651, 17699807, 17699959, 17700143, 17700323, 17700493]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17697781 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17697781 17700493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17697781) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17700671, 17700847, 17700997, 17701181, 17701363, 17701487, 17701667, 17701813, 17701997, 17702171, 17702329, 17702513, 17702669, 17702843, 17703013, 17703197]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17700493 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17700493 17703197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17700493) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17703379, 17703557, 17703737, 17703893, 17704061, 17704237, 17704417, 17704601, 17704783, 17704961, 17705141, 17705299, 17705461, 17705641, 17705813, 17705983]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17703197 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17703197 17705983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17703197) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17706167, 17706331, 17706463, 17706643, 17706811, 17706989, 17707147, 17707321, 17707499, 17707667, 17707843, 17707997, 17708177, 17708297, 17708479, 17708659]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17705983 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17705983 17708659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17705983) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17708833, 17708983, 17709161, 17709323, 17709481, 17709619, 17709781, 17709953, 17710061, 17710229, 17710409, 17710591, 17710757, 17710937, 17711117, 17711299]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17708659 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17708659 17711299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17708659) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17711483, 17711647, 17711821, 17711999, 17712179, 17712361, 17712523, 17712703, 17712853, 17713021, 17713193, 17713361, 17713543, 17713727, 17713907, 17714077]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17711299 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17711299 17714077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17711299) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17714261, 17714443, 17714597, 17714779, 17714959, 17715121, 17715301, 17715469, 17715647, 17715811, 17715959, 17716123, 17716289, 17716471, 17716639, 17716819]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17714077 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17714077 17716819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17714077) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17716997, 17717171, 17717327, 17717509, 17717669, 17717851, 17718017, 17718187, 17718361, 17718541, 17718707, 17718889, 17719067, 17719249, 17719409, 17719589]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17716819 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17716819 17719589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17716819) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17719759, 17719943, 17720107, 17720291, 17720459, 17720641, 17720803, 17720981, 17721163, 17721331, 17721493, 17721647, 17721817, 17721967, 17722151, 17722333]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17719589 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17719589 17722333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17719589) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17722447, 17722609, 17722787, 17722933, 17723113, 17723297, 17723477, 17723647, 17723821, 17723969, 17724151, 17724331, 17724503, 17724683, 17724821, 17724983]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17722333 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17722333 17724983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17722333) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17725153, 17725321, 17725493, 17725657, 17725837, 17726021, 17726201, 17726383, 17726557, 17726741, 17726911, 17727079, 17727263, 17727431, 17727607, 17727791]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17724983 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17724983 17727791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17724983) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17727971, 17728141, 17728289, 17728471, 17728651, 17728813, 17728973, 17729143, 17729321, 17729497, 17729653, 17729819, 17729989, 17730157, 17730341, 17730499]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17727791 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17727791 17730499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17727791) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17730683, 17730841, 17731019, 17731159, 17731333, 17731517, 17731687, 17731859, 17732041, 17732191, 17732359, 17732531, 17732711, 17732881, 17733049, 17733223]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17730499 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17730499 17733223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17730499) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17733383, 17733559, 17733721, 17733889, 17734033, 17734207, 17734373, 17734537, 17734721, 17734903, 17735071, 17735243, 17735407, 17735563, 17735741, 17735923]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17733223 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17733223 17735923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17733223) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17736097, 17736281, 17736419, 17736601, 17736781, 17736959, 17737121, 17737303, 17737483, 17737663, 17737843, 17738027, 17738167, 17738339, 17738519, 17738689]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17735923 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17735923 17738689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17735923) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17738869, 17739053, 17739191, 17739373, 17739499, 17739661, 17739833, 17739979, 17740159, 17740343, 17740523, 17740687, 17740867, 17741051, 17741221, 17741401]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17738689 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17738689 17741401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17738689) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17653913 17659273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17653913)
    (mid := 17656637) (hi := 17659273) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17659273 17664841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17659273)
    (mid := 17662037) (hi := 17664841) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17664841 17670113 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17664841)
    (mid := 17667449) (hi := 17670113) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17670113 17675533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17670113)
    (mid := 17672909) (hi := 17675533) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17675533 17681143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17675533)
    (mid := 17678359) (hi := 17681143) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17681143 17686699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17681143)
    (mid := 17683873) (hi := 17686699) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17686699 17692261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17686699)
    (mid := 17689447) (hi := 17692261) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17692261 17697781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17692261)
    (mid := 17695021) (hi := 17697781) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17697781 17703197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17697781)
    (mid := 17700493) (hi := 17703197) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17703197 17708659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17703197)
    (mid := 17705983) (hi := 17708659) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17708659 17714077 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17708659)
    (mid := 17711299) (hi := 17714077) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17714077 17719589 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17714077)
    (mid := 17716819) (hi := 17719589) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17719589 17724983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17719589)
    (mid := 17722333) (hi := 17724983) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17724983 17730499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17724983)
    (mid := 17727791) (hi := 17730499) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17730499 17735923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17730499)
    (mid := 17733223) (hi := 17735923) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17735923 17741401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17735923)
    (mid := 17738689) (hi := 17741401) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17653913 17664841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17653913)
    (mid := 17659273) (hi := 17664841) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17664841 17675533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17664841)
    (mid := 17670113) (hi := 17675533) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17675533 17686699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17675533)
    (mid := 17681143) (hi := 17686699) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17686699 17697781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17686699)
    (mid := 17692261) (hi := 17697781) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17697781 17708659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17697781)
    (mid := 17703197) (hi := 17708659) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17708659 17719589 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17708659)
    (mid := 17714077) (hi := 17719589) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17719589 17730499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17719589)
    (mid := 17724983) (hi := 17730499) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17730499 17741401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17730499)
    (mid := 17735923) (hi := 17741401) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17653913 17675533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17653913)
    (mid := 17664841) (hi := 17675533) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17675533 17697781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17675533)
    (mid := 17686699) (hi := 17697781) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17697781 17719589 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17697781)
    (mid := 17708659) (hi := 17719589) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17719589 17741401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17719589)
    (mid := 17730499) (hi := 17741401) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17653913 17697781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17653913)
    (mid := 17675533) (hi := 17697781) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17697781 17741401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17697781)
    (mid := 17719589) (hi := 17741401) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17653913 17741401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17653913)
    (mid := 17697781) (hi := 17741401) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17653913 17741401 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block201

#print axioms B699MiddleExtension.PrimorialBlocks.Block201.joined
