import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block217

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19050643, 19050827, 19051007, 19051187, 19051369, 19051553, 19051733, 19051891, 19052063, 19052237, 19052419, 19052587, 19052753, 19052893, 19053061, 19053241]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19050467 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19050467 19053241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19050467) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19053389, 19053571, 19053737, 19053901, 19054069, 19054201, 19054361, 19054543, 19054727, 19054883, 19055041, 19055213, 19055383, 19055557, 19055713, 19055893]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19053241 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19053241 19055893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19053241) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19056077, 19056253, 19056437, 19056571, 19056749, 19056929, 19057099, 19057277, 19057457, 19057637, 19057813, 19057991, 19058161, 19058341, 19058497, 19058659]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19055893 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19055893 19058659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19055893) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19058839, 19059011, 19059179, 19059353, 19059503, 19059661, 19059829, 19060007, 19060189, 19060343, 19060493, 19060669, 19060843, 19061011, 19061177, 19061347]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19058659 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19058659 19061347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19058659) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19061519, 19061699, 19061873, 19062047, 19062229, 19062413, 19062587, 19062767, 19062949, 19063133, 19063279, 19063453, 19063609, 19063789, 19063969, 19064137]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19061347 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19061347 19064137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19061347) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19064273, 19064443, 19064623, 19064777, 19064933, 19065089, 19065271, 19065443, 19065617, 19065793, 19065971, 19066141, 19066321, 19066483, 19066661, 19066841]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19064137 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19064137 19066841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19064137) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19066997, 19067177, 19067359, 19067537, 19067707, 19067879, 19068059, 19068211, 19068389, 19068563, 19068743, 19068911, 19069079, 19069261, 19069439, 19069601]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19066841 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19066841 19069601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19066841) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19069781, 19069951, 19070131, 19070299, 19070479, 19070663, 19070833, 19071011, 19071181, 19071343, 19071517, 19071697, 19071881, 19072063, 19072243, 19072423]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19069601 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19069601 19072423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19069601) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19072597, 19072777, 19072927, 19073111, 19073293, 19073471, 19073641, 19073819, 19074001, 19074173, 19074353, 19074529, 19074707, 19074871, 19074983, 19075151]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19072423 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19072423 19075151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19072423) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19075319, 19075489, 19075673, 19075817, 19075999, 19076153, 19076327, 19076509, 19076671, 19076833, 19076963, 19077139, 19077299, 19077481, 19077659, 19077823]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19075151 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19075151 19077823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19075151) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19077979, 19078159, 19078343, 19078511, 19078693, 19078867, 19079041, 19079189, 19079341, 19079521, 19079693, 19079869, 19079993, 19080169, 19080349, 19080533]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19077823 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19077823 19080533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19077823) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19080713, 19080881, 19081063, 19081243, 19081427, 19081597, 19081753, 19081891, 19082057, 19082221, 19082383, 19082561, 19082737, 19082911, 19083091, 19083241]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19080533 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19080533 19083241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19080533) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19083419, 19083599, 19083773, 19083947, 19084123, 19084301, 19084451, 19084621, 19084783, 19084957, 19085123, 19085279, 19085461, 19085639, 19085809, 19085981]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19083241 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19083241 19085981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19083241) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19086157, 19086311, 19086493, 19086671, 19086833, 19087009, 19087183, 19087357, 19087531, 19087709, 19087891, 19088057, 19088231, 19088401, 19088567, 19088747]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19085981 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19085981 19088747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19085981) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19088917, 19089089, 19089251, 19089431, 19089613, 19089781, 19089949, 19090103, 19090277, 19090457, 19090633, 19090811, 19090979, 19091159, 19091339, 19091521]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19088747 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19088747 19091521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19088747) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19091669, 19091843, 19091993, 19092163, 19092317, 19092499, 19092659, 19092841, 19093001, 19093181, 19093357, 19093531, 19093693, 19093859, 19094039, 19094219]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19091521 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19091521 19094219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19091521) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19094381, 19094521, 19094693, 19094869, 19095047, 19095203, 19095353, 19095523, 19095701, 19095883, 19096057, 19096211, 19096393, 19096573, 19096751, 19096927]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19094219 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19094219 19096927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19094219) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19097093, 19097257, 19097417, 19097597, 19097761, 19097909, 19098091, 19098223, 19098377, 19098557, 19098721, 19098889, 19099057, 19099231, 19099411, 19099589]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19096927 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19096927 19099589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19096927) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19099763, 19099933, 19100117, 19100297, 19100479, 19100663, 19100839, 19100993, 19101167, 19101347, 19101491, 19101671, 19101839, 19102021, 19102199, 19102379]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19099589 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19099589 19102379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19099589) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19102547, 19102669, 19102829, 19103011, 19103167, 19103327, 19103503, 19103687, 19103863, 19104047, 19104227, 19104403, 19104541, 19104721, 19104871, 19105039]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19102379 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19102379 19105039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19102379) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19105211, 19105391, 19105561, 19105741, 19105903, 19106083, 19106257, 19106441, 19106611, 19106783, 19106959, 19107131, 19107301, 19107481, 19107661, 19107841]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19105039 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19105039 19107841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19105039) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19108003, 19108171, 19108339, 19108513, 19108667, 19108823, 19108997, 19109177, 19109357, 19109537, 19109689, 19109851, 19110031, 19110191, 19110359, 19110527]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19107841 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19107841 19110527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19107841) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19110709, 19110869, 19111051, 19111189, 19111373, 19111537, 19111711, 19111879, 19112053, 19112237, 19112417, 19112593, 19112773, 19112923, 19113097, 19113251]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19110527 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19110527 19113251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19110527) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19113433, 19113617, 19113779, 19113959, 19114111, 19114283, 19114457, 19114639, 19114819, 19114999, 19115183, 19115363, 19115519, 19115671, 19115851, 19116029]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19113251 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19113251 19116029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19113251) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19116203, 19116379, 19116563, 19116737, 19116919, 19117093, 19117261, 19117433, 19117613, 19117783, 19117963, 19118119, 19118291, 19118471, 19118647, 19118791]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19116029 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19116029 19118791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19116029) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19118941, 19119103, 19119259, 19119433, 19119593, 19119773, 19119949, 19120109, 19120271, 19120447, 19120573, 19120753, 19120921, 19121101, 19121279, 19121423]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19118791 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19118791 19121423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19118791) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19121593, 19121777, 19121953, 19122137, 19122317, 19122497, 19122679, 19122847, 19122991, 19123171, 19123333, 19123483, 19123661, 19123843, 19124009, 19124143]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19121423 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19121423 19124143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19121423) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19124309, 19124461, 19124591, 19124747, 19124929, 19125101, 19125277, 19125439, 19125577, 19125751, 19125919, 19126097, 19126279, 19126441, 19126609, 19126781]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19124143 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19124143 19126781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19124143) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19126963, 19127137, 19127309, 19127491, 19127671, 19127833, 19128007, 19128133, 19128293, 19128467, 19128619, 19128773, 19128931, 19129087, 19129249, 19129433]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19126781 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19126781 19129433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19126781) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19129603, 19129787, 19129963, 19130143, 19130327, 19130497, 19130677, 19130861, 19131041, 19131223, 19131401, 19131547, 19131719, 19131899, 19132073, 19132249]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19129433 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19129433 19132249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19129433) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19132433, 19132613, 19132787, 19132963, 19133141, 19133311, 19133473, 19133629, 19133801, 19133977, 19134151, 19134307, 19134487, 19134667, 19134811, 19134991]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19132249 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19132249 19134991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19132249) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19135169, 19135351, 19135531, 19135681, 19135861, 19136041, 19136213, 19136389, 19136569, 19136749, 19136927, 19137109, 19137289, 19137431, 19137583, 19137751]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19134991 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19134991 19137751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19134991) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19050467 19055893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19050467)
    (mid := 19053241) (hi := 19055893) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19055893 19061347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19055893)
    (mid := 19058659) (hi := 19061347) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19061347 19066841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19061347)
    (mid := 19064137) (hi := 19066841) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19066841 19072423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19066841)
    (mid := 19069601) (hi := 19072423) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19072423 19077823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19072423)
    (mid := 19075151) (hi := 19077823) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19077823 19083241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19077823)
    (mid := 19080533) (hi := 19083241) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19083241 19088747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19083241)
    (mid := 19085981) (hi := 19088747) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19088747 19094219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19088747)
    (mid := 19091521) (hi := 19094219) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19094219 19099589 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19094219)
    (mid := 19096927) (hi := 19099589) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19099589 19105039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19099589)
    (mid := 19102379) (hi := 19105039) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19105039 19110527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19105039)
    (mid := 19107841) (hi := 19110527) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19110527 19116029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19110527)
    (mid := 19113251) (hi := 19116029) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19116029 19121423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19116029)
    (mid := 19118791) (hi := 19121423) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19121423 19126781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19121423)
    (mid := 19124143) (hi := 19126781) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19126781 19132249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19126781)
    (mid := 19129433) (hi := 19132249) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19132249 19137751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19132249)
    (mid := 19134991) (hi := 19137751) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19050467 19061347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19050467)
    (mid := 19055893) (hi := 19061347) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19061347 19072423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19061347)
    (mid := 19066841) (hi := 19072423) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19072423 19083241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19072423)
    (mid := 19077823) (hi := 19083241) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19083241 19094219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19083241)
    (mid := 19088747) (hi := 19094219) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19094219 19105039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19094219)
    (mid := 19099589) (hi := 19105039) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19105039 19116029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19105039)
    (mid := 19110527) (hi := 19116029) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19116029 19126781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19116029)
    (mid := 19121423) (hi := 19126781) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19126781 19137751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19126781)
    (mid := 19132249) (hi := 19137751) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19050467 19072423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19050467)
    (mid := 19061347) (hi := 19072423) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19072423 19094219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19072423)
    (mid := 19083241) (hi := 19094219) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19094219 19116029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19094219)
    (mid := 19105039) (hi := 19116029) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19116029 19137751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19116029)
    (mid := 19126781) (hi := 19137751) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19050467 19094219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19050467)
    (mid := 19072423) (hi := 19094219) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19094219 19137751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19094219)
    (mid := 19116029) (hi := 19137751) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19050467 19137751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19050467)
    (mid := 19094219) (hi := 19137751) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19050467 19137751 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block217

#print axioms B699MiddleExtension.PrimorialBlocks.Block217.joined
