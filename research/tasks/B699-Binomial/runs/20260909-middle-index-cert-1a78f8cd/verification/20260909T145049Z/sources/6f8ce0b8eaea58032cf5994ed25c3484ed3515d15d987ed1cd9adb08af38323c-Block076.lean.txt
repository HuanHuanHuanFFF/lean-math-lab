import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block076

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6712591, 6712753, 6712933, 6713107, 6713279, 6713431, 6713579, 6713747, 6713923, 6714107, 6714263, 6714443, 6714607, 6714787, 6714947, 6715129]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6712421 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6712421 6715129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6712421) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6715309, 6715483, 6715649, 6715831, 6716011, 6716191, 6716363, 6716539, 6716701, 6716873, 6717047, 6717229, 6717413, 6717593, 6717769, 6717947]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6715129 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6715129 6717947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6715129) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6718099, 6718273, 6718447, 6718589, 6718771, 6718939, 6719117, 6719299, 6719477, 6719639, 6719813, 6719989, 6720173, 6720353, 6720533, 6720697]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6717947 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6717947 6720697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6717947) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6720841, 6721019, 6721199, 6721381, 6721553, 6721733, 6721879, 6722063, 6722239, 6722423, 6722603, 6722767, 6722929, 6723113, 6723293, 6723461]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6720697 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6720697 6723461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6720697) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6723643, 6723803, 6723979, 6724139, 6724307, 6724477, 6724649, 6724831, 6724999, 6725167, 6725347, 6725531, 6725687, 6725861, 6726023, 6726191]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6723461 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6723461 6726191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6723461) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6726367, 6726547, 6726697, 6726821, 6726991, 6727163, 6727337, 6727519, 6727703, 6727879, 6728047, 6728231, 6728401, 6728569, 6728749, 6728881]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6726191 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6726191 6728881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6726191) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6729061, 6729241, 6729419, 6729589, 6729727, 6729911, 6730093, 6730277, 6730391, 6730571, 6730727, 6730909, 6731083, 6731267, 6731449, 6731633]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6728881 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6728881 6731633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6728881) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6731797, 6731981, 6732163, 6732347, 6732529, 6732709, 6732893, 6733073, 6733253, 6733393, 6733511, 6733681, 6733861, 6734033, 6734213, 6734383]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6731633 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6731633 6734383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6731633) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6734543, 6734713, 6734891, 6735049, 6735229, 6735413, 6735581, 6735763, 6735947, 6736129, 6736297, 6736481, 6736663, 6736841, 6737021, 6737177]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6734383 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6734383 6737177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6734383) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6737351, 6737531, 6737707, 6737891, 6738059, 6738233, 6738383, 6738553, 6738727, 6738899, 6739067, 6739231, 6739409, 6739591, 6739771, 6739921]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6737177 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6737177 6739921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6737177) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6740099, 6740273, 6740443, 6740597, 6740761, 6740941, 6741113, 6741269, 6741451, 6741619, 6741799, 6741961, 6742117, 6742279, 6742459, 6742643]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6739921 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6739921 6742643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6739921) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6742817, 6742997, 6743173, 6743357, 6743533, 6743717, 6743887, 6744071, 6744253, 6744433, 6744613, 6744781, 6744961, 6745129, 6745307, 6745483]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6742643 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6742643 6745483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6742643) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6745667, 6745841, 6745997, 6746171, 6746353, 6746533, 6746717, 6746863, 6747043, 6747193, 6747373, 6747557, 6747733, 6747899, 6748051, 6748229]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6745483 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6745483 6748229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6745483) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6748411, 6748583, 6748691, 6748849, 6749033, 6749213, 6749383, 6749563, 6749747, 6749927, 6750103, 6750259, 6750439, 6750617, 6750797, 6750973]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6748229 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6748229 6750973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6748229) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6751153, 6751337, 6751513, 6751687, 6751861, 6752033, 6752197, 6752381, 6752539, 6752623, 6752807, 6752957, 6753119, 6753293, 6753469, 6753619]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6750973 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6750973 6753619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6750973) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6753779, 6753953, 6754087, 6754271, 6754453, 6754607, 6754771, 6754889, 6755071, 6755249, 6755417, 6755599, 6755779, 6755909, 6756091, 6756263]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6753619 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6753619 6756263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6753619) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6756439, 6756619, 6756721, 6756901, 6757073, 6757249, 6757433, 6757603, 6757759, 6757937, 6758117, 6758293, 6758473, 6758593, 6758777, 6758959]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6756263 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6756263 6758959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6756263) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6759139, 6759317, 6759499, 6759679, 6759847, 6760009, 6760189, 6760363, 6760547, 6760727, 6760909, 6761059, 6761239, 6761411, 6761569, 6761723]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6758959 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6758959 6761723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6758959) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6761897, 6762071, 6762221, 6762373, 6762551, 6762697, 6762881, 6763063, 6763243, 6763423, 6763607, 6763787, 6763903, 6764083, 6764239, 6764423]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6761723 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6761723 6764423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6761723) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6764591, 6764773, 6764941, 6765113, 6765263, 6765443, 6765623, 6765799, 6765977, 6766141, 6766321, 6766499, 6766667, 6766843, 6767017, 6767197]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6764423 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6764423 6767197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6764423) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6767351, 6767533, 6767689, 6767869, 6768053, 6768221, 6768383, 6768557, 6768721, 6768889, 6769051, 6769229, 6769403, 6769583, 6769759, 6769937]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6767197 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6767197 6769937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6767197) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6770117, 6770287, 6770459, 6770611, 6770789, 6770941, 6771119, 6771283, 6771451, 6771631, 6771803, 6771979, 6772163, 6772343, 6772483, 6772657]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6769937 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6769937 6772657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6769937) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6772837, 6773003, 6773171, 6773303, 6773483, 6773659, 6773843, 6774017, 6774191, 6774359, 6774541, 6774683, 6774847, 6775007, 6775177, 6775337]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6772657 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6772657 6775337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6772657) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6775519, 6775693, 6775861, 6776041, 6776207, 6776351, 6776519, 6776689, 6776873, 6777049, 6777229, 6777413, 6777583, 6777739, 6777923, 6778099]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6775337 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6775337 6778099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6775337) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6778283, 6778463, 6778643, 6778823, 6778973, 6779153, 6779323, 6779501, 6779683, 6779863, 6780031, 6780157, 6780329, 6780503, 6780679, 6780863]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6778099 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6778099 6780863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6778099) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6781037, 6781193, 6781337, 6781501, 6781667, 6781843, 6782021, 6782197, 6782381, 6782561, 6782719, 6782903, 6783083, 6783263, 6783433, 6783613]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6780863 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6780863 6783613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6780863) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6783797, 6783971, 6784123, 6784303, 6784457, 6784627, 6784807, 6784961, 6785117, 6785293, 6785477, 6785651, 6785791, 6785969, 6786149, 6786323]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6783613 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6783613 6786323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6783613) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6786473, 6786649, 6786833, 6786943, 6787091, 6787273, 6787457, 6787639, 6787801, 6787961, 6788143, 6788323, 6788477, 6788651, 6788801, 6788983]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6786323 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6786323 6788983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6786323) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6789157, 6789323, 6789499, 6789637, 6789793, 6789977, 6790159, 6790261, 6790411, 6790583, 6790759, 6790933, 6791111, 6791287, 6791471, 6791623]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6788983 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6788983 6791623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6788983) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6791803, 6791971, 6792143, 6792319, 6792491, 6792631, 6792811, 6792983, 6793153, 6793321, 6793499, 6793669, 6793847, 6794023, 6794173, 6794357]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6791623 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6791623 6794357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6791623) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6794539, 6794719, 6794899, 6795083, 6795263, 6795433, 6795617, 6795793, 6795967, 6796147, 6796313, 6796487, 6796649, 6796831, 6797009, 6797177]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6794357 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6794357 6797177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6794357) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6797353, 6797537, 6797701, 6797873, 6798053, 6798227, 6798401, 6798551, 6798719, 6798901, 6799081, 6799229, 6799391, 6799561, 6799729, 6799907]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6797177 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6797177 6799907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6797177) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6712421 6717947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6712421)
    (mid := 6715129) (hi := 6717947) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6717947 6723461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6717947)
    (mid := 6720697) (hi := 6723461) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6723461 6728881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6723461)
    (mid := 6726191) (hi := 6728881) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6728881 6734383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6728881)
    (mid := 6731633) (hi := 6734383) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6734383 6739921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6734383)
    (mid := 6737177) (hi := 6739921) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6739921 6745483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6739921)
    (mid := 6742643) (hi := 6745483) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6745483 6750973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6745483)
    (mid := 6748229) (hi := 6750973) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6750973 6756263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6750973)
    (mid := 6753619) (hi := 6756263) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6756263 6761723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6756263)
    (mid := 6758959) (hi := 6761723) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6761723 6767197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6761723)
    (mid := 6764423) (hi := 6767197) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6767197 6772657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6767197)
    (mid := 6769937) (hi := 6772657) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6772657 6778099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6772657)
    (mid := 6775337) (hi := 6778099) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6778099 6783613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6778099)
    (mid := 6780863) (hi := 6783613) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6783613 6788983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6783613)
    (mid := 6786323) (hi := 6788983) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6788983 6794357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6788983)
    (mid := 6791623) (hi := 6794357) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6794357 6799907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6794357)
    (mid := 6797177) (hi := 6799907) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6712421 6723461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6712421)
    (mid := 6717947) (hi := 6723461) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6723461 6734383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6723461)
    (mid := 6728881) (hi := 6734383) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6734383 6745483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6734383)
    (mid := 6739921) (hi := 6745483) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6745483 6756263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6745483)
    (mid := 6750973) (hi := 6756263) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6756263 6767197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6756263)
    (mid := 6761723) (hi := 6767197) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6767197 6778099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6767197)
    (mid := 6772657) (hi := 6778099) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6778099 6788983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6778099)
    (mid := 6783613) (hi := 6788983) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6788983 6799907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6788983)
    (mid := 6794357) (hi := 6799907) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6712421 6734383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6712421)
    (mid := 6723461) (hi := 6734383) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6734383 6756263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6734383)
    (mid := 6745483) (hi := 6756263) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6756263 6778099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6756263)
    (mid := 6767197) (hi := 6778099) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6778099 6799907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6778099)
    (mid := 6788983) (hi := 6799907) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6712421 6756263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6712421)
    (mid := 6734383) (hi := 6756263) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6756263 6799907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6756263)
    (mid := 6778099) (hi := 6799907) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6712421 6799907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6712421)
    (mid := 6756263) (hi := 6799907) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6712421 6799907 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block076

#print axioms B699MiddleExtension.PrimorialBlocks.Block076.joined
