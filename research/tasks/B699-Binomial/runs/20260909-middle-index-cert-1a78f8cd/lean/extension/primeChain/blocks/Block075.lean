import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block075

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6624619, 6624803, 6624973, 6625153, 6625321, 6625501, 6625673, 6625841, 6625987, 6626161, 6626341, 6626513, 6626693, 6626863, 6627043, 6627217]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6624439 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6624439 6627217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6624439) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6627391, 6627557, 6627737, 6627917, 6628099, 6628277, 6628423, 6628607, 6628781, 6628943, 6629113, 6629291, 6629471, 6629647, 6629807, 6629969]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6627217 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6627217 6629969 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6627217) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6630137, 6630319, 6630499, 6630661, 6630839, 6631021, 6631193, 6631369, 6631553, 6631733, 6631913, 6632063, 6632239, 6632413, 6632573, 6632723]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6629969 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6629969 6632723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6629969) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6632887, 6633047, 6633229, 6633391, 6633569, 6633749, 6633931, 6634109, 6634241, 6634423, 6634597, 6634769, 6634949, 6635129, 6635311, 6635467]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6632723 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6632723 6635467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6632723) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6635633, 6635813, 6635963, 6636127, 6636293, 6636467, 6636611, 6636781, 6636961, 6637139, 6637321, 6637487, 6637651, 6637819, 6637997, 6638179]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6635467 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6635467 6638179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6635467) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6638363, 6638531, 6638701, 6638851, 6639013, 6639119, 6639293, 6639467, 6639641, 6639823, 6640003, 6640181, 6640349, 6640511, 6640687, 6640849]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6638179 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6638179 6640849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6638179) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6641027, 6641197, 6641381, 6641563, 6641729, 6641903, 6642079, 6642211, 6642379, 6642553, 6642709, 6642893, 6643069, 6643249, 6643423, 6643607]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6640849 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6640849 6643607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6640849) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6643789, 6643969, 6644153, 6644327, 6644503, 6644681, 6644863, 6645047, 6645227, 6645391, 6645571, 6645739, 6645923, 6646049, 6646231, 6646403]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6643607 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6643607 6646403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6643607) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6646579, 6646699, 6646883, 6647059, 6647243, 6647411, 6647593, 6647761, 6647939, 6648121, 6648287, 6648457, 6648637, 6648809, 6648991, 6649163]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6646403 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6646403 6649163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6646403) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6649337, 6649483, 6649661, 6649837, 6650011, 6650153, 6650333, 6650507, 6650687, 6650869, 6651053, 6651223, 6651401, 6651583, 6651727, 6651907]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6649163 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6649163 6651907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6649163) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6652091, 6652273, 6652453, 6652621, 6652801, 6652979, 6653159, 6653329, 6653501, 6653683, 6653839, 6654019, 6654173, 6654353, 6654533, 6654679]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6651907 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6651907 6654679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6651907) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6654859, 6655037, 6655199, 6655379, 6655549, 6655729, 6655907, 6656077, 6656261, 6656437, 6656621, 6656779, 6656963, 6657109, 6657283, 6657461]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6654679 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6654679 6657461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6654679) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6657631, 6657811, 6657979, 6658159, 6658331, 6658511, 6658667, 6658843, 6659027, 6659209, 6659377, 6659561, 6659713, 6659893, 6660061, 6660239]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6657461 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6657461 6660239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6657461) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6660421, 6660601, 6660781, 6660959, 6661141, 6661313, 6661493, 6661661, 6661783, 6661957, 6662137, 6662309, 6662477, 6662651, 6662813, 6662993]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6660239 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6660239 6662993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6660239) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6663121, 6663299, 6663469, 6663653, 6663829, 6663971, 6664139, 6664321, 6664501, 6664667, 6664843, 6665017, 6665201, 6665383, 6665567, 6665741]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6662993 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6662993 6665741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6662993) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6665917, 6666097, 6666269, 6666449, 6666617, 6666797, 6666977, 6667159, 6667343, 6667523, 6667693, 6667873, 6668047, 6668213, 6668381, 6668549]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6665741 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6665741 6668549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6665741) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6668731, 6668911, 6669071, 6669251, 6669413, 6669587, 6669769, 6669947, 6670109, 6670291, 6670457, 6670637, 6670819, 6671003, 6671167, 6671341]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6668549 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6668549 6671341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6668549) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6671519, 6671683, 6671839, 6672019, 6672191, 6672359, 6672529, 6672703, 6672881, 6673033, 6673193, 6673369, 6673553, 6673717, 6673889, 6674069]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6671341 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6671341 6674069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6671341) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6674249, 6674429, 6674599, 6674779, 6674963, 6675131, 6675311, 6675463, 6675601, 6675769, 6675953, 6676123, 6676301, 6676471, 6676651, 6676829]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6674069 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6674069 6676829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6674069) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6676991, 6677173, 6677357, 6677537, 6677707, 6677887, 6678037, 6678209, 6678383, 6678523, 6678703, 6678883, 6679067, 6679247, 6679423, 6679579]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6676829 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6676829 6679579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6676829) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6679763, 6679931, 6680111, 6680287, 6680441, 6680621, 6680797, 6680981, 6681161, 6681329, 6681511, 6681683, 6681847, 6682021, 6682183, 6682363]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6679579 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6679579 6682363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6679579) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6682483, 6682609, 6682787, 6682969, 6683143, 6683293, 6683477, 6683641, 6683821, 6684001, 6684163, 6684343, 6684527, 6684707, 6684869, 6685043]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6682363 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6682363 6685043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6682363) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6685201, 6685379, 6685543, 6685717, 6685867, 6686051, 6686227, 6686363, 6686539, 6686723, 6686893, 6687077, 6687251, 6687427, 6687589, 6687773]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6685043 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6685043 6687773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6685043) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6687931, 6688111, 6688273, 6688457, 6688639, 6688813, 6688967, 6689147, 6689327, 6689503, 6689681, 6689821, 6690001, 6690179, 6690361, 6690517]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6687773 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6687773 6690517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6687773) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6690701, 6690881, 6691057, 6691231, 6691411, 6691577, 6691723, 6691903, 6692087, 6692269, 6692443, 6692603, 6692771, 6692953, 6693133, 6693311]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6690517 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6690517 6693311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6690517) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6693487, 6693649, 6693829, 6694013, 6694183, 6694367, 6694537, 6694711, 6694879, 6695041, 6695219, 6695393, 6695561, 6695743, 6695903, 6696083]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6693311 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6693311 6696083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6693311) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6696259, 6696383, 6696553, 6696707, 6696871, 6697051, 6697219, 6697403, 6697573, 6697751, 6697921, 6698099, 6698281, 6698441, 6698611, 6698777]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6696083 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6696083 6698777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6696083) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6698953, 6699103, 6699281, 6699439, 6699619, 6699793, 6699977, 6700157, 6700327, 6700501, 6700657, 6700831, 6701003, 6701159, 6701341, 6701483]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6698777 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6698777 6701483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6698777) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6701641, 6701803, 6701977, 6702149, 6702317, 6702473, 6702653, 6702833, 6703003, 6703159, 6703337, 6703513, 6703691, 6703867, 6704051, 6704213]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6701483 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6701483 6704213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6701483) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6704377, 6704557, 6704741, 6704923, 6705091, 6705247, 6705389, 6705563, 6705733, 6705911, 6706081, 6706253, 6706423, 6706597, 6706781, 6706957]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6704213 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6704213 6706957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6704213) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6707137, 6707293, 6707461, 6707633, 6707807, 6707971, 6708113, 6708283, 6708439, 6708619, 6708799, 6708983, 6709163, 6709331, 6709513, 6709693]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6706957 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6706957 6709693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6706957) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6709877, 6710047, 6710219, 6710399, 6710569, 6710747, 6710929, 6711113, 6711253, 6711437, 6711587, 6711743, 6711877, 6712061, 6712243, 6712421]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6709693 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6709693 6712421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6709693) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6624439 6629969 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6624439)
    (mid := 6627217) (hi := 6629969) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6629969 6635467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6629969)
    (mid := 6632723) (hi := 6635467) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6635467 6640849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6635467)
    (mid := 6638179) (hi := 6640849) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6640849 6646403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6640849)
    (mid := 6643607) (hi := 6646403) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6646403 6651907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6646403)
    (mid := 6649163) (hi := 6651907) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6651907 6657461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6651907)
    (mid := 6654679) (hi := 6657461) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6657461 6662993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6657461)
    (mid := 6660239) (hi := 6662993) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6662993 6668549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6662993)
    (mid := 6665741) (hi := 6668549) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6668549 6674069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6668549)
    (mid := 6671341) (hi := 6674069) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6674069 6679579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6674069)
    (mid := 6676829) (hi := 6679579) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6679579 6685043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6679579)
    (mid := 6682363) (hi := 6685043) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6685043 6690517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6685043)
    (mid := 6687773) (hi := 6690517) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6690517 6696083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6690517)
    (mid := 6693311) (hi := 6696083) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6696083 6701483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6696083)
    (mid := 6698777) (hi := 6701483) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6701483 6706957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6701483)
    (mid := 6704213) (hi := 6706957) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6706957 6712421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6706957)
    (mid := 6709693) (hi := 6712421) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6624439 6635467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6624439)
    (mid := 6629969) (hi := 6635467) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6635467 6646403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6635467)
    (mid := 6640849) (hi := 6646403) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6646403 6657461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6646403)
    (mid := 6651907) (hi := 6657461) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6657461 6668549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6657461)
    (mid := 6662993) (hi := 6668549) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6668549 6679579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6668549)
    (mid := 6674069) (hi := 6679579) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6679579 6690517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6679579)
    (mid := 6685043) (hi := 6690517) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6690517 6701483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6690517)
    (mid := 6696083) (hi := 6701483) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6701483 6712421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6701483)
    (mid := 6706957) (hi := 6712421) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6624439 6646403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6624439)
    (mid := 6635467) (hi := 6646403) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6646403 6668549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6646403)
    (mid := 6657461) (hi := 6668549) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6668549 6690517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6668549)
    (mid := 6679579) (hi := 6690517) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6690517 6712421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6690517)
    (mid := 6701483) (hi := 6712421) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6624439 6668549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6624439)
    (mid := 6646403) (hi := 6668549) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6668549 6712421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6668549)
    (mid := 6690517) (hi := 6712421) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6624439 6712421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6624439)
    (mid := 6668549) (hi := 6712421) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6624439 6712421 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block075

#print axioms B699MiddleExtension.PrimorialBlocks.Block075.joined
