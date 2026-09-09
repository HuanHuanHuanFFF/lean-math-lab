import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block023

def segment0Nodes : List Nat := [1065091, 1065269, 1065433, 1065601, 1065773, 1065949, 1066133, 1066447, 1066621, 1066789, 1066973, 1067147, 1067329, 1067509, 1067687, 1067851]
theorem segment0Check : trialChainCheck 322 1064911 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1064911 1067851 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1068019, 1068203, 1068383, 1068559, 1068721, 1068901, 1069223, 1069379, 1069561, 1069741, 1069921, 1070093, 1070257, 1070579, 1070761, 1070939]
theorem segment1Check : trialChainCheck 322 1067851 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1067851 1070939 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1071121, 1071283, 1071457, 1071641, 1071821, 1071991, 1072163, 1072339, 1072657, 1072837, 1072999, 1073183, 1073353, 1073537, 1073717, 1073881]
theorem segment2Check : trialChainCheck 322 1070939 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1070939 1073881 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1074061, 1074223, 1074389, 1074559, 1074719, 1074901, 1075079, 1075259, 1075441, 1075621, 1075787, 1075957, 1076137, 1076303, 1076477, 1076657]
theorem segment3Check : trialChainCheck 322 1073881 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1073881 1076657 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1076827, 1076981, 1077161, 1077337, 1077499, 1077677, 1077859, 1078043, 1078219, 1078403, 1078559, 1078739, 1078919, 1079101, 1079269, 1079453]
theorem segment4Check : trialChainCheck 322 1076657 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1076657 1079453 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1079633, 1079809, 1079987, 1080143, 1080311, 1080491, 1080661, 1080983, 1081163, 1081337, 1081513, 1081687, 1081859, 1082027, 1082209, 1082387]
theorem segment5Check : trialChainCheck 322 1079453 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1079453 1082387 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1082533, 1082717, 1082891, 1083073, 1083253, 1083431, 1083613, 1083793, 1083949, 1084133, 1084313, 1084493, 1084673, 1084829, 1085011, 1085179]
theorem segment6Check : trialChainCheck 322 1082387 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1082387 1085179 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1085353, 1085521, 1085687, 1085867, 1086047, 1086203, 1086373, 1086557, 1086731, 1086913, 1087091, 1087271, 1087453, 1087631, 1087811, 1087987]
theorem segment7Check : trialChainCheck 322 1085179 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1085179 1087987 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1088309, 1088489, 1088671, 1088851, 1089029, 1089197, 1089359, 1089523, 1089703, 1089877, 1090031, 1090213, 1090387, 1090553, 1090721, 1090897]
theorem segment8Check : trialChainCheck 322 1087987 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1087987 1090897 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1091071, 1091243, 1091413, 1091591, 1091749, 1091917, 1092089, 1092269, 1092451, 1092629, 1092803, 1092977, 1093159, 1093331, 1093493, 1093667]
theorem segment9Check : trialChainCheck 322 1090897 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1090897 1093667 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1093847, 1094029, 1094209, 1094377, 1094557, 1094711, 1094887, 1095071, 1095251, 1095433, 1095613, 1095793, 1095961, 1096141, 1096307, 1096489]
theorem segment10Check : trialChainCheck 322 1093667 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1093667 1096489 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1096673, 1096853, 1097029, 1097209, 1097381, 1097557, 1097729, 1097909, 1098077, 1098233, 1098541, 1098847, 1099031, 1099199, 1099369, 1099547]
theorem segment11Check : trialChainCheck 322 1096489 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1096489 1099547 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1099867, 1100051, 1100219, 1100387, 1100569, 1100747, 1100921, 1101103, 1101283, 1101467, 1101649, 1101967, 1102151, 1102333, 1102483, 1102663]
theorem segment12Check : trialChainCheck 322 1099547 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1099547 1102663 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1102847, 1103029, 1103213, 1103371, 1103549, 1103723, 1103903, 1104079, 1104247, 1104431, 1104613, 1104797, 1104959, 1105141, 1105463, 1105639]
theorem segment13Check : trialChainCheck 322 1102663 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1102663 1105639 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1105823, 1105999, 1106179, 1106363, 1106543, 1106851, 1107031, 1107203, 1107383, 1107553, 1107727, 1107893, 1108073, 1108253, 1108427, 1108609]
theorem segment14Check : trialChainCheck 322 1105639 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1105639 1108609 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1108781, 1108957, 1109123, 1109291, 1109473, 1109653, 1109821, 1109987, 1110167, 1110349, 1110533, 1110713, 1110887, 1111067, 1111247, 1111427]
theorem segment15Check : trialChainCheck 322 1108609 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1108609 1111427 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1064911 1070939 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1070939 1076657 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1076657 1082387 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1082387 1087987 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1087987 1093667 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1093667 1099547 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1099547 1105639 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1105639 1111427 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1064911 1076657 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1076657 1087987 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1087987 1099547 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1099547 1111427 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1064911 1087987 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1087987 1111427 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1064911 1111427 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1064911 1111427 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block023

#print axioms B699MiddleIndex.PrimeBlocks.Block023.joined
