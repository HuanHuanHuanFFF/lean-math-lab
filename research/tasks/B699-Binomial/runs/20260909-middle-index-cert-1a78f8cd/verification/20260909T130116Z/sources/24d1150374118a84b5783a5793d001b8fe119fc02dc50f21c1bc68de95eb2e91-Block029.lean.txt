import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block029

def segment0Nodes : List Nat := [1344829, 1345013, 1345177, 1345361, 1345541, 1345711, 1345889, 1346063, 1346243, 1346419, 1346603, 1346773, 1346957, 1347127, 1347293, 1347473]
theorem segment0Check : trialChainCheck 322 1344647 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1344647 1347473 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1347637, 1347817, 1348001, 1348177, 1348357, 1348673, 1348849, 1349017, 1349189, 1349371, 1349533, 1349713, 1349897, 1350073, 1350257, 1350563]
theorem segment1Check : trialChainCheck 322 1347473 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1347473 1350563 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1350743, 1350911, 1351093, 1351267, 1351439, 1351621, 1351799, 1351981, 1352149, 1352317, 1352489, 1352669, 1352849, 1353029, 1353197, 1353377]
theorem segment2Check : trialChainCheck 322 1350563 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1350563 1353377 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1353551, 1353733, 1353917, 1354081, 1354393, 1354571, 1354741, 1354901, 1355071, 1355243, 1355423, 1355591, 1355771, 1355947, 1356269, 1356451]
theorem segment3Check : trialChainCheck 322 1353377 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1353377 1356451 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1356629, 1356811, 1357129, 1357361, 1357537, 1357717, 1357901, 1358083, 1358263, 1358437, 1358611, 1358783, 1359097, 1359271, 1359581, 1359739]
theorem segment4Check : trialChainCheck 322 1356451 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1356451 1359739 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1359913, 1360097, 1360279, 1360451, 1360631, 1360811, 1360981, 1361153, 1361317, 1361497, 1361677, 1361849, 1362019, 1362203, 1362371, 1362551]
theorem segment5Check : trialChainCheck 322 1359739 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1359739 1362551 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1362731, 1363051, 1363223, 1363403, 1363577, 1363753, 1363937, 1364101, 1364263, 1364431, 1364609, 1364791, 1364971, 1365149, 1365467, 1365761]
theorem segment6Check : trialChainCheck 322 1362551 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1362551 1365761 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1365919, 1366241, 1366397, 1366577, 1366753, 1366933, 1367117, 1367299, 1367479, 1367647, 1367831, 1368013, 1368187, 1368349, 1368529, 1368847]
theorem segment7Check : trialChainCheck 322 1365761 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1365761 1368847 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1369021, 1369201, 1369373, 1369541, 1369723, 1369897, 1370077, 1370227, 1370407, 1370587, 1370749, 1370933, 1371113, 1371431, 1371607, 1371779]
theorem segment8Check : trialChainCheck 322 1368847 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1368847 1371779 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1371949, 1372127, 1372307, 1372471, 1372633, 1372799, 1372981, 1373161, 1373341, 1373521, 1373689, 1373873, 1374053, 1374211, 1374379, 1374559]
theorem segment9Check : trialChainCheck 322 1371779 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1371779 1374559 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1374743, 1375063, 1375243, 1375421, 1375601, 1375783, 1375951, 1376257, 1376429, 1376603, 1376777, 1376957, 1377137, 1377317, 1377499, 1377679]
theorem segment10Check : trialChainCheck 322 1374559 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1374559 1377679 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1377853, 1378033, 1378217, 1378397, 1378579, 1378763, 1378943, 1379111, 1379291, 1379473, 1379657, 1379821, 1379993, 1380163, 1380341, 1380517]
theorem segment11Check : trialChainCheck 322 1377679 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1377679 1380517 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1380679, 1380853, 1381033, 1381217, 1381397, 1381559, 1381739, 1381921, 1382099, 1382279, 1382449, 1382629, 1382779, 1382959, 1383139, 1383323]
theorem segment12Check : trialChainCheck 322 1380517 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1380517 1383323 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1383497, 1383667, 1383829, 1384013, 1384193, 1384507, 1384679, 1384861, 1385039, 1385213, 1385393, 1385569, 1385753, 1385929, 1386097, 1386271]
theorem segment13Check : trialChainCheck 322 1383323 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1383323 1386271 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1386443, 1386617, 1386787, 1386953, 1387129, 1387433, 1387601, 1387783, 1387961, 1388141, 1388323, 1388483, 1388659, 1388837, 1389007, 1389191]
theorem segment14Check : trialChainCheck 322 1386271 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1386271 1389191 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1389371, 1389551, 1389727, 1389911, 1390087, 1390253, 1390421, 1390601, 1390783, 1390967, 1391287, 1391461, 1391779, 1391941, 1392103, 1392277]
theorem segment15Check : trialChainCheck 322 1389191 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1389191 1392277 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1344647 1350563 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1350563 1356451 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1356451 1362551 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1362551 1368847 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1368847 1374559 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1374559 1380517 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1380517 1386271 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1386271 1392277 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1344647 1356451 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1356451 1368847 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1368847 1380517 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1380517 1392277 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1344647 1368847 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1368847 1392277 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1344647 1392277 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1344647 1392277 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block029

#print axioms B699MiddleIndex.PrimeBlocks.Block029.joined
