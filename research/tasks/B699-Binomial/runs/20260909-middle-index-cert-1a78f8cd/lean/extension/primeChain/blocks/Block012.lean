import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block012

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1071821, 1071991, 1072163, 1072339, 1072517, 1072657, 1072837, 1072999, 1073183, 1073353, 1073537, 1073717, 1073881, 1074061, 1074223, 1074389]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1071641 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1071641 1074389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1071641) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1074559, 1074719, 1074901, 1075079, 1075259, 1075441, 1075621, 1075787, 1075957, 1076137, 1076303, 1076477, 1076657, 1076827, 1076981, 1077161]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1074389 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1074389 1077161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1074389) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1077337, 1077499, 1077677, 1077859, 1078043, 1078219, 1078403, 1078559, 1078739, 1078919, 1079101, 1079269, 1079453, 1079633, 1079809, 1079987]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1077161 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1077161 1079987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1077161) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1080143, 1080311, 1080491, 1080661, 1080841, 1080983, 1081163, 1081337, 1081513, 1081687, 1081859, 1082027, 1082209, 1082387, 1082533, 1082717]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1079987 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1079987 1082717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1079987) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1082891, 1083073, 1083253, 1083431, 1083613, 1083793, 1083949, 1084133, 1084313, 1084493, 1084673, 1084829, 1085011, 1085179, 1085353, 1085521]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1082717 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1082717 1085521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1082717) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1085687, 1085867, 1086047, 1086203, 1086373, 1086557, 1086731, 1086913, 1087091, 1087271, 1087453, 1087631, 1087811, 1087987, 1088161, 1088309]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1085521 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1085521 1088309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1085521) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1088489, 1088671, 1088851, 1089029, 1089197, 1089359, 1089523, 1089703, 1089877, 1090031, 1090213, 1090387, 1090553, 1090721, 1090897, 1091071]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1088309 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1088309 1091071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1088309) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1091243, 1091413, 1091591, 1091749, 1091917, 1092089, 1092269, 1092451, 1092629, 1092803, 1092977, 1093159, 1093331, 1093493, 1093667, 1093847]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1091071 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1091071 1093847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1091071) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1094029, 1094209, 1094377, 1094557, 1094711, 1094887, 1095071, 1095251, 1095433, 1095613, 1095793, 1095961, 1096141, 1096307, 1096489, 1096673]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1093847 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1093847 1096673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1093847) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1096853, 1097029, 1097209, 1097381, 1097557, 1097729, 1097909, 1098077, 1098233, 1098401, 1098541, 1098709, 1098847, 1099031, 1099199, 1099369]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1096673 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1096673 1099369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1096673) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1099547, 1099729, 1099867, 1100051, 1100219, 1100387, 1100569, 1100747, 1100921, 1101103, 1101283, 1101467, 1101649, 1101811, 1101967, 1102151]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1099369 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1099369 1102151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1099369) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1102333, 1102483, 1102663, 1102847, 1103029, 1103213, 1103371, 1103549, 1103723, 1103903, 1104079, 1104247, 1104431, 1104613, 1104797, 1104959]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1102151 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1102151 1104959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1102151) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1105141, 1105309, 1105463, 1105639, 1105823, 1105999, 1106179, 1106363, 1106543, 1106689, 1106851, 1107031, 1107203, 1107383, 1107553, 1107727]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1104959 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1104959 1107727 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1104959) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1107893, 1108073, 1108253, 1108427, 1108609, 1108781, 1108957, 1109123, 1109291, 1109473, 1109653, 1109821, 1109987, 1110167, 1110349, 1110533]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1107727 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1107727 1110533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1107727) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1110713, 1110887, 1111067, 1111247, 1111427, 1111577, 1111757, 1111933, 1112113, 1112291, 1112471, 1112653, 1112833, 1113011, 1113193, 1113373]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1110533 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1110533 1113373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1110533) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1113557, 1113719, 1113899, 1114063, 1114241, 1114423, 1114601, 1114759, 1114943, 1115117, 1115299, 1115467, 1115641, 1115789, 1115941, 1116107]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1113373 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1113373 1116107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1113373) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1116289, 1116473, 1116653, 1116821, 1116989, 1117169, 1117349, 1117513, 1117681, 1117861, 1118041, 1118219, 1118393, 1118569, 1118749, 1118921]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1116107 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1116107 1118921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1116107) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1119091, 1119269, 1119449, 1119623, 1119799, 1119959, 1120121, 1120303, 1120481, 1120663, 1120837, 1121017, 1121191, 1121369, 1121543, 1121723]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1118921 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1118921 1121723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1118921) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1121899, 1122071, 1122241, 1122419, 1122599, 1122761, 1122941, 1123093, 1123267, 1123439, 1123621, 1123777, 1123961, 1124141, 1124317, 1124449]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1121723 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1121723 1124449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1121723) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1124603, 1124759, 1124869, 1125053, 1125221, 1125401, 1125581, 1125763, 1125941, 1126093, 1126259, 1126441, 1126597, 1126781, 1126963, 1127123]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1124449 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1124449 1127123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1124449) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1127303, 1127461, 1127641, 1127813, 1127993, 1128161, 1128313, 1128497, 1128667, 1128823, 1128997, 1129169, 1129343, 1129523, 1129699, 1129861]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1127123 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1127123 1129861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1127123) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1130039, 1130191, 1130369, 1130527, 1130711, 1130863, 1131047, 1131223, 1131397, 1131569, 1131751, 1131919, 1132091, 1132259, 1132429, 1132603]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1129861 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1129861 1132603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1129861) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1132787, 1132969, 1133149, 1133333, 1133513, 1133689, 1133861, 1134043, 1134193, 1134313, 1134487, 1134667, 1134841, 1135021, 1135201, 1135367]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1132603 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1132603 1135367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1132603) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1135531, 1135711, 1135891, 1136063, 1136237, 1136417, 1136593, 1136767, 1136951, 1137109, 1137289, 1137457, 1137629, 1137811, 1137991, 1138171]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1135367 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1135367 1138171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1135367) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1138273, 1138457, 1138639, 1138793, 1138967, 1139147, 1139329, 1139503, 1139687, 1139869, 1139993, 1140163, 1140341, 1140493, 1140677, 1140859]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1138171 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1138171 1140859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1138171) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1141039, 1141223, 1141391, 1141573, 1141757, 1141909, 1142083, 1142263, 1142431, 1142599, 1142783, 1142959, 1143143, 1143299, 1143481, 1143661]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1140859 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1140859 1143661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1140859) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1143829, 1144007, 1144183, 1144357, 1144537, 1144721, 1144903, 1145077, 1145227, 1145411, 1145593, 1145773, 1145899, 1146083, 1146263, 1146421]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1143661 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1143661 1146421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1143661) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1146581, 1146763, 1146947, 1147127, 1147301, 1147463, 1147639, 1147819, 1147997, 1148177, 1148359, 1148527, 1148701, 1148879, 1149061, 1149233]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1146421 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1146421 1149233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1146421) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1149413, 1149593, 1149773, 1149943, 1150117, 1150301, 1150447, 1150631, 1150783, 1150957, 1151141, 1151317, 1151483, 1151659, 1151807, 1151987]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1149233 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1149233 1151987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1149233) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1152163, 1152343, 1152527, 1152707, 1152887, 1153063, 1153247, 1153429, 1153613, 1153777, 1153921, 1154051, 1154233, 1154411, 1154581, 1154753]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1151987 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1151987 1154753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1151987) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1154927, 1155107, 1155263, 1155437, 1155619, 1155733, 1155907, 1156087, 1156271, 1156453, 1156637, 1156819, 1156997, 1157179, 1157363, 1157539]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1154753 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1154753 1157539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1154753) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1157713, 1157873, 1158037, 1158217, 1158401, 1158569, 1158743, 1158923, 1159091, 1159271, 1159447, 1159601, 1159777, 1159919, 1160077, 1160251]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1157539 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1157539 1160251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1157539) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1071641 1077161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1071641)
    (mid := 1074389) (hi := 1077161) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1077161 1082717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1077161)
    (mid := 1079987) (hi := 1082717) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1082717 1088309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1082717)
    (mid := 1085521) (hi := 1088309) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1088309 1093847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1088309)
    (mid := 1091071) (hi := 1093847) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1093847 1099369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1093847)
    (mid := 1096673) (hi := 1099369) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1099369 1104959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1099369)
    (mid := 1102151) (hi := 1104959) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1104959 1110533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1104959)
    (mid := 1107727) (hi := 1110533) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1110533 1116107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1110533)
    (mid := 1113373) (hi := 1116107) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1116107 1121723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1116107)
    (mid := 1118921) (hi := 1121723) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1121723 1127123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1121723)
    (mid := 1124449) (hi := 1127123) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1127123 1132603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1127123)
    (mid := 1129861) (hi := 1132603) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1132603 1138171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1132603)
    (mid := 1135367) (hi := 1138171) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1138171 1143661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1138171)
    (mid := 1140859) (hi := 1143661) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1143661 1149233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1143661)
    (mid := 1146421) (hi := 1149233) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1149233 1154753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1149233)
    (mid := 1151987) (hi := 1154753) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1154753 1160251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1154753)
    (mid := 1157539) (hi := 1160251) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1071641 1082717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1071641)
    (mid := 1077161) (hi := 1082717) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1082717 1093847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1082717)
    (mid := 1088309) (hi := 1093847) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1093847 1104959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1093847)
    (mid := 1099369) (hi := 1104959) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1104959 1116107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1104959)
    (mid := 1110533) (hi := 1116107) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1116107 1127123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1116107)
    (mid := 1121723) (hi := 1127123) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1127123 1138171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1127123)
    (mid := 1132603) (hi := 1138171) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1138171 1149233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1138171)
    (mid := 1143661) (hi := 1149233) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1149233 1160251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1149233)
    (mid := 1154753) (hi := 1160251) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1071641 1093847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1071641)
    (mid := 1082717) (hi := 1093847) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1093847 1116107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1093847)
    (mid := 1104959) (hi := 1116107) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1116107 1138171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1116107)
    (mid := 1127123) (hi := 1138171) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1138171 1160251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1138171)
    (mid := 1149233) (hi := 1160251) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1071641 1116107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1071641)
    (mid := 1093847) (hi := 1116107) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1116107 1160251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1116107)
    (mid := 1138171) (hi := 1160251) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1071641 1160251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1071641)
    (mid := 1116107) (hi := 1160251) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1071641 1160251 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block012

#print axioms B699MiddleExtension.PrimorialBlocks.Block012.joined
