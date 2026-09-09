import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block031

def segment0Nodes : List Nat := [1439393, 1439561, 1439743, 1439927, 1440107, 1440269, 1440449, 1440623, 1440799, 1440983, 1441151, 1441471, 1441637, 1441807, 1441981, 1442159]
theorem segment0Check : trialChainCheck 322 1439209 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1439209 1442159 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1442341, 1442513, 1442669, 1442849, 1443161, 1443341, 1443523, 1443697, 1443859, 1444043, 1444309, 1444493, 1444661, 1444823, 1444999, 1445179]
theorem segment1Check : trialChainCheck 322 1442159 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1442159 1445179 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1445351, 1445533, 1445713, 1445887, 1446059, 1446239, 1446409, 1446587, 1446761, 1446941, 1447123, 1447291, 1447471, 1447639, 1447813, 1447987]
theorem segment2Check : trialChainCheck 322 1445179 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1445179 1447987 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1448309, 1448477, 1448659, 1448833, 1449017, 1449193, 1449367, 1449551, 1449733, 1449911, 1450073, 1450249, 1450429, 1450613, 1450931, 1451083]
theorem segment3Check : trialChainCheck 322 1447987 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1447987 1451083 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1451267, 1451423, 1451603, 1451767, 1451929, 1452109, 1452281, 1452461, 1452637, 1452809, 1452991, 1453171, 1453343, 1453513, 1453681, 1453847]
theorem segment4Check : trialChainCheck 322 1451083 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1451083 1453847 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1454029, 1454209, 1454381, 1454549, 1454731, 1454899, 1455079, 1455263, 1455439, 1455613, 1455781, 1455959, 1456127, 1456289, 1456451, 1456633]
theorem segment5Check : trialChainCheck 322 1453847 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1453847 1456633 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1456799, 1456963, 1457147, 1457321, 1457503, 1457683, 1457867, 1458049, 1458229, 1458409, 1458593, 1458911, 1459091, 1459261, 1459439, 1459609]
theorem segment6Check : trialChainCheck 322 1456633 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1456633 1459609 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1459793, 1459963, 1460143, 1460311, 1460483, 1460653, 1460821, 1461001, 1461181, 1461359, 1461517, 1461701, 1461883, 1462063, 1462247, 1462427]
theorem segment7Check : trialChainCheck 322 1459609 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1459609 1462427 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1462607, 1462763, 1462939, 1463123, 1463303, 1463471, 1463647, 1463821, 1463999, 1464179, 1464343, 1464649, 1464829, 1465007, 1465187, 1465367]
theorem segment8Check : trialChainCheck 322 1462427 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1462427 1465367 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1465549, 1465729, 1465901, 1466203, 1466383, 1466567, 1466747, 1466929, 1467107, 1467283, 1467443, 1467611, 1467787, 1468109, 1468277, 1468459]
theorem segment9Check : trialChainCheck 322 1465367 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1465367 1468459 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1468639, 1468807, 1468969, 1469147, 1469323, 1469477, 1469659, 1469843, 1470023, 1470199, 1470377, 1470559, 1470871, 1471033, 1471213, 1471397]
theorem segment10Check : trialChainCheck 322 1468459 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1468459 1471397 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1471579, 1471763, 1471937, 1472117, 1472297, 1472467, 1472623, 1472791, 1472971, 1473149, 1473331, 1473503, 1473677, 1473853, 1474037, 1474217]
theorem segment11Check : trialChainCheck 322 1471397 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1471397 1474217 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1474397, 1474579, 1474901, 1475051, 1475233, 1475401, 1475567, 1475743, 1475927, 1476109, 1476283, 1476463, 1476647, 1476823, 1477001, 1477169]
theorem segment12Check : trialChainCheck 322 1474217 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1474217 1477169 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1477339, 1477519, 1477703, 1477871, 1478051, 1478231, 1478413, 1478593, 1478777, 1478957, 1479139, 1479301, 1479617, 1479791, 1480099, 1480277]
theorem segment13Check : trialChainCheck 322 1477169 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1477169 1480277 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1480459, 1480643, 1480811, 1480991, 1481173, 1481357, 1481539, 1481719, 1481899, 1482059, 1482233, 1482413, 1482583, 1482763, 1482937, 1483103]
theorem segment14Check : trialChainCheck 322 1480277 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1480277 1483103 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1483283, 1483453, 1483637, 1483819, 1483997, 1484177, 1484359, 1484537, 1484849, 1485031, 1485199, 1485383, 1485563, 1485739, 1485917, 1486097]
theorem segment15Check : trialChainCheck 322 1483103 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1483103 1486097 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1439209 1445179 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1445179 1451083 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1451083 1456633 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1456633 1462427 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1462427 1468459 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1468459 1474217 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1474217 1480277 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1480277 1486097 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1439209 1451083 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1451083 1462427 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1462427 1474217 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1474217 1486097 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1439209 1462427 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1462427 1486097 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1439209 1486097 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1439209 1486097 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block031

#print axioms B699MiddleIndex.PrimeBlocks.Block031.joined
