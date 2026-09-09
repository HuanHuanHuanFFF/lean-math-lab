import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block144

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12670319, 12670499, 12670673, 12670849, 12671027, 12671201, 12671383, 12671563, 12671741, 12671921, 12672097, 12672269, 12672427, 12672607, 12672767, 12672941]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12670139 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12670139 12672941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12670139) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12673123, 12673291, 12673471, 12673651, 12673831, 12674003, 12674171, 12674341, 12674521, 12674687, 12674867, 12675037, 12675211, 12675391, 12675569, 12675749]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12672941 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12672941 12675749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12672941) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12675917, 12676073, 12676217, 12676387, 12676571, 12676733, 12676907, 12677033, 12677213, 12677383, 12677557, 12677741, 12677923, 12678103, 12678271, 12678443]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12675749 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12675749 12678443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12675749) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12678623, 12678781, 12678959, 12679129, 12679313, 12679481, 12679663, 12679847, 12679991, 12680149, 12680329, 12680513, 12680683, 12680867, 12681043, 12681223]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12678443 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12678443 12681223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12678443) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12681407, 12681589, 12681769, 12681937, 12682097, 12682273, 12682451, 12682619, 12682793, 12682963, 12683137, 12683311, 12683471, 12683651, 12683831, 12683999]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12681223 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12681223 12683999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12681223) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12684181, 12684361, 12684541, 12684713, 12684869, 12685051, 12685229, 12685411, 12685591, 12685763, 12685943, 12686119, 12686299, 12686483, 12686647, 12686827]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12683999 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12683999 12686827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12683999) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12687011, 12687179, 12687359, 12687541, 12687683, 12687863, 12688037, 12688217, 12688391, 12688567, 12688733, 12688909, 12689081, 12689263, 12689423, 12689603]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12686827 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12686827 12689603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12686827) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12689783, 12689923, 12690103, 12690281, 12690463, 12690637, 12690817, 12691001, 12691171, 12691337, 12691519, 12691697, 12691871, 12692039, 12692213, 12692371]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12689603 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12689603 12692371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12689603) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12692549, 12692731, 12692881, 12693059, 12693223, 12693379, 12693547, 12693727, 12693899, 12694063, 12694247, 12694421, 12694573, 12694753, 12694901, 12695077]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12692371 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12692371 12695077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12692371) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12695261, 12695411, 12695587, 12695759, 12695911, 12696077, 12696239, 12696413, 12696589, 12696709, 12696889, 12697063, 12697207, 12697367, 12697543, 12697721]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12695077 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12695077 12697721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12695077) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12697901, 12698057, 12698239, 12698401, 12698579, 12698761, 12698911, 12699091, 12699229, 12699413, 12699587, 12699751, 12699931, 12700109, 12700273, 12700451]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12697721 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12697721 12700451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12697721) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12700591, 12700741, 12700913, 12701093, 12701263, 12701441, 12701617, 12701791, 12701963, 12702143, 12702323, 12702491, 12702649, 12702827, 12703007, 12703183]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12700451 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12700451 12703183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12700451) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12703367, 12703549, 12703699, 12703883, 12704023, 12704201, 12704371, 12704551, 12704723, 12704903, 12705067, 12705229, 12705403, 12705587, 12705767, 12705923]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12703183 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12703183 12705923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12703183) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12706093, 12706277, 12706451, 12706627, 12706783, 12706961, 12707129, 12707311, 12707413, 12707567, 12707749, 12707927, 12708107, 12708281, 12708457, 12708629]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12705923 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12705923 12708629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12705923) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12708803, 12708973, 12709141, 12709313, 12709483, 12709667, 12709847, 12710023, 12710197, 12710377, 12710561, 12710717, 12710897, 12711079, 12711263, 12711443]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12708629 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12708629 12711443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12708629) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12711619, 12711799, 12711943, 12712099, 12712283, 12712459, 12712627, 12712807, 12712979, 12713159, 12713333, 12713507, 12713677, 12713849, 12714029, 12714203]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12711443 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12711443 12714203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12711443) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12714379, 12714547, 12714727, 12714887, 12715063, 12715211, 12715387, 12715561, 12715727, 12715909, 12716087, 12716269, 12716423, 12716593, 12716773, 12716933]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12714203 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12714203 12716933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12714203) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12717113, 12717281, 12717443, 12717623, 12717799, 12717983, 12718157, 12718319, 12718493, 12718663, 12718819, 12718969, 12719149, 12719309, 12719489, 12719671]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12716933 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12716933 12719671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12716933) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12719849, 12720011, 12720187, 12720361, 12720529, 12720713, 12720889, 12721043, 12721217, 12721391, 12721549, 12721721, 12721903, 12722071, 12722249, 12722417]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12719671 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12719671 12722417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12719671) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12722599, 12722771, 12722923, 12723107, 12723287, 12723467, 12723649, 12723833, 12724009, 12724181, 12724351, 12724531, 12724709, 12724879, 12725057, 12725239]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12722417 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12722417 12725239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12722417) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12725413, 12725597, 12725771, 12725939, 12726083, 12726223, 12726407, 12726589, 12726773, 12726937, 12727109, 12727291, 12727471, 12727651, 12727831, 12727991]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12725239 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12725239 12727991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12725239) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12728167, 12728351, 12728519, 12728663, 12728831, 12728987, 12729137, 12729317, 12729491, 12729671, 12729851, 12730033, 12730169, 12730349, 12730519, 12730691]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12727991 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12727991 12730691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12727991) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12730853, 12731027, 12731189, 12731363, 12731533, 12731707, 12731891, 12732067, 12732241, 12732407, 12732589, 12732763, 12732883, 12733067, 12733229, 12733403]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12730691 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12730691 12733403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12730691) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12733541, 12733703, 12733879, 12734027, 12734171, 12734353, 12734537, 12734713, 12734873, 12735053, 12735223, 12735407, 12735589, 12735773, 12735937, 12736093]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12733403 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12733403 12736093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12733403) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12736277, 12736447, 12736613, 12736793, 12736949, 12737117, 12737281, 12737447, 12737629, 12737797, 12737971, 12738149, 12738311, 12738469, 12738653, 12738821]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12736093 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12736093 12738821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12736093) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12738997, 12739163, 12739343, 12739513, 12739691, 12739873, 12740017, 12740201, 12740369, 12740549, 12740719, 12740899, 12741073, 12741233, 12741401, 12741583]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12738821 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12738821 12741583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12738821) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12741733, 12741907, 12742073, 12742237, 12742421, 12742589, 12742771, 12742913, 12743089, 12743261, 12743443, 12743611, 12743777, 12743933, 12744103, 12744283]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12741583 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12741583 12744283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12741583) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12744463, 12744647, 12744821, 12744961, 12745127, 12745283, 12745399, 12745583, 12745753, 12745921, 12746089, 12746273, 12746453, 12746633, 12746779, 12746959]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12744283 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12744283 12746959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12744283) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12747139, 12747323, 12747503, 12747653, 12747827, 12747983, 12748163, 12748343, 12748513, 12748679, 12748859, 12749041, 12749197, 12749353, 12749537, 12749717]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12746959 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12746959 12749717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12746959) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12749861, 12750011, 12750193, 12750373, 12750523, 12750701, 12750863, 12751043, 12751201, 12751381, 12751559, 12751741, 12751919, 12752071, 12752251, 12752429]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12749717 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12749717 12752429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12749717) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12752609, 12752777, 12752951, 12753131, 12753287, 12753469, 12753647, 12753827, 12754009, 12754177, 12754337, 12754513, 12754697, 12754877, 12755053, 12755233]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12752429 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12752429 12755233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12752429) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12755411, 12755591, 12755767, 12755927, 12756091, 12756253, 12756437, 12756589, 12756763, 12756943, 12757127, 12757309, 12757487, 12757649, 12757807, 12757981]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12755233 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12755233 12757981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12755233) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12670139 12675749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12670139)
    (mid := 12672941) (hi := 12675749) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12675749 12681223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12675749)
    (mid := 12678443) (hi := 12681223) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12681223 12686827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12681223)
    (mid := 12683999) (hi := 12686827) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12686827 12692371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12686827)
    (mid := 12689603) (hi := 12692371) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12692371 12697721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12692371)
    (mid := 12695077) (hi := 12697721) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12697721 12703183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12697721)
    (mid := 12700451) (hi := 12703183) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12703183 12708629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12703183)
    (mid := 12705923) (hi := 12708629) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12708629 12714203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12708629)
    (mid := 12711443) (hi := 12714203) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12714203 12719671 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12714203)
    (mid := 12716933) (hi := 12719671) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12719671 12725239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12719671)
    (mid := 12722417) (hi := 12725239) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12725239 12730691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12725239)
    (mid := 12727991) (hi := 12730691) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12730691 12736093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12730691)
    (mid := 12733403) (hi := 12736093) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12736093 12741583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12736093)
    (mid := 12738821) (hi := 12741583) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12741583 12746959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12741583)
    (mid := 12744283) (hi := 12746959) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12746959 12752429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12746959)
    (mid := 12749717) (hi := 12752429) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12752429 12757981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12752429)
    (mid := 12755233) (hi := 12757981) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12670139 12681223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12670139)
    (mid := 12675749) (hi := 12681223) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12681223 12692371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12681223)
    (mid := 12686827) (hi := 12692371) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12692371 12703183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12692371)
    (mid := 12697721) (hi := 12703183) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12703183 12714203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12703183)
    (mid := 12708629) (hi := 12714203) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12714203 12725239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12714203)
    (mid := 12719671) (hi := 12725239) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12725239 12736093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12725239)
    (mid := 12730691) (hi := 12736093) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12736093 12746959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12736093)
    (mid := 12741583) (hi := 12746959) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12746959 12757981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12746959)
    (mid := 12752429) (hi := 12757981) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12670139 12692371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12670139)
    (mid := 12681223) (hi := 12692371) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12692371 12714203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12692371)
    (mid := 12703183) (hi := 12714203) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12714203 12736093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12714203)
    (mid := 12725239) (hi := 12736093) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12736093 12757981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12736093)
    (mid := 12746959) (hi := 12757981) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12670139 12714203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12670139)
    (mid := 12692371) (hi := 12714203) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12714203 12757981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12714203)
    (mid := 12736093) (hi := 12757981) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12670139 12757981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12670139)
    (mid := 12714203) (hi := 12757981) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12670139 12757981 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block144

#print axioms B699MiddleExtension.PrimorialBlocks.Block144.joined
