import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block099

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8730103, 8730287, 8730467, 8730649, 8730803, 8730983, 8731153, 8731321, 8731501, 8731673, 8731831, 8731993, 8732159, 8732309, 8732489, 8732653]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8729939 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8729939 8732653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8729939) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8732833, 8733017, 8733173, 8733341, 8733511, 8733691, 8733871, 8734051, 8734223, 8734403, 8734577, 8734757, 8734919, 8735047, 8735197, 8735371]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8732653 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8732653 8735371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8732653) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8735549, 8735711, 8735891, 8736073, 8736223, 8736401, 8736583, 8736727, 8736911, 8737073, 8737249, 8737433, 8737591, 8737763, 8737943, 8738123]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8735371 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8735371 8738123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8735371) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8738299, 8738473, 8738641, 8738813, 8738963, 8739127, 8739299, 8739481, 8739637, 8739821, 8740003, 8740187, 8740367, 8740541, 8740681, 8740859]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8738123 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8738123 8740859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8738123) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8741041, 8741203, 8741371, 8741533, 8741699, 8741867, 8742037, 8742197, 8742379, 8742551, 8742689, 8742857, 8743037, 8743213, 8743393, 8743571]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8740859 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8740859 8743571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8740859) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8743753, 8743937, 8744101, 8744269, 8744447, 8744627, 8744737, 8744917, 8745101, 8745241, 8745419, 8745571, 8745749, 8745929, 8746093, 8746271]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8743571 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8743571 8746271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8743571) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8746453, 8746637, 8746819, 8746999, 8747171, 8747329, 8747513, 8747689, 8747863, 8748043, 8748209, 8748367, 8748503, 8748673, 8748853, 8749019]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8746271 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8746271 8749019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8746271) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8749199, 8749357, 8749469, 8749651, 8749817, 8749991, 8750171, 8750351, 8750531, 8750713, 8750893, 8751037, 8751221, 8751401, 8751577, 8751749]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8749019 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8749019 8751749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8749019) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8751931, 8752067, 8752231, 8752379, 8752561, 8752741, 8752871, 8753051, 8753231, 8753401, 8753581, 8753747, 8753903, 8754077, 8754257, 8754401]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8751749 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8751749 8754401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8751749) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8754583, 8754751, 8754931, 8755079, 8755247, 8755399, 8755559, 8755741, 8755921, 8756101, 8756263, 8756441, 8756623, 8756807, 8756983, 8757143]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8754401 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8754401 8757143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8754401) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8757289, 8757473, 8757643, 8757821, 8758003, 8758187, 8758361, 8758537, 8758721, 8758903, 8759087, 8759221, 8759393, 8759557, 8759731, 8759899]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8757143 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8757143 8759899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8757143) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8760071, 8760247, 8760421, 8760571, 8760743, 8760923, 8761099, 8761279, 8761463, 8761639, 8761807, 8761967, 8762141, 8762311, 8762489, 8762671]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8759899 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8759899 8762671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8759899) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8762849, 8763031, 8763203, 8763383, 8763553, 8763737, 8763907, 8764087, 8764253, 8764433, 8764601, 8764781, 8764963, 8765143, 8765321, 8765503]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8762671 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8762671 8765503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8762671) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8765657, 8765837, 8766007, 8766187, 8766343, 8766523, 8766701, 8766881, 8767061, 8767243, 8767403, 8767579, 8767763, 8767943, 8768119, 8768281]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8765503 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8765503 8768281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8765503) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8768453, 8768621, 8768803, 8768987, 8769157, 8769301, 8769473, 8769653, 8769833, 8770009, 8770193, 8770357, 8770481, 8770661, 8770841, 8771017]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8768281 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8768281 8771017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8768281) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8771177, 8771351, 8771501, 8771683, 8771857, 8772037, 8772209, 8772371, 8772553, 8772733, 8772917, 8773091, 8773273, 8773439, 8773619, 8773799]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8771017 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8771017 8773799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8771017) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8773981, 8774149, 8774317, 8774497, 8774671, 8774851, 8775001, 8775163, 8775343, 8775527, 8775709, 8775863, 8776039, 8776223, 8776399, 8776577]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8773799 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8773799 8776577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8773799) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8776759, 8776931, 8777113, 8777281, 8777407, 8777591, 8777771, 8777947, 8778131, 8778313, 8778467, 8778643, 8778799, 8778947, 8779117, 8779247]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8776577 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8776577 8779247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8776577) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8779409, 8779549, 8779723, 8779907, 8780087, 8780263, 8780423, 8780593, 8780773, 8780923, 8781107, 8781271, 8781449, 8781631, 8781797, 8781967]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8779247 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8779247 8781967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8779247) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8782141, 8782321, 8782463, 8782643, 8782819, 8782981, 8783161, 8783303, 8783483, 8783659, 8783843, 8784007, 8784161, 8784343, 8784511, 8784667]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8781967 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8781967 8784667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8781967) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8784847, 8785027, 8785199, 8785349, 8785519, 8785697, 8785871, 8786053, 8786231, 8786413, 8786597, 8786779, 8786963, 8787131, 8787307, 8787491]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8784667 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8784667 8787491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8784667) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8787673, 8787853, 8788037, 8788217, 8788399, 8788523, 8788673, 8788823, 8788991, 8789113, 8789281, 8789453, 8789623, 8789773, 8789953, 8790137]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8787491 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8787491 8790137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8787491) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8790319, 8790487, 8790671, 8790841, 8791019, 8791187, 8791369, 8791537, 8791721, 8791891, 8792059, 8792237, 8792419, 8792603, 8792783, 8792963]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8790137 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8790137 8792963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8790137) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8793133, 8793307, 8793487, 8793671, 8793839, 8794007, 8794189, 8794367, 8794547, 8794703, 8794871, 8795047, 8795231, 8795411, 8795573, 8795753]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8792963 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8792963 8795753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8792963) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8795929, 8796113, 8796287, 8796451, 8796629, 8796763, 8796941, 8797111, 8797291, 8797457, 8797639, 8797787, 8797967, 8798147, 8798329, 8798509]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8795753 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8795753 8798509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8795753) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8798683, 8798863, 8799031, 8799173, 8799331, 8799509, 8799689, 8799853, 8800037, 8800213, 8800397, 8800579, 8800721, 8800903, 8801083, 8801213]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8798509 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8798509 8801213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8798509) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8801381, 8801557, 8801729, 8801911, 8802091, 8802257, 8802439, 8802593, 8802769, 8802953, 8803129, 8803303, 8803481, 8803657, 8803829, 8803987]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8801213 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8801213 8803987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8801213) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8804171, 8804339, 8804513, 8804689, 8804869, 8805029, 8805211, 8805383, 8805523, 8805707, 8805869, 8806043, 8806211, 8806393, 8806559, 8806741]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8803987 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8803987 8806741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8803987) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8806891, 8807059, 8807233, 8807417, 8807599, 8807783, 8807959, 8808143, 8808307, 8808491, 8808673, 8808841, 8809013, 8809187, 8809337, 8809513]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8806741 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8806741 8809513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8806741) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8809687, 8809861, 8810041, 8810189, 8810363, 8810491, 8810671, 8810849, 8811017, 8811199, 8811373, 8811541, 8811721, 8811851, 8812021, 8812147]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8809513 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8809513 8812147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8809513) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8812319, 8812471, 8812597, 8812753, 8812913, 8813081, 8813263, 8813447, 8813627, 8813789, 8813971, 8814151, 8814331, 8814511, 8814679, 8814853]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8812147 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8812147 8814853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8812147) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8815021, 8815201, 8815379, 8815549, 8815663, 8815823, 8815973, 8816123, 8816303, 8816473, 8816653, 8816837, 8816987, 8817163, 8817331, 8817511]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8814853 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8814853 8817511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8814853) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8729939 8735371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8729939)
    (mid := 8732653) (hi := 8735371) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8735371 8740859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8735371)
    (mid := 8738123) (hi := 8740859) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8740859 8746271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8740859)
    (mid := 8743571) (hi := 8746271) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8746271 8751749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8746271)
    (mid := 8749019) (hi := 8751749) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8751749 8757143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8751749)
    (mid := 8754401) (hi := 8757143) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8757143 8762671 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8757143)
    (mid := 8759899) (hi := 8762671) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8762671 8768281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8762671)
    (mid := 8765503) (hi := 8768281) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8768281 8773799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8768281)
    (mid := 8771017) (hi := 8773799) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8773799 8779247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8773799)
    (mid := 8776577) (hi := 8779247) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8779247 8784667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8779247)
    (mid := 8781967) (hi := 8784667) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8784667 8790137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8784667)
    (mid := 8787491) (hi := 8790137) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8790137 8795753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8790137)
    (mid := 8792963) (hi := 8795753) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8795753 8801213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8795753)
    (mid := 8798509) (hi := 8801213) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8801213 8806741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8801213)
    (mid := 8803987) (hi := 8806741) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8806741 8812147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8806741)
    (mid := 8809513) (hi := 8812147) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8812147 8817511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8812147)
    (mid := 8814853) (hi := 8817511) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8729939 8740859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8729939)
    (mid := 8735371) (hi := 8740859) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8740859 8751749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8740859)
    (mid := 8746271) (hi := 8751749) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8751749 8762671 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8751749)
    (mid := 8757143) (hi := 8762671) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8762671 8773799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8762671)
    (mid := 8768281) (hi := 8773799) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8773799 8784667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8773799)
    (mid := 8779247) (hi := 8784667) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8784667 8795753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8784667)
    (mid := 8790137) (hi := 8795753) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8795753 8806741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8795753)
    (mid := 8801213) (hi := 8806741) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8806741 8817511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8806741)
    (mid := 8812147) (hi := 8817511) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8729939 8751749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8729939)
    (mid := 8740859) (hi := 8751749) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8751749 8773799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8751749)
    (mid := 8762671) (hi := 8773799) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8773799 8795753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8773799)
    (mid := 8784667) (hi := 8795753) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8795753 8817511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8795753)
    (mid := 8806741) (hi := 8817511) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8729939 8773799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8729939)
    (mid := 8751749) (hi := 8773799) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8773799 8817511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8773799)
    (mid := 8795753) (hi := 8817511) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8729939 8817511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8729939)
    (mid := 8773799) (hi := 8817511) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8729939 8817511 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block099

#print axioms B699MiddleExtension.PrimorialBlocks.Block099.joined
