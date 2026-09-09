import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block028

def segment0Nodes : List Nat := [1299187, 1299367, 1299541, 1299721, 1299899, 1300073, 1300253, 1300433, 1300613, 1300781, 1300963, 1301147, 1301323, 1301507, 1301669, 1301851]
theorem segment0Check : trialChainCheck 322 1299013 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1299013 1301851 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1302029, 1302209, 1302391, 1302571, 1302739, 1302919, 1303097, 1303279, 1303453, 1303633, 1303807, 1303987, 1304167, 1304321, 1304503, 1304687]
theorem segment1Check : trialChainCheck 322 1301851 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1301851 1304687 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1304867, 1305047, 1305229, 1305401, 1305581, 1305749, 1305919, 1306103, 1306273, 1306451, 1306633, 1306817, 1306997, 1307311, 1307483, 1307651]
theorem segment2Check : trialChainCheck 322 1304687 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1304687 1307651 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1307833, 1308011, 1308193, 1308367, 1308551, 1308731, 1308911, 1309093, 1309249, 1309421, 1309601, 1309769, 1309949, 1310123, 1310293, 1310473]
theorem segment3Check : trialChainCheck 322 1307651 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1307651 1310473 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1310657, 1310809, 1310993, 1311173, 1311353, 1311523, 1311701, 1311857, 1312027, 1312211, 1312393, 1312567, 1312739, 1312921, 1313239, 1313423]
theorem segment4Check : trialChainCheck 322 1310473 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1310473 1313423 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1313597, 1313771, 1313953, 1314133, 1314317, 1314497, 1314673, 1314853, 1315037, 1315213, 1315397, 1315553, 1315729, 1315907, 1316071, 1316251]
theorem segment5Check : trialChainCheck 322 1313423 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1313423 1316251 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1316431, 1316603, 1316779, 1316963, 1317131, 1317307, 1317487, 1317671, 1317853, 1318033, 1318211, 1318379, 1318553, 1318729, 1318913, 1319083]
theorem segment6Check : trialChainCheck 322 1316251 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1316251 1319083 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1319261, 1319443, 1319623, 1319803, 1319963, 1320127, 1320437, 1320617, 1320799, 1320983, 1321163, 1321319, 1321487, 1321669, 1321847, 1322021]
theorem segment7Check : trialChainCheck 322 1319083 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1319083 1322021 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1322203, 1322369, 1322543, 1322693, 1322873, 1323053, 1323233, 1323409, 1323593, 1323743, 1323923, 1324097, 1324261, 1324441, 1324621, 1324783]
theorem segment8Check : trialChainCheck 322 1322021 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1322021 1324783 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1324957, 1325123, 1325293, 1325449, 1325633, 1325803, 1325977, 1326161, 1326343, 1326511, 1326691, 1326869, 1327043, 1327217, 1327387, 1327709]
theorem segment9Check : trialChainCheck 322 1324783 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1324783 1327709 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1327889, 1328051, 1328231, 1328407, 1328573, 1328749, 1328927, 1329109, 1329287, 1329457, 1329637, 1329799, 1329971, 1330129, 1330313, 1330493]
theorem segment10Check : trialChainCheck 322 1327709 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1327709 1330493 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1330649, 1330831, 1331153, 1331333, 1331513, 1331683, 1331857, 1332017, 1332193, 1332371, 1332553, 1332733, 1332917, 1333091, 1333273, 1333457]
theorem segment11Check : trialChainCheck 322 1330493 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1330493 1333457 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1333621, 1333799, 1333967, 1334141, 1334297, 1334477, 1334651, 1334833, 1335007, 1335167, 1335349, 1335533, 1335689, 1335869, 1336039, 1336211]
theorem segment12Check : trialChainCheck 322 1333457 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1333457 1336211 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1336393, 1336567, 1336747, 1336927, 1337093, 1337269, 1337447, 1337629, 1337813, 1337989, 1338167, 1338349, 1338521, 1338703, 1338881, 1339061]
theorem segment13Check : trialChainCheck 322 1336211 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1336211 1339061 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1339229, 1339411, 1339577, 1339759, 1339931, 1340113, 1340291, 1340459, 1340639, 1340803, 1340981, 1341143, 1341323, 1341493, 1341677, 1341841]
theorem segment14Check : trialChainCheck 322 1339061 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1339061 1341841 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1342007, 1342181, 1342361, 1342531, 1342699, 1342883, 1343059, 1343233, 1343413, 1343597, 1343767, 1343941, 1344113, 1344283, 1344463, 1344647]
theorem segment15Check : trialChainCheck 322 1341841 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1341841 1344647 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1299013 1304687 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1304687 1310473 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1310473 1316251 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1316251 1322021 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1322021 1327709 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1327709 1333457 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1333457 1339061 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1339061 1344647 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1299013 1310473 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1310473 1322021 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1322021 1333457 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1333457 1344647 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1299013 1322021 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1322021 1344647 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1299013 1344647 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1299013 1344647 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block028

#print axioms B699MiddleIndex.PrimeBlocks.Block028.joined
