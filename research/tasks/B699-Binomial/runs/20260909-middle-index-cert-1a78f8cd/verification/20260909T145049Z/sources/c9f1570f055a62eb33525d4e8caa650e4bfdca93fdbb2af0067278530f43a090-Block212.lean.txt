import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block212

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18614483, 18614641, 18614807, 18614977, 18615161, 18615313, 18615491, 18615673, 18615829, 18616007, 18616187, 18616369, 18616517, 18616693, 18616877, 18617021]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18614311 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18614311 18617021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18614311) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18617201, 18617369, 18617497, 18617671, 18617849, 18617987, 18618169, 18618343, 18618521, 18618703, 18618877, 18619021, 18619193, 18619339, 18619519, 18619703]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18617021 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18617021 18619703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18617021) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18619883, 18620051, 18620207, 18620387, 18620549, 18620717, 18620887, 18621047, 18621227, 18621373, 18621557, 18621739, 18621901, 18622073, 18622243, 18622427]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18619703 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18619703 18622427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18619703) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18622589, 18622757, 18622921, 18623093, 18623273, 18623441, 18623611, 18623791, 18623911, 18624091, 18624259, 18624391, 18624569, 18624743, 18624913, 18625051]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18622427 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18622427 18625051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18622427) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18625231, 18625403, 18625573, 18625753, 18625913, 18626081, 18626249, 18626431, 18626609, 18626791, 18626969, 18627137, 18627319, 18627473, 18627601, 18627779]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18625051 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18625051 18627779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18625051) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18627949, 18628133, 18628307, 18628451, 18628633, 18628783, 18628937, 18629111, 18629279, 18629441, 18629623, 18629801, 18629983, 18630121, 18630301, 18630463]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18627779 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18627779 18630463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18627779) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18630631, 18630809, 18630973, 18631157, 18631331, 18631493, 18631667, 18631849, 18632021, 18632191, 18632363, 18632543, 18632723, 18632903, 18633073, 18633257]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18630463 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18630463 18633257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18630463) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18633431, 18633599, 18633743, 18633919, 18634073, 18634243, 18634423, 18634571, 18634753, 18634933, 18635117, 18635291, 18635473, 18635653, 18635803, 18635987]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18633257 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18633257 18635987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18633257) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18636139, 18636323, 18636481, 18636661, 18636833, 18637013, 18637193, 18637373, 18637543, 18637711, 18637873, 18638029, 18638209, 18638381, 18638519, 18638701]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18635987 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18635987 18638701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18635987) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18638863, 18639013, 18639169, 18639353, 18639521, 18639679, 18639851, 18640033, 18640103, 18640277, 18640451, 18640621, 18640777, 18640949, 18641131, 18641309]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18638701 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18638701 18641309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18638701) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18641473, 18641653, 18641827, 18641999, 18642181, 18642359, 18642539, 18642707, 18642887, 18643049, 18643217, 18643367, 18643529, 18643711, 18643879, 18644063]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18641309 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18641309 18644063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18641309) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18644239, 18644363, 18644543, 18644723, 18644891, 18645059, 18645227, 18645401, 18645581, 18645763, 18645941, 18646079, 18646253, 18646427, 18646577, 18646751]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18644063 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18644063 18646751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18644063) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18646931, 18647107, 18647287, 18647437, 18647621, 18647801, 18647983, 18648163, 18648319, 18648499, 18648683, 18648863, 18649039, 18649223, 18649403, 18649571]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18646751 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18646751 18649571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18646751) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18649753, 18649937, 18650111, 18650279, 18650461, 18650633, 18650803, 18650977, 18651161, 18651337, 18651481, 18651631, 18651803, 18651967, 18652147, 18652313]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18649571 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18649571 18652313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18649571) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18652493, 18652637, 18652819, 18652999, 18653183, 18653359, 18653543, 18653707, 18653867, 18654023, 18654197, 18654359, 18654539, 18654719, 18654893, 18655061]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18652313 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18652313 18655061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18652313) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18655243, 18655423, 18655589, 18655759, 18655939, 18656117, 18656279, 18656459, 18656629, 18656783, 18656951, 18657127, 18657307, 18657491, 18657649, 18657799]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18655061 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18655061 18657799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18655061) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18657923, 18658103, 18658271, 18658433, 18658613, 18658793, 18658973, 18659143, 18659323, 18659503, 18659687, 18659857, 18660023, 18660197, 18660377, 18660559]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18657799 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18657799 18660559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18657799) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18660743, 18660911, 18661091, 18661271, 18661429, 18661607, 18661771, 18661943, 18662089, 18662263, 18662437, 18662621, 18662803, 18662983, 18663167, 18663347]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18660559 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18660559 18663347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18660559) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18663527, 18663709, 18663893, 18664073, 18664253, 18664433, 18664579, 18664757, 18664913, 18665077, 18665243, 18665411, 18665587, 18665761, 18665929, 18666107]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18663347 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18663347 18666107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18663347) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18666283, 18666467, 18666647, 18666821, 18666997, 18667171, 18667331, 18667511, 18667679, 18667849, 18668033, 18668213, 18668383, 18668557, 18668701, 18668861]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18666107 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18666107 18668861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18666107) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18669029, 18669173, 18669331, 18669509, 18669671, 18669853, 18670037, 18670219, 18670387, 18670567, 18670747, 18670931, 18671111, 18671293, 18671473, 18671657]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18668861 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18668861 18671657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18668861) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18671833, 18671993, 18672133, 18672281, 18672461, 18672637, 18672809, 18672949, 18673103, 18673283, 18673411, 18673583, 18673763, 18673933, 18674111, 18674287]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18671657 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18671657 18674287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18671657) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18674471, 18674627, 18674809, 18674987, 18675169, 18675353, 18675533, 18675691, 18675859, 18676039, 18676223, 18676381, 18676517, 18676687, 18676871, 18677051]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18674287 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18674287 18677051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18674287) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18677231, 18677413, 18677579, 18677723, 18677887, 18678061, 18678239, 18678389, 18678559, 18678743, 18678917, 18679099, 18679273, 18679457, 18679627, 18679811]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18677051 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18677051 18679811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18677051) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18679993, 18680177, 18680353, 18680527, 18680699, 18680861, 18681031, 18681203, 18681373, 18681547, 18681709, 18681863, 18682033, 18682199, 18682369, 18682501]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18679811 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18679811 18682501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18679811) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18682679, 18682849, 18683033, 18683209, 18683389, 18683551, 18683729, 18683893, 18684077, 18684251, 18684433, 18684587, 18684767, 18684949, 18685133, 18685313]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18682501 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18682501 18685313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18682501) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18685451, 18685621, 18685801, 18685981, 18686141, 18686279, 18686461, 18686641, 18686821, 18686999, 18687169, 18687329, 18687511, 18687587, 18687737, 18687917]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18685313 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18685313 18687917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18685313) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18688091, 18688261, 18688433, 18688613, 18688771, 18688931, 18689093, 18689261, 18689441, 18689623, 18689789, 18689963, 18690127, 18690311, 18690493, 18690673]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18687917 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18687917 18690673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18687917) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18690857, 18691021, 18691201, 18691339, 18691523, 18691693, 18691873, 18692021, 18692189, 18692357, 18692507, 18692689, 18692873, 18693049, 18693209, 18693373]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18690673 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18690673 18693373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18690673) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18693553, 18693721, 18693901, 18694079, 18694261, 18694439, 18694619, 18694787, 18694961, 18695137, 18695321, 18695491, 18695659, 18695843, 18696023, 18696203]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18693373 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18693373 18696203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18693373) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18696383, 18696563, 18696721, 18696901, 18697057, 18697219, 18697403, 18697583, 18697759, 18697907, 18698089, 18698263, 18698441, 18698573, 18698749, 18698923]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18696203 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18696203 18698923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18696203) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18699103, 18699259, 18699413, 18699589, 18699761, 18699887, 18700067, 18700249, 18700411, 18700589, 18700763, 18700943, 18701113, 18701297, 18701467, 18701623]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18698923 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18698923 18701623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18698923) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18614311 18619703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18614311)
    (mid := 18617021) (hi := 18619703) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18619703 18625051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18619703)
    (mid := 18622427) (hi := 18625051) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18625051 18630463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18625051)
    (mid := 18627779) (hi := 18630463) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18630463 18635987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18630463)
    (mid := 18633257) (hi := 18635987) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18635987 18641309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18635987)
    (mid := 18638701) (hi := 18641309) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18641309 18646751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18641309)
    (mid := 18644063) (hi := 18646751) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18646751 18652313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18646751)
    (mid := 18649571) (hi := 18652313) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18652313 18657799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18652313)
    (mid := 18655061) (hi := 18657799) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18657799 18663347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18657799)
    (mid := 18660559) (hi := 18663347) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18663347 18668861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18663347)
    (mid := 18666107) (hi := 18668861) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18668861 18674287 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18668861)
    (mid := 18671657) (hi := 18674287) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18674287 18679811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18674287)
    (mid := 18677051) (hi := 18679811) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18679811 18685313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18679811)
    (mid := 18682501) (hi := 18685313) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18685313 18690673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18685313)
    (mid := 18687917) (hi := 18690673) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18690673 18696203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18690673)
    (mid := 18693373) (hi := 18696203) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18696203 18701623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18696203)
    (mid := 18698923) (hi := 18701623) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18614311 18625051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18614311)
    (mid := 18619703) (hi := 18625051) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18625051 18635987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18625051)
    (mid := 18630463) (hi := 18635987) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18635987 18646751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18635987)
    (mid := 18641309) (hi := 18646751) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18646751 18657799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18646751)
    (mid := 18652313) (hi := 18657799) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18657799 18668861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18657799)
    (mid := 18663347) (hi := 18668861) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18668861 18679811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18668861)
    (mid := 18674287) (hi := 18679811) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18679811 18690673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18679811)
    (mid := 18685313) (hi := 18690673) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18690673 18701623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18690673)
    (mid := 18696203) (hi := 18701623) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18614311 18635987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18614311)
    (mid := 18625051) (hi := 18635987) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18635987 18657799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18635987)
    (mid := 18646751) (hi := 18657799) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18657799 18679811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18657799)
    (mid := 18668861) (hi := 18679811) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18679811 18701623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18679811)
    (mid := 18690673) (hi := 18701623) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18614311 18657799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18614311)
    (mid := 18635987) (hi := 18657799) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18657799 18701623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18657799)
    (mid := 18679811) (hi := 18701623) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18614311 18701623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18614311)
    (mid := 18657799) (hi := 18701623) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18614311 18701623 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block212

#print axioms B699MiddleExtension.PrimorialBlocks.Block212.joined
