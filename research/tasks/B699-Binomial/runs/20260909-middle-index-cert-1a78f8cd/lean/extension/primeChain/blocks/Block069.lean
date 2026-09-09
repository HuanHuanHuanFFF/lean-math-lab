import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block069

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6097213, 6097381, 6097547, 6097717, 6097877, 6098051, 6098171, 6098341, 6098513, 6098669, 6098849, 6099029, 6099199, 6099371, 6099547, 6099727]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6097031 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6097031 6099727 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6097031) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6099887, 6100067, 6100223, 6100379, 6100561, 6100733, 6100907, 6101089, 6101269, 6101449, 6101621, 6101791, 6101959, 6102139, 6102323, 6102497]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6099727 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6099727 6102497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6099727) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6102631, 6102793, 6102977, 6103133, 6103283, 6103453, 6103637, 6103819, 6103987, 6104171, 6104353, 6104537, 6104713, 6104869, 6105049, 6105223]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6102497 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6102497 6105223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6102497) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6105391, 6105571, 6105727, 6105899, 6106081, 6106249, 6106427, 6106609, 6106787, 6106939, 6107119, 6107293, 6107461, 6107623, 6107779, 6107953]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6105223 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6105223 6107953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6105223) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6108131, 6108313, 6108497, 6108679, 6108863, 6109043, 6109223, 6109399, 6109567, 6109751, 6109907, 6110087, 6110263, 6110443, 6110623, 6110789]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6107953 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6107953 6110789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6107953) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6110971, 6111151, 6111317, 6111499, 6111683, 6111839, 6112009, 6112187, 6112361, 6112541, 6112723, 6112907, 6113087, 6113213, 6113363, 6113539]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6110789 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6110789 6113539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6110789) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6113711, 6113893, 6114077, 6114259, 6114419, 6114593, 6114767, 6114929, 6115111, 6115289, 6115441, 6115579, 6115741, 6115919, 6116057, 6116239]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6113539 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6113539 6116239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6113539) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6116401, 6116573, 6116731, 6116867, 6117037, 6117203, 6117383, 6117557, 6117721, 6117901, 6118031, 6118199, 6118381, 6118561, 6118729, 6118891]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6116239 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6116239 6118891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6116239) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6119053, 6119233, 6119417, 6119599, 6119777, 6119959, 6120097, 6120269, 6120449, 6120607, 6120787, 6120971, 6121121, 6121261, 6121441, 6121607]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6118891 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6118891 6121607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6118891) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6121771, 6121949, 6122107, 6122287, 6122461, 6122621, 6122803, 6122983, 6123163, 6123317, 6123499, 6123683, 6123863, 6124021, 6124169, 6124331]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6121607 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6121607 6124331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6121607) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6124513, 6124691, 6124873, 6125057, 6125233, 6125417, 6125599, 6125783, 6125957, 6126139, 6126317, 6126481, 6126649, 6126829, 6126971, 6127153]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6124331 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6124331 6127153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6124331) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6127337, 6127501, 6127679, 6127859, 6128039, 6128207, 6128387, 6128567, 6128737, 6128921, 6129089, 6129271, 6129449, 6129631, 6129811, 6129973]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6127153 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6127153 6129973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6127153) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6130153, 6130337, 6130517, 6130699, 6130849, 6130997, 6131131, 6131311, 6131491, 6131669, 6131821, 6131999, 6132179, 6132353, 6132523, 6132673]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6129973 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6129973 6132673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6129973) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6132857, 6133037, 6133207, 6133373, 6133537, 6133669, 6133843, 6134021, 6134197, 6134369, 6134551, 6134699, 6134881, 6135053, 6135223, 6135397]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6132673 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6132673 6135397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6132673) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6135581, 6135743, 6135919, 6136087, 6136271, 6136451, 6136631, 6136807, 6136979, 6137137, 6137317, 6137501, 6137653, 6137837, 6138019, 6138193]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6135397 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6135397 6138193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6135397) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6138371, 6138523, 6138689, 6138871, 6139051, 6139219, 6139391, 6139559, 6139741, 6139921, 6140087, 6140269, 6140441, 6140593, 6140777, 6140957]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6138193 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6138193 6140957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6138193) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6141137, 6141281, 6141463, 6141613, 6141797, 6141977, 6142153, 6142327, 6142501, 6142663, 6142841, 6143003, 6143167, 6143339, 6143521, 6143693]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6140957 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6140957 6143693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6140957) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6143861, 6144043, 6144223, 6144403, 6144583, 6144763, 6144911, 6145081, 6145261, 6145429, 6145609, 6145793, 6145961, 6146141, 6146303, 6146473]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6143693 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6143693 6146473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6143693) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6146629, 6146783, 6146939, 6147079, 6147263, 6147443, 6147619, 6147793, 6147959, 6148141, 6148313, 6148489, 6148673, 6148853, 6149023, 6149207]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6146473 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6146473 6149207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6146473) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6149389, 6149557, 6149723, 6149893, 6150077, 6150259, 6150437, 6150589, 6150743, 6150919, 6151091, 6151273, 6151427, 6151597, 6151777, 6151961]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6149207 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6149207 6151961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6149207) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6152131, 6152281, 6152459, 6152639, 6152803, 6152981, 6153163, 6153331, 6153509, 6153683, 6153839, 6154019, 6154189, 6154361, 6154541, 6154723]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6151961 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6151961 6154723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6151961) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6154853, 6155033, 6155179, 6155353, 6155537, 6155713, 6155873, 6156049, 6156229, 6156407, 6156583, 6156767, 6156937, 6157103, 6157271, 6157453]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6154723 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6154723 6157453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6154723) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6157637, 6157819, 6158003, 6158183, 6158333, 6158513, 6158689, 6158861, 6159031, 6159203, 6159379, 6159563, 6159721, 6159893, 6160073, 6160247]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6157453 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6157453 6160247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6157453) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6160423, 6160607, 6160771, 6160949, 6161117, 6161279, 6161459, 6161641, 6161819, 6162001, 6162179, 6162349, 6162523, 6162659, 6162841, 6163021]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6160247 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6160247 6163021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6160247) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6163189, 6163373, 6163541, 6163711, 6163891, 6164033, 6164209, 6164383, 6164563, 6164731, 6164891, 6165059, 6165227, 6165409, 6165589, 6165763]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6163021 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6163021 6165763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6163021) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6165947, 6166129, 6166289, 6166471, 6166639, 6166813, 6166997, 6167177, 6167353, 6167531, 6167687, 6167867, 6168031, 6168187, 6168367, 6168527]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6165763 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6165763 6168527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6165763) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6168709, 6168893, 6169063, 6169231, 6169409, 6169591, 6169763, 6169937, 6170119, 6170251, 6170431, 6170587, 6170761, 6170933, 6171101, 6171281]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6168527 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6168527 6171281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6168527) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6171463, 6171647, 6171829, 6171967, 6172147, 6172291, 6172421, 6172603, 6172787, 6172949, 6173093, 6173257, 6173441, 6173621, 6173777, 6173957]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6171281 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6171281 6173957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6171281) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6174139, 6174317, 6174479, 6174643, 6174827, 6174991, 6175163, 6175333, 6175517, 6175693, 6175867, 6176041, 6176221, 6176377, 6176561, 6176741]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6173957 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6173957 6176741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6173957) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6176917, 6177053, 6177233, 6177403, 6177581, 6177763, 6177947, 6178129, 6178313, 6178493, 6178663, 6178847, 6179023, 6179207, 6179353, 6179533]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6176741 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6176741 6179533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6176741) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6179717, 6179863, 6180047, 6180203, 6180379, 6180557, 6180737, 6180919, 6181103, 6181277, 6181451, 6181633, 6181811, 6181993, 6182177, 6182359]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6179533 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6179533 6182359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6179533) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6182537, 6182717, 6182879, 6183059, 6183241, 6183421, 6183599, 6183761, 6183929, 6184111, 6184289, 6184471, 6184649, 6184813, 6184967, 6185143]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6182359 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6182359 6185143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6182359) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6097031 6102497 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6097031)
    (mid := 6099727) (hi := 6102497) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6102497 6107953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6102497)
    (mid := 6105223) (hi := 6107953) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6107953 6113539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6107953)
    (mid := 6110789) (hi := 6113539) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6113539 6118891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6113539)
    (mid := 6116239) (hi := 6118891) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6118891 6124331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6118891)
    (mid := 6121607) (hi := 6124331) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6124331 6129973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6124331)
    (mid := 6127153) (hi := 6129973) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6129973 6135397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6129973)
    (mid := 6132673) (hi := 6135397) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6135397 6140957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6135397)
    (mid := 6138193) (hi := 6140957) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6140957 6146473 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6140957)
    (mid := 6143693) (hi := 6146473) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6146473 6151961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6146473)
    (mid := 6149207) (hi := 6151961) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6151961 6157453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6151961)
    (mid := 6154723) (hi := 6157453) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6157453 6163021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6157453)
    (mid := 6160247) (hi := 6163021) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6163021 6168527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6163021)
    (mid := 6165763) (hi := 6168527) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6168527 6173957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6168527)
    (mid := 6171281) (hi := 6173957) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6173957 6179533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6173957)
    (mid := 6176741) (hi := 6179533) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6179533 6185143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6179533)
    (mid := 6182359) (hi := 6185143) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6097031 6107953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6097031)
    (mid := 6102497) (hi := 6107953) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6107953 6118891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6107953)
    (mid := 6113539) (hi := 6118891) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6118891 6129973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6118891)
    (mid := 6124331) (hi := 6129973) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6129973 6140957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6129973)
    (mid := 6135397) (hi := 6140957) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6140957 6151961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6140957)
    (mid := 6146473) (hi := 6151961) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6151961 6163021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6151961)
    (mid := 6157453) (hi := 6163021) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6163021 6173957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6163021)
    (mid := 6168527) (hi := 6173957) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6173957 6185143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6173957)
    (mid := 6179533) (hi := 6185143) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6097031 6118891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6097031)
    (mid := 6107953) (hi := 6118891) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6118891 6140957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6118891)
    (mid := 6129973) (hi := 6140957) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6140957 6163021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6140957)
    (mid := 6151961) (hi := 6163021) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6163021 6185143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6163021)
    (mid := 6173957) (hi := 6185143) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6097031 6140957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6097031)
    (mid := 6118891) (hi := 6140957) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6140957 6185143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6140957)
    (mid := 6163021) (hi := 6185143) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6097031 6185143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6097031)
    (mid := 6140957) (hi := 6185143) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6097031 6185143 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block069

#print axioms B699MiddleExtension.PrimorialBlocks.Block069.joined
