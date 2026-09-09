import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block064

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5657513, 5657693, 5657867, 5658047, 5658223, 5658407, 5658589, 5658769, 5658949, 5659117, 5659279, 5659447, 5659627, 5659783, 5659957, 5660101]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5657359 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5657359 5660101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5657359) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5660279, 5660449, 5660623, 5660807, 5660989, 5661169, 5661343, 5661521, 5661683, 5661839, 5661991, 5662169, 5662351, 5662529, 5662697, 5662873]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5660101 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5660101 5662873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5660101) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5663051, 5663219, 5663393, 5663569, 5663689, 5663821, 5663993, 5664173, 5664313, 5664497, 5664671, 5664851, 5665027, 5665193, 5665367, 5665549]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5662873 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5662873 5665549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5662873) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5665733, 5665903, 5666053, 5666233, 5666417, 5666599, 5666783, 5666963, 5667133, 5667317, 5667461, 5667631, 5667803, 5667983, 5668163, 5668343]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5665549 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5665549 5668343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5665549) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5668519, 5668699, 5668867, 5669051, 5669221, 5669387, 5669561, 5669731, 5669903, 5670059, 5670229, 5670403, 5670547, 5670703, 5670887, 5671033]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5668343 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5668343 5671033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5668343) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5671213, 5671381, 5671553, 5671717, 5671877, 5672057, 5672239, 5672423, 5672599, 5672767, 5672929, 5673097, 5673281, 5673449, 5673623, 5673781]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5671033 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5671033 5673781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5671033) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5673959, 5674133, 5674309, 5674489, 5674663, 5674847, 5675029, 5675207, 5675389, 5675563, 5675731, 5675903, 5676067, 5676217, 5676401, 5676571]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5673781 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5673781 5676571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5673781) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5676739, 5676919, 5677097, 5677279, 5677457, 5677621, 5677801, 5677981, 5678149, 5678329, 5678507, 5678669, 5678851, 5679031, 5679211, 5679391]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5676571 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5676571 5679391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5676571) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5679571, 5679749, 5679923, 5680097, 5680253, 5680403, 5680559, 5680739, 5680921, 5681089, 5681243, 5681413, 5681579, 5681761, 5681939, 5682119]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5679391 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5679391 5682119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5679391) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5682293, 5682461, 5682643, 5682797, 5682979, 5683129, 5683313, 5683487, 5683651, 5683823, 5683987, 5684167, 5684323, 5684489, 5684671, 5684849]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5682119 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5682119 5684849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5682119) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5685023, 5685203, 5685377, 5685557, 5685739, 5685887, 5686067, 5686229, 5686411, 5686591, 5686763, 5686931, 5687111, 5687273, 5687453, 5687609]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5684849 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5684849 5687609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5684849) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5687791, 5687959, 5688143, 5688317, 5688499, 5688679, 5688827, 5689007, 5689183, 5689367, 5689549, 5689703, 5689877, 5690059, 5690213, 5690383]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5687609 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5687609 5690383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5687609) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5690561, 5690731, 5690911, 5691083, 5691263, 5691421, 5691601, 5691761, 5691943, 5692121, 5692301, 5692471, 5692649, 5692823, 5692963, 5693131]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5690383 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5690383 5693131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5690383) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5693299, 5693461, 5693641, 5693813, 5693993, 5694163, 5694347, 5694517, 5694673, 5694841, 5695013, 5695177, 5695321, 5695499, 5695681, 5695853]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5693131 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5693131 5695853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5693131) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5696027, 5696191, 5696357, 5696533, 5696711, 5696891, 5697071, 5697247, 5697421, 5697599, 5697761, 5697943, 5698097, 5698267, 5698439, 5698607]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5695853 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5695853 5698607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5695853) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5698783, 5698967, 5699137, 5699311, 5699479, 5699647, 5699821, 5699989, 5700173, 5700349, 5700533, 5700713, 5700887, 5701061, 5701211, 5701393]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5698607 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5698607 5701393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5698607) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5701571, 5701741, 5701909, 5702063, 5702237, 5702407, 5702591, 5702759, 5702941, 5703091, 5703263, 5703437, 5703611, 5703791, 5703917, 5704087]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5701393 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5701393 5704087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5701393) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5704267, 5704451, 5704631, 5704801, 5704969, 5705153, 5705327, 5705467, 5705629, 5705809, 5705981, 5706163, 5706343, 5706497, 5706677, 5706853]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5704087 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5704087 5706853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5704087) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5707033, 5707183, 5707357, 5707523, 5707679, 5707861, 5708033, 5708203, 5708383, 5708543, 5708711, 5708893, 5709073, 5709217, 5709397, 5709559]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5706853 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5706853 5709559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5706853) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5709721, 5709901, 5710043, 5710223, 5710403, 5710567, 5710751, 5710933, 5711113, 5711297, 5711477, 5711627, 5711809, 5711987, 5712169, 5712347]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5709559 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5709559 5712347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5709559) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5712529, 5712713, 5712893, 5713069, 5713249, 5713427, 5713607, 5713789, 5713963, 5714123, 5714249, 5714417, 5714591, 5714759, 5714893, 5715071]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5712347 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5712347 5715071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5712347) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5715251, 5715433, 5715617, 5715793, 5715949, 5716133, 5716309, 5716483, 5716649, 5716829, 5716987, 5717161, 5717339, 5717521, 5717683, 5717863]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5715071 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5715071 5717863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5715071) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5718047, 5718217, 5718379, 5718551, 5718709, 5718863, 5719033, 5719211, 5719391, 5719561, 5719697, 5719859, 5720017, 5720201, 5720371, 5720543]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5717863 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5717863 5720543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5717863) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5720711, 5720893, 5721059, 5721241, 5721409, 5721593, 5721767, 5721943, 5722117, 5722291, 5722459, 5722637, 5722799, 5722979, 5723147, 5723327]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5720543 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5720543 5723327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5720543) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5723507, 5723681, 5723843, 5724023, 5724197, 5724373, 5724541, 5724683, 5724857, 5725021, 5725201, 5725361, 5725543, 5725721, 5725883, 5726023]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5723327 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5723327 5726023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5723327) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5726191, 5726359, 5726531, 5726713, 5726893, 5727077, 5727251, 5727433, 5727613, 5727791, 5727973, 5728153, 5728319, 5728477, 5728661, 5728781]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5726023 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5726023 5728781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5726023) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5728939, 5729123, 5729263, 5729447, 5729609, 5729767, 5729951, 5730121, 5730293, 5730451, 5730631, 5730811, 5730983, 5731153, 5731309, 5731487]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5728781 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5728781 5731487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5728781) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5731667, 5731837, 5732017, 5732197, 5732371, 5732549, 5732729, 5732869, 5733053, 5733223, 5733401, 5733569, 5733751, 5733929, 5734103, 5734283]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5731487 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5731487 5734283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5731487) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5734459, 5734643, 5734823, 5735003, 5735179, 5735357, 5735519, 5735699, 5735879, 5736011, 5736193, 5736371, 5736553, 5736737, 5736919, 5737073]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5734283 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5734283 5737073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5734283) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5737247, 5737429, 5737607, 5737783, 5737961, 5738123, 5738297, 5738471, 5738641, 5738801, 5738981, 5739161, 5739323, 5739491, 5739667, 5739841]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5737073 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5737073 5739841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5737073) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5740001, 5740183, 5740367, 5740519, 5740699, 5740879, 5741063, 5741233, 5741389, 5741573, 5741753, 5741917, 5742089, 5742271, 5742439, 5742623]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5739841 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5739841 5742623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5739841) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5742799, 5742973, 5743147, 5743313, 5743489, 5743667, 5743831, 5744003, 5744177, 5744353, 5744527, 5744701, 5744867, 5745023, 5745203, 5745379]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5742623 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5742623 5745379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5742623) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5657359 5662873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 5660101) (hi := 5662873) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5662873 5668343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5662873)
    (mid := 5665549) (hi := 5668343) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5668343 5673781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5668343)
    (mid := 5671033) (hi := 5673781) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5673781 5679391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5673781)
    (mid := 5676571) (hi := 5679391) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5679391 5684849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5679391)
    (mid := 5682119) (hi := 5684849) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5684849 5690383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5684849)
    (mid := 5687609) (hi := 5690383) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5690383 5695853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5690383)
    (mid := 5693131) (hi := 5695853) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5695853 5701393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5695853)
    (mid := 5698607) (hi := 5701393) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5701393 5706853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5701393)
    (mid := 5704087) (hi := 5706853) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5706853 5712347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5706853)
    (mid := 5709559) (hi := 5712347) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5712347 5717863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5712347)
    (mid := 5715071) (hi := 5717863) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5717863 5723327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5717863)
    (mid := 5720543) (hi := 5723327) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5723327 5728781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5723327)
    (mid := 5726023) (hi := 5728781) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5728781 5734283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5728781)
    (mid := 5731487) (hi := 5734283) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5734283 5739841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5734283)
    (mid := 5737073) (hi := 5739841) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5739841 5745379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5739841)
    (mid := 5742623) (hi := 5745379) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5657359 5668343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 5662873) (hi := 5668343) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5668343 5679391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5668343)
    (mid := 5673781) (hi := 5679391) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5679391 5690383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5679391)
    (mid := 5684849) (hi := 5690383) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5690383 5701393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5690383)
    (mid := 5695853) (hi := 5701393) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5701393 5712347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5701393)
    (mid := 5706853) (hi := 5712347) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5712347 5723327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5712347)
    (mid := 5717863) (hi := 5723327) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5723327 5734283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5723327)
    (mid := 5728781) (hi := 5734283) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5734283 5745379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5734283)
    (mid := 5739841) (hi := 5745379) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5657359 5679391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 5668343) (hi := 5679391) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5679391 5701393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5679391)
    (mid := 5690383) (hi := 5701393) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5701393 5723327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5701393)
    (mid := 5712347) (hi := 5723327) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5723327 5745379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5723327)
    (mid := 5734283) (hi := 5745379) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5657359 5701393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 5679391) (hi := 5701393) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5701393 5745379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5701393)
    (mid := 5723327) (hi := 5745379) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5657359 5745379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 5701393) (hi := 5745379) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5657359 5745379 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block064

#print axioms B699MiddleExtension.PrimorialBlocks.Block064.joined
