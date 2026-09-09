import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block027

def segment0Nodes : List Nat := [1252283, 1252457, 1252639, 1252819, 1252997, 1253171, 1253347, 1253521, 1253701, 1253851, 1254031, 1254203, 1254377, 1254557, 1254739, 1254907]
theorem segment0Check : trialChainCheck 322 1251961 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1251961 1254907 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1255081, 1255259, 1255427, 1255609, 1255759, 1255939, 1256107, 1256279, 1256449, 1256621, 1256797, 1256953, 1257131, 1257313, 1257493, 1257653]
theorem segment1Check : trialChainCheck 322 1254907 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1254907 1257653 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1257829, 1258013, 1258183, 1258349, 1258531, 1258711, 1258889, 1259057, 1259231, 1259413, 1259593, 1259777, 1259953, 1260131, 1260293, 1260473]
theorem segment2Check : trialChainCheck 322 1257653 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1257653 1260473 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1260643, 1260827, 1260991, 1261171, 1261489, 1261649, 1261831, 1262147, 1262321, 1262491, 1262671, 1262851, 1263007, 1263191, 1263373, 1263547]
theorem segment3Check : trialChainCheck 322 1260473 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1260473 1263547 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1263863, 1264037, 1264213, 1264387, 1264561, 1264741, 1264909, 1265093, 1265273, 1265449, 1265623, 1265801, 1265981, 1266163, 1266341, 1266523]
theorem segment4Check : trialChainCheck 322 1263547 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1263547 1266523 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1266677, 1266851, 1267009, 1267193, 1267349, 1267531, 1267711, 1267891, 1268053, 1268233, 1268413, 1268593, 1268777, 1268947, 1269131, 1269311]
theorem segment5Check : trialChainCheck 322 1266523 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1266523 1269311 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1269493, 1269797, 1269971, 1270151, 1270333, 1270513, 1270679, 1270861, 1271033, 1271213, 1271393, 1271561, 1271731, 1271903, 1272079, 1272253]
theorem segment6Check : trialChainCheck 322 1269311 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1269311 1272253 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1272421, 1272589, 1272749, 1272919, 1273099, 1273267, 1273567, 1273739, 1273919, 1274089, 1274267, 1274437, 1274621, 1274941, 1275121, 1275293]
theorem segment7Check : trialChainCheck 322 1272253 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1272253 1275293 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1275467, 1275643, 1275823, 1276007, 1276183, 1276361, 1276543, 1276721, 1276903, 1277083, 1277267, 1277449, 1277629, 1277813, 1277993, 1278163]
theorem segment8Check : trialChainCheck 322 1275293 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1275293 1278163 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1278341, 1278493, 1278671, 1278839, 1279021, 1279193, 1279361, 1279541, 1279703, 1280023, 1280333, 1280651, 1280833, 1280989, 1281167, 1281349]
theorem segment9Check : trialChainCheck 322 1278163 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1278163 1281349 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1281523, 1281703, 1281883, 1282051, 1282231, 1282399, 1282577, 1282751, 1282933, 1283237, 1283417, 1283591, 1283771, 1284083, 1284263, 1284443]
theorem segment10Check : trialChainCheck 322 1281349 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1281349 1284443 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1284623, 1284793, 1284977, 1285159, 1285481, 1285649, 1285813, 1285993, 1286177, 1286359, 1286533, 1286711, 1286881, 1287061, 1287239, 1287401]
theorem segment11Check : trialChainCheck 322 1284443 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1284443 1287401 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1287569, 1287751, 1287917, 1288099, 1288249, 1288429, 1288613, 1288783, 1288967, 1289149, 1289333, 1289513, 1289677, 1289851, 1290031, 1290209]
theorem segment12Check : trialChainCheck 322 1287401 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1287401 1290209 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1290379, 1290563, 1290719, 1290901, 1291079, 1291249, 1291421, 1291603, 1291783, 1291967, 1292149, 1292329, 1292509, 1292693, 1292857, 1293031]
theorem segment13Check : trialChainCheck 322 1290209 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1290209 1293031 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1293203, 1293373, 1293553, 1293869, 1294039, 1294201, 1294483, 1294651, 1294823, 1295003, 1295183, 1295347, 1295513, 1295681, 1295849, 1296023]
theorem segment14Check : trialChainCheck 322 1293031 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1293031 1296023 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1296187, 1296371, 1296551, 1296727, 1296907, 1297091, 1297273, 1297451, 1297633, 1297799, 1297979, 1298161, 1298333, 1298653, 1298831, 1299013]
theorem segment15Check : trialChainCheck 322 1296023 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1296023 1299013 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1251961 1257653 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1257653 1263547 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1263547 1269311 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1269311 1275293 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1275293 1281349 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1281349 1287401 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1287401 1293031 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1293031 1299013 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1251961 1263547 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1263547 1275293 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1275293 1287401 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1287401 1299013 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1251961 1275293 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1275293 1299013 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1251961 1299013 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1251961 1299013 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block027

#print axioms B699MiddleIndex.PrimeBlocks.Block027.joined
