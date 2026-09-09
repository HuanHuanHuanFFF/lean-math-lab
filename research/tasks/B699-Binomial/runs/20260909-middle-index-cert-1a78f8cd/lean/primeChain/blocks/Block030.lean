import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block030

def segment0Nodes : List Nat := [1392451, 1392631, 1392803, 1392983, 1393159, 1393333, 1393493, 1393663, 1393837, 1394021, 1394177, 1394359, 1394539, 1394713, 1394893, 1395077]
theorem segment0Check : trialChainCheck 322 1392277 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1392277 1395077 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1395367, 1395551, 1395871, 1396051, 1396223, 1396393, 1396561, 1396723, 1396903, 1397087, 1397267, 1397447, 1397609, 1397783, 1397959, 1398139]
theorem segment1Check : trialChainCheck 322 1395077 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1395077 1398139 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1398323, 1398497, 1398667, 1398847, 1399019, 1399201, 1399381, 1399553, 1399733, 1399913, 1400093, 1400261, 1400423, 1400599, 1400753, 1400923]
theorem segment2Check : trialChainCheck 322 1398139 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1398139 1400923 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1401083, 1401263, 1401443, 1401623, 1401793, 1401977, 1402157, 1402309, 1402493, 1402673, 1402847, 1403021, 1403189, 1403371, 1403693, 1403981]
theorem segment3Check : trialChainCheck 322 1400923 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1400923 1403981 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1404163, 1404323, 1404503, 1404671, 1404833, 1405009, 1405181, 1405363, 1405531, 1405709, 1405879, 1406051, 1406231, 1406389, 1406707, 1406879]
theorem segment4Check : trialChainCheck 322 1403981 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1403981 1406879 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1407061, 1407229, 1407409, 1407587, 1407893, 1408067, 1408241, 1408417, 1408601, 1408889, 1409069, 1409251, 1409407, 1409587, 1409753, 1409917]
theorem segment5Check : trialChainCheck 322 1406879 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1406879 1409917 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1410077, 1410257, 1410421, 1410599, 1410781, 1410961, 1411141, 1411313, 1411481, 1411649, 1411831, 1412011, 1412189, 1412363, 1412539, 1412713]
theorem segment6Check : trialChainCheck 322 1409917 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1409917 1412713 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1412893, 1413077, 1413253, 1413427, 1413593, 1413773, 1413949, 1414129, 1414307, 1414481, 1414663, 1414837, 1414999, 1415179, 1415357, 1415507]
theorem segment7Check : trialChainCheck 322 1412713 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1412713 1415507 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1415681, 1415851, 1416031, 1416341, 1416511, 1416691, 1416871, 1417051, 1417223, 1417399, 1417583, 1417751, 1417931, 1418107, 1418267, 1418449]
theorem segment8Check : trialChainCheck 322 1415507 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1415507 1418449 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1418621, 1418797, 1418959, 1419137, 1419317, 1419497, 1419679, 1419839, 1420009, 1420303, 1420483, 1420667, 1420847, 1421027, 1421191, 1421351]
theorem segment9Check : trialChainCheck 322 1418449 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1418449 1421351 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1421527, 1421711, 1422023, 1422199, 1422367, 1422541, 1422721, 1422899, 1423073, 1423243, 1423417, 1423589, 1423759, 1423943, 1424263, 1424443]
theorem segment10Check : trialChainCheck 322 1421351 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1421351 1424443 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1424603, 1424779, 1424963, 1425139, 1425311, 1425491, 1425667, 1425821, 1426003, 1426171, 1426343, 1426519, 1426703, 1426883, 1427047, 1427227]
theorem segment11Check : trialChainCheck 322 1424443 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1424443 1427227 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1427411, 1427567, 1427749, 1427927, 1428109, 1428431, 1428613, 1428793, 1428953, 1429133, 1429303, 1429481, 1429661, 1429843, 1430027, 1430201]
theorem segment12Check : trialChainCheck 322 1427227 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1427227 1430201 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1430381, 1430543, 1430717, 1430887, 1431071, 1431253, 1431421, 1431601, 1431779, 1431959, 1432139, 1432313, 1432493, 1432667, 1432841, 1433021]
theorem segment13Check : trialChainCheck 322 1430201 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1430201 1433021 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1433203, 1433371, 1433539, 1433723, 1433903, 1434077, 1434259, 1434439, 1434623, 1434943, 1435121, 1435289, 1435459, 1435631, 1435937, 1436111]
theorem segment14Check : trialChainCheck 322 1433021 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1433021 1436111 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1436291, 1436471, 1436651, 1436957, 1437133, 1437313, 1437493, 1437659, 1437841, 1438009, 1438303, 1438483, 1438667, 1438849, 1439027, 1439209]
theorem segment15Check : trialChainCheck 322 1436111 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1436111 1439209 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1392277 1398139 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1398139 1403981 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1403981 1409917 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1409917 1415507 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1415507 1421351 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1421351 1427227 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1427227 1433021 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1433021 1439209 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1392277 1403981 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1403981 1415507 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1415507 1427227 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1427227 1439209 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1392277 1415507 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1415507 1439209 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1392277 1439209 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1392277 1439209 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block030

#print axioms B699MiddleIndex.PrimeBlocks.Block030.joined
