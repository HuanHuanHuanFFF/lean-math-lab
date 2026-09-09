import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block024

def segment0Nodes : List Nat := [1111577, 1111757, 1111933, 1112113, 1112291, 1112471, 1112653, 1112833, 1113011, 1113193, 1113373, 1113557, 1113719, 1113899, 1114063, 1114241]
theorem segment0Check : trialChainCheck 322 1111427 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1111427 1114241 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1114423, 1114601, 1114759, 1114943, 1115117, 1115299, 1115467, 1115789, 1116107, 1116289, 1116473, 1116653, 1116821, 1116989, 1117169, 1117349]
theorem segment1Check : trialChainCheck 322 1114241 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1114241 1117349 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1117513, 1117681, 1117861, 1118041, 1118219, 1118393, 1118569, 1118749, 1118921, 1119091, 1119269, 1119449, 1119623, 1119799, 1120121, 1120303]
theorem segment2Check : trialChainCheck 322 1117349 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1117349 1120303 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1120481, 1120663, 1120837, 1121017, 1121191, 1121369, 1121543, 1121723, 1121899, 1122071, 1122241, 1122419, 1122599, 1122761, 1122941, 1123093]
theorem segment3Check : trialChainCheck 322 1120303 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1120303 1123093 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1123267, 1123439, 1123621, 1123777, 1123961, 1124141, 1124449, 1124759, 1125053, 1125221, 1125401, 1125581, 1125763, 1125941, 1126259, 1126441]
theorem segment4Check : trialChainCheck 322 1123093 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1123093 1126441 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1126597, 1126781, 1126963, 1127123, 1127303, 1127461, 1127641, 1127813, 1127993, 1128313, 1128497, 1128667, 1128823, 1128997, 1129169, 1129343]
theorem segment5Check : trialChainCheck 322 1126441 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1126441 1129343 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1129523, 1129699, 1129861, 1130039, 1130191, 1130369, 1130527, 1130711, 1130863, 1131047, 1131223, 1131397, 1131569, 1131751, 1131919, 1132091]
theorem segment6Check : trialChainCheck 322 1129343 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1129343 1132091 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1132259, 1132429, 1132603, 1132787, 1132969, 1133149, 1133333, 1133513, 1133689, 1133861, 1134043, 1134313, 1134487, 1134667, 1134841, 1135021]
theorem segment7Check : trialChainCheck 322 1132091 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1132091 1135021 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1135201, 1135367, 1135531, 1135711, 1135891, 1136063, 1136237, 1136417, 1136593, 1136767, 1136951, 1137109, 1137289, 1137457, 1137629, 1137811]
theorem segment8Check : trialChainCheck 322 1135021 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1135021 1137811 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1137991, 1138273, 1138457, 1138639, 1138793, 1138967, 1139147, 1139329, 1139503, 1139687, 1139993, 1140163, 1140341, 1140493, 1140677, 1140859]
theorem segment9Check : trialChainCheck 322 1137811 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1137811 1140859 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1141039, 1141223, 1141391, 1141573, 1141757, 1141909, 1142083, 1142263, 1142431, 1142599, 1142783, 1142959, 1143143, 1143299, 1143481, 1143661]
theorem segment10Check : trialChainCheck 322 1140859 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1140859 1143661 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1143829, 1144007, 1144183, 1144357, 1144537, 1144721, 1144903, 1145077, 1145227, 1145411, 1145593, 1145899, 1146083, 1146263, 1146581, 1146763]
theorem segment11Check : trialChainCheck 322 1143661 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1143661 1146763 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1146947, 1147127, 1147301, 1147463, 1147639, 1147819, 1147997, 1148177, 1148359, 1148527, 1148701, 1148879, 1149061, 1149233, 1149413, 1149593]
theorem segment12Check : trialChainCheck 322 1146763 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1146763 1149593 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1149773, 1149943, 1150117, 1150301, 1150447, 1150631, 1150783, 1150957, 1151141, 1151317, 1151483, 1151659, 1151807, 1151987, 1152163, 1152343]
theorem segment13Check : trialChainCheck 322 1149593 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1149593 1152343 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1152527, 1152707, 1152887, 1153063, 1153247, 1153429, 1153613, 1153921, 1154233, 1154411, 1154581, 1154753, 1154927, 1155107, 1155263, 1155437]
theorem segment14Check : trialChainCheck 322 1152343 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1152343 1155437 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1155733, 1155907, 1156087, 1156271, 1156453, 1156637, 1156819, 1156997, 1157179, 1157363, 1157539, 1157713, 1157873, 1158037, 1158217, 1158401]
theorem segment15Check : trialChainCheck 322 1155437 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1155437 1158401 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1111427 1117349 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1117349 1123093 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1123093 1129343 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1129343 1135021 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1135021 1140859 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1140859 1146763 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1146763 1152343 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1152343 1158401 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1111427 1123093 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1123093 1135021 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1135021 1146763 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1146763 1158401 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1111427 1135021 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1135021 1158401 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1111427 1158401 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1111427 1158401 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block024

#print axioms B699MiddleIndex.PrimeBlocks.Block024.joined
