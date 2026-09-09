import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block011

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [983123, 983299, 983461, 983617, 983791, 983951, 984127, 984307, 984491, 984667, 984847, 985027, 985181, 985351, 985531, 985709]
theorem check0 : primorialChainCheck 4473 primorial4473 184 982939 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 982939 985709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 982939) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [985877, 986053, 986213, 986369, 986543, 986719, 986903, 987083, 987251, 987433, 987607, 987739, 987913, 988093, 988271, 988453]
theorem check1 : primorialChainCheck 4473 primorial4473 184 985709 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 985709 988453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 985709) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [988607, 988789, 988963, 989123, 989293, 989477, 989647, 989831, 990013, 990181, 990361, 990529, 990707, 990889, 991073, 991229]
theorem check2 : primorialChainCheck 4473 primorial4473 184 988453 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 988453 991229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 988453) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [991409, 991579, 991751, 991931, 992113, 992281, 992461, 992633, 992809, 992983, 993137, 993319, 993493, 993647, 993827, 993997]
theorem check3 : primorialChainCheck 4473 primorial4473 184 991229 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 991229 993997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 991229) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [994181, 994363, 994501, 994667, 994837, 995009, 995173, 995347, 995531, 995713, 995887, 996067, 996211, 996367, 996551, 996703]
theorem check4 : primorialChainCheck 4473 primorial4473 184 993997 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 993997 996703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 993997) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [996887, 997069, 997247, 997427, 997609, 997793, 997973, 998147, 998329, 998513, 998689, 998861, 999043, 999221, 999389, 999563]
theorem check5 : primorialChainCheck 4473 primorial4473 184 996703 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 996703 999563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 996703) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [999727, 999907, 1000081, 1000253, 1000429, 1000609, 1000793, 1000973, 1001153, 1001327, 1001501, 1001683, 1001839, 1002017, 1002191, 1002361]
theorem check6 : primorialChainCheck 4473 primorial4473 184 999563 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 999563 1002361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 999563) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1002527, 1002709, 1002893, 1003049, 1003201, 1003381, 1003549, 1003733, 1003913, 1004089, 1004273, 1004453, 1004599, 1004779, 1004963, 1005143]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1002361 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1002361 1005143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1002361) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1005317, 1005493, 1005677, 1005833, 1006007, 1006189, 1006367, 1006547, 1006721, 1006897, 1007081, 1007249, 1007429, 1007609, 1007789, 1007971]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1005143 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1005143 1007971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1005143) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1008131, 1008263, 1008437, 1008617, 1008793, 1008947, 1009121, 1009303, 1009487, 1009669, 1009843, 1010003, 1010179, 1010357, 1010519, 1010687]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1007971 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1007971 1010687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1007971) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1010861, 1011037, 1011221, 1011397, 1011559, 1011737, 1011917, 1012097, 1012279, 1012463, 1012637, 1012811, 1012993, 1013153, 1013329, 1013503]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1010687 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1010687 1013503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1010687) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1013687, 1013851, 1014029, 1014199, 1014371, 1014547, 1014731, 1014907, 1015081, 1015207, 1015369, 1015549, 1015727, 1015907, 1016089, 1016263]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1013503 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1013503 1016263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1013503) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1016441, 1016621, 1016789, 1016971, 1017139, 1017323, 1017481, 1017649, 1017827, 1018007, 1018177, 1018357, 1018513, 1018697, 1018879, 1019059]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1016263 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1016263 1019059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1016263) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1019237, 1019413, 1019563, 1019747, 1019927, 1020109, 1020293, 1020457, 1020631, 1020797, 1020979, 1021159, 1021333, 1021487, 1021663, 1021837]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1019059 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1019059 1021837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1019059) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1022017, 1022201, 1022383, 1022531, 1022701, 1022881, 1023047, 1023229, 1023413, 1023577, 1023751, 1023871, 1024031, 1024207, 1024391, 1024559]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1021837 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1021837 1024559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1021837) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1024729, 1024909, 1025093, 1025273, 1025443, 1025623, 1025807, 1025957, 1026139, 1026313, 1026481, 1026661, 1026833, 1027003, 1027181, 1027357]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1024559 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1024559 1027357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1024559) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1027519, 1027703, 1027883, 1028063, 1028243, 1028411, 1028581, 1028761, 1028941, 1029113, 1029289, 1029473, 1029653, 1029827, 1029989, 1030157]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1027357 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1027357 1030157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1027357) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1030307, 1030451, 1030619, 1030801, 1030957, 1031141, 1031323, 1031507, 1031677, 1031837, 1032007, 1032191, 1032373, 1032541, 1032721, 1032901]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1030157 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1030157 1032901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1030157) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1033079, 1033223, 1033393, 1033567, 1033751, 1033927, 1034101, 1034281, 1034461, 1034639, 1034809, 1034993, 1035163, 1035343, 1035527, 1035707]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1032901 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1032901 1035707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1032901) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1035869, 1036039, 1036223, 1036391, 1036561, 1036729, 1036913, 1037089, 1037273, 1037447, 1037627, 1037801, 1037983, 1038157, 1038337, 1038503]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1035707 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1035707 1038503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1035707) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1038671, 1038833, 1039007, 1039187, 1039351, 1039517, 1039681, 1039837, 1040021, 1040203, 1040387, 1040563, 1040747, 1040929, 1041109, 1041289]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1038503 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1038503 1041289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1038503) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1041461, 1041643, 1041823, 1042001, 1042183, 1042357, 1042529, 1042709, 1042861, 1043023, 1043201, 1043377, 1043557, 1043723, 1043899, 1044079]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1041289 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1041289 1044079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1041289) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1044257, 1044437, 1044619, 1044781, 1044941, 1045123, 1045307, 1045487, 1045663, 1045841, 1045997, 1046179, 1046351, 1046527, 1046711, 1046867]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1044079 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1044079 1046867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1044079) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1047043, 1047199, 1047379, 1047559, 1047737, 1047887, 1048063, 1048219, 1048391, 1048573, 1048721, 1048897, 1049077, 1049239, 1049413, 1049569]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1046867 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1046867 1049569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1046867) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1049747, 1049899, 1050083, 1050253, 1050437, 1050611, 1050781, 1050961, 1051139, 1051319, 1051499, 1051663, 1051847, 1052027, 1052203, 1052333]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1049569 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1049569 1052333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1049569) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1052489, 1052663, 1052819, 1052993, 1053103, 1053271, 1053449, 1053617, 1053769, 1053953, 1054133, 1054309, 1054483, 1054667, 1054843, 1055017]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1052333 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1052333 1055017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1052333) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1055191, 1055371, 1055543, 1055713, 1055897, 1056073, 1056247, 1056401, 1056577, 1056739, 1056917, 1057093, 1057271, 1057421, 1057603, 1057781]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1055017 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1055017 1057781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1055017) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1057963, 1058147, 1058329, 1058507, 1058683, 1058861, 1059029, 1059209, 1059349, 1059517, 1059701, 1059871, 1060051, 1060229, 1060403, 1060573]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1057781 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1057781 1060573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1057781) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1060747, 1060883, 1061057, 1061227, 1061407, 1061591, 1061773, 1061917, 1062073, 1062253, 1062427, 1062601, 1062781, 1062949, 1063123, 1063303]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1060573 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1060573 1063303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1060573) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1063483, 1063661, 1063837, 1064017, 1064201, 1064383, 1064549, 1064731, 1064911, 1065091, 1065269, 1065433, 1065601, 1065773, 1065949, 1066133]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1063303 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1063303 1066133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1063303) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1066313, 1066447, 1066621, 1066789, 1066973, 1067147, 1067329, 1067509, 1067687, 1067851, 1068019, 1068203, 1068383, 1068559, 1068721, 1068901]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1066133 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1066133 1068901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1066133) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1069051, 1069223, 1069379, 1069561, 1069741, 1069921, 1070093, 1070257, 1070431, 1070579, 1070761, 1070939, 1071121, 1071283, 1071457, 1071641]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1068901 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1068901 1071641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1068901) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 982939 988453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 982939)
    (mid := 985709) (hi := 988453) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 988453 993997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 988453)
    (mid := 991229) (hi := 993997) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 993997 999563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 993997)
    (mid := 996703) (hi := 999563) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 999563 1005143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 999563)
    (mid := 1002361) (hi := 1005143) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1005143 1010687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1005143)
    (mid := 1007971) (hi := 1010687) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1010687 1016263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1010687)
    (mid := 1013503) (hi := 1016263) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1016263 1021837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1016263)
    (mid := 1019059) (hi := 1021837) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1021837 1027357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1021837)
    (mid := 1024559) (hi := 1027357) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1027357 1032901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1027357)
    (mid := 1030157) (hi := 1032901) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1032901 1038503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1032901)
    (mid := 1035707) (hi := 1038503) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1038503 1044079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1038503)
    (mid := 1041289) (hi := 1044079) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1044079 1049569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1044079)
    (mid := 1046867) (hi := 1049569) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1049569 1055017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1049569)
    (mid := 1052333) (hi := 1055017) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1055017 1060573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1055017)
    (mid := 1057781) (hi := 1060573) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1060573 1066133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1060573)
    (mid := 1063303) (hi := 1066133) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1066133 1071641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1066133)
    (mid := 1068901) (hi := 1071641) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 982939 993997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 982939)
    (mid := 988453) (hi := 993997) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 993997 1005143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 993997)
    (mid := 999563) (hi := 1005143) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1005143 1016263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1005143)
    (mid := 1010687) (hi := 1016263) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1016263 1027357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1016263)
    (mid := 1021837) (hi := 1027357) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1027357 1038503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1027357)
    (mid := 1032901) (hi := 1038503) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1038503 1049569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1038503)
    (mid := 1044079) (hi := 1049569) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1049569 1060573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1049569)
    (mid := 1055017) (hi := 1060573) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1060573 1071641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1060573)
    (mid := 1066133) (hi := 1071641) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 982939 1005143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 982939)
    (mid := 993997) (hi := 1005143) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1005143 1027357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1005143)
    (mid := 1016263) (hi := 1027357) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1027357 1049569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1027357)
    (mid := 1038503) (hi := 1049569) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1049569 1071641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1049569)
    (mid := 1060573) (hi := 1071641) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 982939 1027357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 982939)
    (mid := 1005143) (hi := 1027357) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1027357 1071641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1027357)
    (mid := 1049569) (hi := 1071641) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 982939 1071641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 982939)
    (mid := 1027357) (hi := 1071641) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 982939 1071641 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block011

#print axioms B699MiddleExtension.PrimorialBlocks.Block011.joined
