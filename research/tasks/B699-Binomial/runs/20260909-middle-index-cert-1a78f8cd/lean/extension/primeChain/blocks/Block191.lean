import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block191

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16780273, 16780453, 16780633, 16780817, 16780997, 16781147, 16781327, 16781483, 16781647, 16781827, 16782011, 16782167, 16782347, 16782527, 16782691, 16782841]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16780091 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16780091 16782841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16780091) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16783007, 16783189, 16783367, 16783549, 16783727, 16783909, 16784077, 16784231, 16784407, 16784587, 16784767, 16784891, 16785073, 16785257, 16785427, 16785611]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16782841 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16782841 16785611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16782841) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16785793, 16785961, 16786129, 16786313, 16786487, 16786669, 16786843, 16787009, 16787191, 16787359, 16787527, 16787711, 16787831, 16787987, 16788169, 16788341]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16785611 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16785611 16788341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16785611) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16788521, 16788703, 16788881, 16789037, 16789219, 16789403, 16789567, 16789733, 16789907, 16790087, 16790269, 16790447, 16790629, 16790801, 16790981, 16791161]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16788341 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16788341 16791161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16788341) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16791337, 16791517, 16791661, 16791833, 16791967, 16792133, 16792291, 16792459, 16792631, 16792807, 16792969, 16793137, 16793317, 16793489, 16793669, 16793839]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16791161 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16791161 16793839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16791161) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16794023, 16794203, 16794383, 16794563, 16794737, 16794913, 16795081, 16795249, 16795433, 16795577, 16795759, 16795939, 16796099, 16796281, 16796447, 16796623]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16793839 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16793839 16796623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16793839) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16796807, 16796971, 16797127, 16797307, 16797491, 16797611, 16797779, 16797953, 16798123, 16798283, 16798459, 16798637, 16798799, 16798963, 16799143, 16799317]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16796623 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16796623 16799317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16796623) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16799501, 16799659, 16799831, 16799989, 16800167, 16800349, 16800473, 16800653, 16800829, 16801007, 16801177, 16801333, 16801507, 16801679, 16801853, 16802021]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16799317 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16799317 16802021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16799317) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16802189, 16802369, 16802521, 16802659, 16802839, 16802993, 16803169, 16803349, 16803517, 16803679, 16803827, 16804003, 16804171, 16804349, 16804523, 16804679]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16802021 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16802021 16804679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16802021) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16804861, 16805023, 16805183, 16805353, 16805521, 16805687, 16805869, 16806043, 16806211, 16806373, 16806551, 16806707, 16806877, 16807057, 16807207, 16807387]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16804679 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16804679 16807387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16804679) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16807547, 16807729, 16807897, 16808059, 16808221, 16808381, 16808551, 16808713, 16808881, 16809061, 16809229, 16809407, 16809557, 16809739, 16809913, 16810097]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16807387 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16807387 16810097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16807387) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16810279, 16810439, 16810621, 16810793, 16810933, 16811087, 16811261, 16811423, 16811603, 16811771, 16811923, 16812073, 16812251, 16812413, 16812577, 16812749]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16810097 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16810097 16812749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16810097) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16812907, 16813091, 16813249, 16813399, 16813553, 16813729, 16813913, 16814093, 16814269, 16814453, 16814627, 16814773, 16814957, 16815137, 16815319, 16815503]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16812749 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16812749 16815503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16812749) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16815683, 16815859, 16816039, 16816223, 16816403, 16816573, 16816753, 16816931, 16817113, 16817293, 16817461, 16817629, 16817809, 16817987, 16818163, 16818343]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16815503 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16815503 16818343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16815503) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16818517, 16818677, 16818853, 16819013, 16819183, 16819343, 16819513, 16819697, 16819871, 16820053, 16820233, 16820413, 16820597, 16820761, 16820929, 16821083]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16818343 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16818343 16821083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16818343) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16821227, 16821407, 16821587, 16821733, 16821913, 16822097, 16822261, 16822409, 16822583, 16822727, 16822909, 16823087, 16823249, 16823399, 16823579, 16823753]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16821083 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16821083 16823753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16821083) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16823923, 16824097, 16824281, 16824439, 16824623, 16824793, 16824953, 16825111, 16825271, 16825453, 16825637, 16825799, 16825979, 16826137, 16826321, 16826473]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16823753 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16823753 16826473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16823753) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16826633, 16826807, 16826959, 16827143, 16827313, 16827469, 16827649, 16827829, 16828003, 16828177, 16828337, 16828489, 16828667, 16828849, 16829011, 16829179]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16826473 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16826473 16829179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16826473) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16829341, 16829521, 16829671, 16829851, 16830031, 16830211, 16830389, 16830533, 16830707, 16830889, 16831069, 16831253, 16831433, 16831613, 16831783, 16831943]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16829179 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16829179 16831943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16829179) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16832089, 16832269, 16832449, 16832633, 16832807, 16832971, 16833121, 16833287, 16833431, 16833577, 16833737, 16833919, 16834099, 16834283, 16834463, 16834637]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16831943 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16831943 16834637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16831943) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16834799, 16834957, 16835131, 16835309, 16835459, 16835639, 16835809, 16835971, 16836151, 16836319, 16836493, 16836643, 16836803, 16836971, 16837141, 16837321]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16834637 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16834637 16837321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16834637) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16837493, 16837673, 16837813, 16837969, 16838137, 16838317, 16838491, 16838651, 16838819, 16838981, 16839157, 16839341, 16839523, 16839689, 16839863, 16840009]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16837321 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16837321 16840009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16837321) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16840171, 16840349, 16840519, 16840633, 16840799, 16840981, 16841159, 16841329, 16841501, 16841683, 16841833, 16842017, 16842193, 16842361, 16842523, 16842673]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16840009 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16840009 16842673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16840009) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16842851, 16843031, 16843201, 16843373, 16843553, 16843711, 16843891, 16844063, 16844231, 16844413, 16844593, 16844771, 16844951, 16845067, 16845251, 16845403]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16842673 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16842673 16845403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16842673) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16845581, 16845757, 16845919, 16846079, 16846253, 16846399, 16846573, 16846751, 16846933, 16847113, 16847297, 16847473, 16847653, 16847837, 16847977, 16848151]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16845403 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16845403 16848151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16845403) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16848317, 16848493, 16848677, 16848851, 16849013, 16849187, 16849369, 16849549, 16849727, 16849909, 16850089, 16850269, 16850423, 16850599, 16850783, 16850963]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16848151 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16848151 16850963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16848151) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16851127, 16851299, 16851473, 16851649, 16851833, 16852013, 16852193, 16852361, 16852543, 16852709, 16852883, 16853063, 16853201, 16853363, 16853533, 16853717]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16850963 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16850963 16853717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16850963) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16853861, 16854029, 16854209, 16854389, 16854559, 16854743, 16854913, 16855079, 16855249, 16855427, 16855591, 16855771, 16855921, 16856101, 16856269, 16856443]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16853717 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16853717 16856443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16853717) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16856621, 16856767, 16856921, 16857103, 16857287, 16857457, 16857641, 16857823, 16858003, 16858183, 16858351, 16858519, 16858687, 16858867, 16859047, 16859221]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16856443 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16856443 16859221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16856443) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16859387, 16859543, 16859693, 16859867, 16860047, 16860211, 16860367, 16860551, 16860721, 16860887, 16861067, 16861223, 16861387, 16861571, 16861753, 16861937]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16859221 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16859221 16861937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16859221) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16862119, 16862299, 16862467, 16862647, 16862831, 16862987, 16863137, 16863313, 16863481, 16863617, 16863799, 16863943, 16864103, 16864277, 16864447, 16864621]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16861937 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16861937 16864621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16861937) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16864801, 16864943, 16865119, 16865231, 16865413, 16865593, 16865777, 16865929, 16866103, 16866251, 16866427, 16866611, 16866791, 16866961, 16867121, 16867283]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16864621 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16864621 16867283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16864621) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16780091 16785611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16780091)
    (mid := 16782841) (hi := 16785611) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16785611 16791161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16785611)
    (mid := 16788341) (hi := 16791161) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16791161 16796623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16791161)
    (mid := 16793839) (hi := 16796623) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16796623 16802021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16796623)
    (mid := 16799317) (hi := 16802021) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16802021 16807387 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16802021)
    (mid := 16804679) (hi := 16807387) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16807387 16812749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16807387)
    (mid := 16810097) (hi := 16812749) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16812749 16818343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16812749)
    (mid := 16815503) (hi := 16818343) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16818343 16823753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16818343)
    (mid := 16821083) (hi := 16823753) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16823753 16829179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16823753)
    (mid := 16826473) (hi := 16829179) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16829179 16834637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16829179)
    (mid := 16831943) (hi := 16834637) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16834637 16840009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16834637)
    (mid := 16837321) (hi := 16840009) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16840009 16845403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16840009)
    (mid := 16842673) (hi := 16845403) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16845403 16850963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16845403)
    (mid := 16848151) (hi := 16850963) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16850963 16856443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16850963)
    (mid := 16853717) (hi := 16856443) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16856443 16861937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16856443)
    (mid := 16859221) (hi := 16861937) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16861937 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16861937)
    (mid := 16864621) (hi := 16867283) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16780091 16791161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16780091)
    (mid := 16785611) (hi := 16791161) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16791161 16802021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16791161)
    (mid := 16796623) (hi := 16802021) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16802021 16812749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16802021)
    (mid := 16807387) (hi := 16812749) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16812749 16823753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16812749)
    (mid := 16818343) (hi := 16823753) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16823753 16834637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16823753)
    (mid := 16829179) (hi := 16834637) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16834637 16845403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16834637)
    (mid := 16840009) (hi := 16845403) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16845403 16856443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16845403)
    (mid := 16850963) (hi := 16856443) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16856443 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16856443)
    (mid := 16861937) (hi := 16867283) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16780091 16802021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16780091)
    (mid := 16791161) (hi := 16802021) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16802021 16823753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16802021)
    (mid := 16812749) (hi := 16823753) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16823753 16845403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16823753)
    (mid := 16834637) (hi := 16845403) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16845403 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16845403)
    (mid := 16856443) (hi := 16867283) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16780091 16823753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16780091)
    (mid := 16802021) (hi := 16823753) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16823753 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16823753)
    (mid := 16845403) (hi := 16867283) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16780091 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16780091)
    (mid := 16823753) (hi := 16867283) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16780091 16867283 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block191

#print axioms B699MiddleExtension.PrimorialBlocks.Block191.joined
