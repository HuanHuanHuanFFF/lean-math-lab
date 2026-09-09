import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block170

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14946887, 14947057, 14947213, 14947397, 14947577, 14947747, 14947931, 14948113, 14948273, 14948449, 14948621, 14948783, 14948939, 14949113, 14949283, 14949463]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14946719 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14946719 14949463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14946719) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14949631, 14949799, 14949971, 14950151, 14950333, 14950517, 14950699, 14950877, 14951059, 14951243, 14951413, 14951597, 14951767, 14951941, 14952109, 14952283]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14949463 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14949463 14952283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14949463) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14952463, 14952643, 14952827, 14953007, 14953189, 14953331, 14953507, 14953669, 14953853, 14954011, 14954189, 14954323, 14954503, 14954647, 14954813, 14954971]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14952283 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14952283 14954971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14952283) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14955133, 14955307, 14955467, 14955643, 14955821, 14955991, 14956171, 14956327, 14956511, 14956691, 14956873, 14957057, 14957227, 14957381, 14957519, 14957681]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14954971 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14954971 14957681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14954971) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14957863, 14958043, 14958227, 14958409, 14958569, 14958743, 14958917, 14959079, 14959253, 14959429, 14959613, 14959781, 14959943, 14960093, 14960269, 14960447]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14957681 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14957681 14960447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14957681) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14960597, 14960773, 14960951, 14961103, 14961217, 14961391, 14961563, 14961733, 14961857, 14962037, 14962201, 14962379, 14962537, 14962721, 14962901, 14963083]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14960447 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14960447 14963083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14960447) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14963261, 14963423, 14963581, 14963749, 14963933, 14964113, 14964281, 14964461, 14964643, 14964823, 14965003, 14965147, 14965319, 14965493, 14965669, 14965829]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14963083 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14963083 14965829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14963083) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14965969, 14966153, 14966333, 14966473, 14966657, 14966837, 14967011, 14967167, 14967349, 14967529, 14967713, 14967859, 14968033, 14968201, 14968357, 14968507]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14965829 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14965829 14968507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14965829) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14968673, 14968853, 14969033, 14969209, 14969371, 14969543, 14969723, 14969897, 14970077, 14970257, 14970419, 14970589, 14970773, 14970941, 14971097, 14971277]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14968507 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14968507 14971277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14968507) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14971433, 14971609, 14971787, 14971963, 14972147, 14972329, 14972491, 14972669, 14972849, 14973011, 14973191, 14973373, 14973557, 14973737, 14973877, 14974051]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14971277 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14971277 14974051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14971277) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14974231, 14974369, 14974523, 14974703, 14974877, 14975039, 14975197, 14975381, 14975549, 14975717, 14975899, 14976079, 14976259, 14976407, 14976589, 14976739]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14974051 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14974051 14976739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14974051) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14976917, 14977097, 14977279, 14977463, 14977639, 14977817, 14977987, 14978111, 14978291, 14978461, 14978633, 14978801, 14978963, 14979143, 14979319, 14979491]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14976739 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14976739 14979491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14976739) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14979667, 14979827, 14979989, 14980171, 14980351, 14980517, 14980699, 14980883, 14981059, 14981231, 14981413, 14981597, 14981741, 14981917, 14982101, 14982281]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14979491 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14979491 14982281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14979491) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14982463, 14982553, 14982719, 14982901, 14983063, 14983231, 14983403, 14983561, 14983739, 14983877, 14984059, 14984231, 14984383, 14984549, 14984731, 14984867]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14982281 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14982281 14984867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14982281) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14985031, 14985209, 14985359, 14985521, 14985683, 14985863, 14986009, 14986189, 14986351, 14986523, 14986703, 14986871, 14987051, 14987233, 14987417, 14987587]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14984867 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14984867 14987587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14984867) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14987771, 14987933, 14988089, 14988257, 14988437, 14988613, 14988797, 14988977, 14989147, 14989319, 14989501, 14989679, 14989861, 14990033, 14990207, 14990389]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14987587 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14987587 14990389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14987587) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14990557, 14990683, 14990861, 14991043, 14991227, 14991409, 14991553, 14991737, 14991917, 14992097, 14992279, 14992451, 14992633, 14992811, 14992981, 14993159]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14990389 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14990389 14993159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14990389) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14993323, 14993501, 14993683, 14993837, 14994013, 14994197, 14994341, 14994523, 14994677, 14994853, 14995033, 14995193, 14995363, 14995531, 14995703, 14995861]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14993159 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14993159 14995861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14993159) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14996041, 14996221, 14996383, 14996563, 14996687, 14996843, 14996959, 14997139, 14997319, 14997503, 14997673, 14997847, 14998019, 14998187, 14998351, 14998531]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14995861 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14995861 14998531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14995861) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14998693, 14998871, 14999051, 14999233, 14999407, 14999591, 14999771, 14999953, 15000131, 15000299, 15000457, 15000631, 15000781, 15000929, 15001111, 15001291]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14998531 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14998531 15001291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14998531) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15001471, 15001639, 15001813, 15001991, 15002173, 15002327, 15002497, 15002677, 15002851, 15003031, 15003203, 15003379, 15003557, 15003733, 15003893, 15004069]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15001291 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15001291 15004069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15001291) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15004219, 15004373, 15004543, 15004723, 15004903, 15005087, 15005261, 15005437, 15005621, 15005791, 15005957, 15006133, 15006283, 15006437, 15006617, 15006781]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15004069 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15004069 15006781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15004069) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15006931, 15007103, 15007261, 15007439, 15007613, 15007781, 15007963, 15008117, 15008299, 15008473, 15008647, 15008831, 15008957, 15009119, 15009299, 15009481]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15006781 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15006781 15009481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15006781) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15009661, 15009833, 15010001, 15010157, 15010339, 15010481, 15010663, 15010843, 15011023, 15011201, 15011333, 15011509, 15011693, 15011873, 15012043, 15012199]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15009481 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15009481 15012199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15009481) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15012367, 15012541, 15012707, 15012883, 15013049, 15013183, 15013367, 15013547, 15013721, 15013903, 15014057, 15014227, 15014401, 15014557, 15014737, 15014917]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15012199 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15012199 15014917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15012199) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15015079, 15015223, 15015401, 15015551, 15015691, 15015863, 15016039, 15016207, 15016367, 15016549, 15016733, 15016913, 15017089, 15017269, 15017441, 15017599]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15014917 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15014917 15017599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15014917) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15017777, 15017941, 15018097, 15018281, 15018461, 15018613, 15018791, 15018967, 15019133, 15019307, 15019451, 15019601, 15019757, 15019933, 15020107, 15020281]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15017599 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15017599 15020281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15017599) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15020443, 15020627, 15020737, 15020921, 15021103, 15021269, 15021437, 15021619, 15021803, 15021961, 15022127, 15022307, 15022477, 15022661, 15022831, 15022991]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15020281 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15020281 15022991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15020281) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15023171, 15023353, 15023527, 15023681, 15023849, 15024029, 15024211, 15024389, 15024571, 15024749, 15024907, 15025061, 15025237, 15025379, 15025547, 15025729]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15022991 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15022991 15025729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15022991) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15025897, 15026059, 15026201, 15026371, 15026527, 15026707, 15026867, 15027013, 15027179, 15027323, 15027491, 15027659, 15027823, 15028001, 15028171, 15028319]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15025729 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15025729 15028319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15025729) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15028463, 15028633, 15028813, 15028991, 15029153, 15029293, 15029477, 15029647, 15029831, 15029999, 15030181, 15030361, 15030529, 15030689, 15030863, 15031031]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15028319 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15028319 15031031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15028319) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15031157, 15031319, 15031501, 15031619, 15031787, 15031969, 15032153, 15032309, 15032491, 15032651, 15032833, 15033013, 15033169, 15033353, 15033523, 15033701]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15031031 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15031031 15033701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15031031) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14946719 14952283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14946719)
    (mid := 14949463) (hi := 14952283) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14952283 14957681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14952283)
    (mid := 14954971) (hi := 14957681) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14957681 14963083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14957681)
    (mid := 14960447) (hi := 14963083) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14963083 14968507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14963083)
    (mid := 14965829) (hi := 14968507) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14968507 14974051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14968507)
    (mid := 14971277) (hi := 14974051) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14974051 14979491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14974051)
    (mid := 14976739) (hi := 14979491) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14979491 14984867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14979491)
    (mid := 14982281) (hi := 14984867) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14984867 14990389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14984867)
    (mid := 14987587) (hi := 14990389) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14990389 14995861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14990389)
    (mid := 14993159) (hi := 14995861) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14995861 15001291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14995861)
    (mid := 14998531) (hi := 15001291) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15001291 15006781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15001291)
    (mid := 15004069) (hi := 15006781) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15006781 15012199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15006781)
    (mid := 15009481) (hi := 15012199) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15012199 15017599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15012199)
    (mid := 15014917) (hi := 15017599) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15017599 15022991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15017599)
    (mid := 15020281) (hi := 15022991) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15022991 15028319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15022991)
    (mid := 15025729) (hi := 15028319) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15028319 15033701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15028319)
    (mid := 15031031) (hi := 15033701) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14946719 14957681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14946719)
    (mid := 14952283) (hi := 14957681) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14957681 14968507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14957681)
    (mid := 14963083) (hi := 14968507) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14968507 14979491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14968507)
    (mid := 14974051) (hi := 14979491) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14979491 14990389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14979491)
    (mid := 14984867) (hi := 14990389) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14990389 15001291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14990389)
    (mid := 14995861) (hi := 15001291) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15001291 15012199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15001291)
    (mid := 15006781) (hi := 15012199) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15012199 15022991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15012199)
    (mid := 15017599) (hi := 15022991) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15022991 15033701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15022991)
    (mid := 15028319) (hi := 15033701) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14946719 14968507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14946719)
    (mid := 14957681) (hi := 14968507) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14968507 14990389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14968507)
    (mid := 14979491) (hi := 14990389) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14990389 15012199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14990389)
    (mid := 15001291) (hi := 15012199) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15012199 15033701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15012199)
    (mid := 15022991) (hi := 15033701) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14946719 14990389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14946719)
    (mid := 14968507) (hi := 14990389) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14990389 15033701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14990389)
    (mid := 15012199) (hi := 15033701) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14946719 15033701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14946719)
    (mid := 14990389) (hi := 15033701) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14946719 15033701 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block170

#print axioms B699MiddleExtension.PrimorialBlocks.Block170.joined
