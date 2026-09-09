import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block025

def segment0Nodes : List Nat := [1158569, 1158743, 1158923, 1159091, 1159271, 1159447, 1159601, 1159919, 1160077, 1160251, 1160429, 1160611, 1160771, 1160953, 1161137, 1161317]
theorem segment0Check : trialChainCheck 322 1158401 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1158401 1161317 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1161499, 1161683, 1161857, 1162037, 1162219, 1162373, 1162547, 1162729, 1162907, 1163083, 1163263, 1163441, 1163611, 1163791, 1164101, 1164253]
theorem segment1Check : trialChainCheck 322 1161317 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1161317 1164253 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1164433, 1164617, 1164799, 1164979, 1165147, 1165303, 1165471, 1165643, 1165823, 1165993, 1166153, 1166329, 1166507, 1166687, 1166861, 1167013]
theorem segment2Check : trialChainCheck 322 1164253 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1164253 1167013 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1167193, 1167359, 1167539, 1167709, 1167889, 1168187, 1168361, 1168537, 1168721, 1168897, 1169081, 1169261, 1169419, 1169603, 1169767, 1169939]
theorem segment3Check : trialChainCheck 322 1167013 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1167013 1169939 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1170119, 1170277, 1170461, 1170641, 1170821, 1171133, 1171301, 1171477, 1171661, 1171837, 1172021, 1172179, 1172351, 1172533, 1172713, 1172893]
theorem segment4Check : trialChainCheck 322 1169939 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1169939 1172893 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1173059, 1173239, 1173407, 1173589, 1173749, 1173917, 1174099, 1174273, 1174451, 1174627, 1174801, 1174973, 1175149, 1175297, 1175479, 1175659]
theorem segment5Check : trialChainCheck 322 1172893 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1172893 1175659 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1175833, 1175989, 1176173, 1176353, 1176533, 1176713, 1176881, 1177037, 1177219, 1177399, 1177571, 1177751, 1177933, 1178113, 1178297, 1178479]
theorem segment6Check : trialChainCheck 322 1175659 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1175659 1178479 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1178659, 1178843, 1179019, 1179203, 1179383, 1179553, 1179733, 1179907, 1180087, 1180253, 1180427, 1180591, 1180771, 1180951, 1181099, 1181281]
theorem segment7Check : trialChainCheck 322 1178479 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1178479 1181281 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1181461, 1181777, 1182073, 1182253, 1182437, 1182611, 1182791, 1182967, 1183151, 1183333, 1183613, 1183781, 1183961, 1184143, 1184317, 1184489]
theorem segment8Check : trialChainCheck 322 1181281 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1181281 1184489 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1184671, 1184839, 1185017, 1185181, 1185361, 1185523, 1185707, 1185889, 1186067, 1186249, 1186411, 1186589, 1186769, 1186937, 1187117, 1187287]
theorem segment9Check : trialChainCheck 322 1184489 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1184489 1187287 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1187471, 1187639, 1187821, 1188001, 1188179, 1188361, 1188529, 1188689, 1188857, 1189033, 1189213, 1189387, 1189567, 1189751, 1189933, 1190081]
theorem segment10Check : trialChainCheck 322 1187287 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1187287 1190081 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1190263, 1190447, 1190611, 1190789, 1190953, 1191131, 1191313, 1191481, 1191643, 1191821, 1191991, 1192171, 1192349, 1192517, 1192699, 1192883]
theorem segment11Check : trialChainCheck 322 1190081 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1190081 1192883 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1193057, 1193239, 1193399, 1193573, 1193743, 1194059, 1194241, 1194421, 1194601, 1194923, 1195091, 1195247, 1195429, 1195589, 1195771, 1195937]
theorem segment12Check : trialChainCheck 322 1192883 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1192883 1195937 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1196119, 1196287, 1196471, 1196653, 1196837, 1197017, 1197199, 1197367, 1197527, 1197709, 1197881, 1198063, 1198247, 1198427, 1198609, 1198793]
theorem segment13Check : trialChainCheck 322 1195937 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1195937 1198793 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1198973, 1199137, 1199309, 1199491, 1199663, 1199839, 1200007, 1200191, 1200373, 1200527, 1200701, 1200883, 1201061, 1201381, 1201559, 1201729]
theorem segment14Check : trialChainCheck 322 1198793 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1198793 1201729 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1201909, 1202081, 1202261, 1202437, 1202609, 1202791, 1202963, 1203127, 1203287, 1203467, 1203641, 1203817, 1203971, 1204153, 1204337, 1204519]
theorem segment15Check : trialChainCheck 322 1201729 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1201729 1204519 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1158401 1164253 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1164253 1169939 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1169939 1175659 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1175659 1181281 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1181281 1187287 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1187287 1192883 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1192883 1198793 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1198793 1204519 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1158401 1169939 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1169939 1181281 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1181281 1192883 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1192883 1204519 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1158401 1181281 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1181281 1204519 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1158401 1204519 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1158401 1204519 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block025

#print axioms B699MiddleIndex.PrimeBlocks.Block025.joined
