import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block104

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9167699, 9167839, 9168011, 9168179, 9168359, 9168521, 9168701, 9168853, 9169037, 9169217, 9169399, 9169577, 9169753, 9169933, 9170111, 9170281]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9167551 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9167551 9170281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9167551) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9170459, 9170627, 9170809, 9170983, 9171131, 9171311, 9171467, 9171649, 9171829, 9171997, 9172159, 9172343, 9172483, 9172663, 9172841, 9173023]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9170281 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9170281 9173023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9170281) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9173173, 9173357, 9173533, 9173683, 9173867, 9174043, 9174227, 9174391, 9174569, 9174751, 9174901, 9175079, 9175249, 9175429, 9175601, 9175753]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9173023 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9173023 9175753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9173023) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9175931, 9176099, 9176273, 9176443, 9176621, 9176803, 9176971, 9177143, 9177319, 9177503, 9177617, 9177793, 9177941, 9178073, 9178231, 9178409]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9175753 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9175753 9178409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9175753) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9178591, 9178769, 9178943, 9179113, 9179297, 9179479, 9179647, 9179827, 9180001, 9180167, 9180331, 9180503, 9180671, 9180767, 9180917, 9181099]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9178409 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9178409 9181099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9178409) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9181279, 9181453, 9181633, 9181817, 9181987, 9182171, 9182323, 9182507, 9182687, 9182863, 9183047, 9183217, 9183389, 9183571, 9183737, 9183907]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9181099 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9181099 9183907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9181099) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9184079, 9184249, 9184433, 9184603, 9184783, 9184951, 9185123, 9185299, 9185471, 9185653, 9185833, 9186017, 9186181, 9186319, 9186497, 9186677]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9183907 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9183907 9186677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9183907) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9186857, 9187039, 9187223, 9187397, 9187547, 9187727, 9187907, 9188057, 9188219, 9188401, 9188539, 9188717, 9188897, 9189079, 9189263, 9189421]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9186677 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9186677 9189421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9186677) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9189599, 9189767, 9189941, 9190121, 9190301, 9190463, 9190633, 9190817, 9190997, 9191177, 9191333, 9191491, 9191671, 9191827, 9191993, 9192149]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9189421 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9189421 9192149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9189421) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9192329, 9192511, 9192679, 9192857, 9193033, 9193193, 9193361, 9193543, 9193703, 9193867, 9194033, 9194203, 9194377, 9194551, 9194677, 9194851]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9192149 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9192149 9194851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9192149) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9194971, 9195143, 9195311, 9195491, 9195673, 9195839, 9196009, 9196183, 9196357, 9196531, 9196699, 9196877, 9197059, 9197239, 9197389, 9197549]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9194851 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9194851 9197549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9194851) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9197717, 9197897, 9198019, 9198199, 9198383, 9198559, 9198743, 9198913, 9199093, 9199259, 9199429, 9199579, 9199759, 9199937, 9200119, 9200293]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9197549 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9197549 9200293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9197549) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9200461, 9200623, 9200803, 9200981, 9201161, 9201341, 9201509, 9201677, 9201827, 9201991, 9202147, 9202313, 9202493, 9202667, 9202847, 9203003]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9200293 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9200293 9203003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9200293) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9203149, 9203317, 9203471, 9203653, 9203791, 9203969, 9204137, 9204319, 9204499, 9204677, 9204859, 9205043, 9205223, 9205393, 9205523, 9205697]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9203003 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9203003 9205697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9203003) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9205793, 9205969, 9206143, 9206321, 9206497, 9206677, 9206851, 9207017, 9207197, 9207379, 9207551, 9207733, 9207917, 9208081, 9208261, 9208417]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9205697 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9205697 9208417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9205697) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9208583, 9208753, 9208937, 9209117, 9209293, 9209467, 9209647, 9209831, 9210013, 9210169, 9210349, 9210533, 9210713, 9210871, 9211051, 9211231]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9208417 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9208417 9211231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9208417) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9211403, 9211583, 9211759, 9211919, 9212081, 9212263, 9212447, 9212573, 9212713, 9212887, 9213067, 9213227, 9213401, 9213583, 9213767, 9213947]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9211231 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9211231 9213947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9211231) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9214123, 9214307, 9214441, 9214613, 9214787, 9214957, 9215137, 9215317, 9215497, 9215669, 9215837, 9216019, 9216199, 9216373, 9216547, 9216731]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9213947 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9213947 9216731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9213947) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9216913, 9217097, 9217277, 9217441, 9217589, 9217763, 9217933, 9218117, 9218281, 9218459, 9218633, 9218773, 9218953, 9219131, 9219299, 9219467]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9216731 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9216731 9219467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9216731) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9219641, 9219823, 9219979, 9220163, 9220331, 9220501, 9220669, 9220847, 9221027, 9221207, 9221389, 9221567, 9221747, 9221929, 9222079, 9222251]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9219467 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9219467 9222251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9219467) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9222431, 9222607, 9222791, 9222937, 9223117, 9223297, 9223481, 9223661, 9223817, 9223997, 9224167, 9224351, 9224521, 9224689, 9224867, 9225031]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9222251 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9222251 9225031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9222251) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9225211, 9225371, 9225547, 9225731, 9225911, 9226093, 9226253, 9226421, 9226603, 9226787, 9226961, 9227143, 9227321, 9227497, 9227641, 9227809]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9225031 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9225031 9227809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9225031) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9227983, 9228151, 9228311, 9228449, 9228631, 9228811, 9228991, 9229153, 9229331, 9229513, 9229679, 9229823, 9229973, 9230119, 9230297, 9230477]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9227809 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9227809 9230477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9227809) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9230651, 9230821, 9230999, 9231143, 9231311, 9231479, 9231661, 9231839, 9232021, 9232193, 9232373, 9232549, 9232711, 9232889, 9233047, 9233219]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9230477 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9230477 9233219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9230477) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9233321, 9233489, 9233671, 9233849, 9234013, 9234163, 9234299, 9234479, 9234649, 9234803, 9234977, 9235141, 9235319, 9235487, 9235663, 9235847]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9233219 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9233219 9235847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9233219) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9236023, 9236207, 9236371, 9236537, 9236713, 9236897, 9237073, 9237257, 9237433, 9237617, 9237799, 9237961, 9238133, 9238303, 9238477, 9238637]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9235847 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9235847 9238637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9235847) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9238819, 9238969, 9239141, 9239323, 9239471, 9239623, 9239803, 9239987, 9240169, 9240337, 9240509, 9240689, 9240857, 9241039, 9241223, 9241403]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9238637 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9238637 9241403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9238637) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9241579, 9241747, 9241907, 9242081, 9242243, 9242423, 9242587, 9242741, 9242923, 9243107, 9243281, 9243457, 9243613, 9243791, 9243967, 9244133]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9241403 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9241403 9244133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9241403) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9244309, 9244483, 9244667, 9244841, 9245017, 9245189, 9245371, 9245513, 9245689, 9245851, 9246031, 9246199, 9246379, 9246557, 9246709, 9246889]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9244133 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9244133 9246889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9244133) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9247057, 9247211, 9247379, 9247543, 9247727, 9247907, 9248089, 9248273, 9248431, 9248563, 9248719, 9248893, 9249077, 9249221, 9249403, 9249587]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9246889 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9246889 9249587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9246889) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9249767, 9249943, 9250127, 9250309, 9250469, 9250649, 9250823, 9251003, 9251183, 9251353, 9251533, 9251699, 9251881, 9252041, 9252209, 9252389]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9249587 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9249587 9252389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9249587) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9252571, 9252721, 9252883, 9253051, 9253207, 9253381, 9253561, 9253723, 9253891, 9254059, 9254243, 9254411, 9254593, 9254747, 9254923, 9255101]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9252389 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9252389 9255101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9252389) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9167551 9173023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9167551)
    (mid := 9170281) (hi := 9173023) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9173023 9178409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9173023)
    (mid := 9175753) (hi := 9178409) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9178409 9183907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9178409)
    (mid := 9181099) (hi := 9183907) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9183907 9189421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9183907)
    (mid := 9186677) (hi := 9189421) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9189421 9194851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9189421)
    (mid := 9192149) (hi := 9194851) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9194851 9200293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9194851)
    (mid := 9197549) (hi := 9200293) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9200293 9205697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9200293)
    (mid := 9203003) (hi := 9205697) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9205697 9211231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9205697)
    (mid := 9208417) (hi := 9211231) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9211231 9216731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9211231)
    (mid := 9213947) (hi := 9216731) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9216731 9222251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9216731)
    (mid := 9219467) (hi := 9222251) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9222251 9227809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9222251)
    (mid := 9225031) (hi := 9227809) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9227809 9233219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9227809)
    (mid := 9230477) (hi := 9233219) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9233219 9238637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9233219)
    (mid := 9235847) (hi := 9238637) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9238637 9244133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9238637)
    (mid := 9241403) (hi := 9244133) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9244133 9249587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9244133)
    (mid := 9246889) (hi := 9249587) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9249587 9255101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9249587)
    (mid := 9252389) (hi := 9255101) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9167551 9178409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9167551)
    (mid := 9173023) (hi := 9178409) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9178409 9189421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9178409)
    (mid := 9183907) (hi := 9189421) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9189421 9200293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9189421)
    (mid := 9194851) (hi := 9200293) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9200293 9211231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9200293)
    (mid := 9205697) (hi := 9211231) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9211231 9222251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9211231)
    (mid := 9216731) (hi := 9222251) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9222251 9233219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9222251)
    (mid := 9227809) (hi := 9233219) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9233219 9244133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9233219)
    (mid := 9238637) (hi := 9244133) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9244133 9255101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9244133)
    (mid := 9249587) (hi := 9255101) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9167551 9189421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9167551)
    (mid := 9178409) (hi := 9189421) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9189421 9211231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9189421)
    (mid := 9200293) (hi := 9211231) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9211231 9233219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9211231)
    (mid := 9222251) (hi := 9233219) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9233219 9255101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9233219)
    (mid := 9244133) (hi := 9255101) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9167551 9211231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9167551)
    (mid := 9189421) (hi := 9211231) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9211231 9255101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9211231)
    (mid := 9233219) (hi := 9255101) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9167551 9255101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9167551)
    (mid := 9211231) (hi := 9255101) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9167551 9255101 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block104

#print axioms B699MiddleExtension.PrimorialBlocks.Block104.joined
