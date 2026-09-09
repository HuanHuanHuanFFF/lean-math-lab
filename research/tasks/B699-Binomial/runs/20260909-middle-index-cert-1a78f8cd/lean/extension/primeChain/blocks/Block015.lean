import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block015

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1337989, 1338167, 1338349, 1338521, 1338703, 1338881, 1339061, 1339229, 1339411, 1339577, 1339759, 1339931, 1340113, 1340291, 1340459, 1340639]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1337813 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1337813 1340639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1337813) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1340803, 1340981, 1341143, 1341323, 1341493, 1341677, 1341841, 1342007, 1342181, 1342361, 1342531, 1342699, 1342883, 1343059, 1343233, 1343413]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1340639 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1340639 1343413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1340639) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1343597, 1343767, 1343941, 1344113, 1344283, 1344463, 1344647, 1344829, 1345013, 1345177, 1345361, 1345541, 1345711, 1345889, 1346063, 1346243]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1343413 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1343413 1346243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1343413) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1346419, 1346603, 1346773, 1346957, 1347127, 1347293, 1347473, 1347637, 1347817, 1348001, 1348177, 1348357, 1348541, 1348673, 1348849, 1349017]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1346243 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1346243 1349017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1346243) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1349189, 1349371, 1349533, 1349713, 1349897, 1350073, 1350257, 1350403, 1350563, 1350743, 1350911, 1351093, 1351267, 1351439, 1351621, 1351799]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1349017 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1349017 1351799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1349017) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1351981, 1352149, 1352317, 1352489, 1352669, 1352849, 1353029, 1353197, 1353377, 1353551, 1353733, 1353917, 1354081, 1354247, 1354393, 1354571]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1351799 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1351799 1354571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1351799) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1354741, 1354901, 1355071, 1355243, 1355423, 1355591, 1355771, 1355947, 1356109, 1356269, 1356451, 1356629, 1356811, 1356973, 1357129, 1357201]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1354571 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1354571 1357201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1354571) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1357361, 1357537, 1357717, 1357901, 1358083, 1358263, 1358437, 1358611, 1358783, 1358957, 1359097, 1359271, 1359427, 1359581, 1359739, 1359913]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1357201 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1357201 1359913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1357201) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1360097, 1360279, 1360451, 1360631, 1360811, 1360981, 1361153, 1361317, 1361497, 1361677, 1361849, 1362019, 1362203, 1362371, 1362551, 1362731]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1359913 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1359913 1362731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1359913) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1362883, 1363051, 1363223, 1363403, 1363577, 1363753, 1363937, 1364101, 1364263, 1364431, 1364609, 1364791, 1364971, 1365149, 1365313, 1365467]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1362731 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1362731 1365467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1362731) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1365583, 1365761, 1365919, 1366093, 1366241, 1366397, 1366577, 1366753, 1366933, 1367117, 1367299, 1367479, 1367647, 1367831, 1368013, 1368187]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1365467 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1365467 1368187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1365467) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1368349, 1368529, 1368683, 1368847, 1369021, 1369201, 1369373, 1369541, 1369723, 1369897, 1370077, 1370227, 1370407, 1370587, 1370749, 1370933]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1368187 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1368187 1370933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1368187) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1371113, 1371263, 1371431, 1371607, 1371779, 1371949, 1372127, 1372307, 1372471, 1372633, 1372799, 1372981, 1373161, 1373341, 1373521, 1373689]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1370933 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1370933 1373689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1370933) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1373873, 1374053, 1374211, 1374379, 1374559, 1374743, 1374887, 1375063, 1375243, 1375421, 1375601, 1375783, 1375951, 1376131, 1376257, 1376429]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1373689 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1373689 1376429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1373689) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1376603, 1376777, 1376957, 1377137, 1377317, 1377499, 1377679, 1377853, 1378033, 1378217, 1378397, 1378579, 1378763, 1378943, 1379111, 1379291]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1376429 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1376429 1379291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1376429) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1379473, 1379657, 1379821, 1379993, 1380163, 1380341, 1380517, 1380679, 1380853, 1381033, 1381217, 1381397, 1381559, 1381739, 1381921, 1382099]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1379291 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1379291 1382099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1379291) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1382279, 1382449, 1382629, 1382779, 1382959, 1383139, 1383323, 1383497, 1383667, 1383829, 1384013, 1384193, 1384351, 1384507, 1384679, 1384861]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1382099 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1382099 1384861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1382099) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1385039, 1385213, 1385393, 1385569, 1385753, 1385929, 1386097, 1386271, 1386443, 1386617, 1386787, 1386953, 1387129, 1387313, 1387433, 1387601]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1384861 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1384861 1387601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1384861) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1387783, 1387961, 1388141, 1388323, 1388483, 1388659, 1388837, 1389007, 1389191, 1389371, 1389551, 1389727, 1389911, 1390087, 1390253, 1390421]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1387601 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1387601 1390421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1387601) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1390601, 1390783, 1390967, 1391129, 1391287, 1391461, 1391641, 1391779, 1391941, 1392103, 1392277, 1392451, 1392631, 1392803, 1392983, 1393159]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1390421 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1390421 1393159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1390421) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1393333, 1393493, 1393663, 1393837, 1394021, 1394177, 1394359, 1394539, 1394713, 1394893, 1395077, 1395223, 1395367, 1395551, 1395697, 1395871]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1393159 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1393159 1395871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1393159) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1396051, 1396223, 1396393, 1396561, 1396723, 1396903, 1397087, 1397267, 1397447, 1397609, 1397783, 1397959, 1398139, 1398323, 1398497, 1398667]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1395871 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1395871 1398667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1395871) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1398847, 1399019, 1399201, 1399381, 1399553, 1399733, 1399913, 1400093, 1400261, 1400423, 1400599, 1400753, 1400923, 1401083, 1401263, 1401443]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1398667 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1398667 1401443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1398667) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1401623, 1401793, 1401977, 1402157, 1402309, 1402493, 1402673, 1402847, 1403021, 1403189, 1403371, 1403533, 1403693, 1403869, 1403981, 1404163]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1401443 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1401443 1404163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1401443) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1404323, 1404503, 1404671, 1404833, 1405009, 1405181, 1405363, 1405531, 1405709, 1405879, 1406051, 1406231, 1406389, 1406557, 1406707, 1406879]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1404163 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1404163 1406879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1404163) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1407061, 1407229, 1407409, 1407587, 1407751, 1407893, 1408067, 1408241, 1408417, 1408601, 1408769, 1408889, 1409069, 1409251, 1409407, 1409587]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1406879 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1406879 1409587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1406879) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1409753, 1409917, 1410077, 1410257, 1410421, 1410599, 1410781, 1410961, 1411141, 1411313, 1411481, 1411649, 1411831, 1412011, 1412189, 1412363]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1409587 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1409587 1412363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1409587) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1412539, 1412713, 1412893, 1413077, 1413253, 1413427, 1413593, 1413773, 1413949, 1414129, 1414307, 1414481, 1414663, 1414837, 1414999, 1415179]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1412363 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1412363 1415179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1412363) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1415357, 1415507, 1415681, 1415851, 1416031, 1416211, 1416341, 1416511, 1416691, 1416871, 1417051, 1417223, 1417399, 1417583, 1417751, 1417931]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1415179 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1415179 1417931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1415179) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1418107, 1418267, 1418449, 1418621, 1418797, 1418959, 1419137, 1419317, 1419497, 1419679, 1419839, 1420009, 1420169, 1420303, 1420483, 1420667]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1417931 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1417931 1420667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1417931) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1420847, 1421027, 1421191, 1421351, 1421527, 1421711, 1421867, 1422023, 1422199, 1422367, 1422541, 1422721, 1422899, 1423073, 1423243, 1423417]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1420667 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1420667 1423417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1420667) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1423589, 1423759, 1423943, 1424123, 1424263, 1424443, 1424603, 1424779, 1424963, 1425139, 1425311, 1425491, 1425667, 1425821, 1426003, 1426171]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1423417 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1423417 1426171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1423417) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1337813 1343413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1337813)
    (mid := 1340639) (hi := 1343413) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1343413 1349017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1343413)
    (mid := 1346243) (hi := 1349017) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1349017 1354571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1349017)
    (mid := 1351799) (hi := 1354571) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1354571 1359913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1354571)
    (mid := 1357201) (hi := 1359913) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1359913 1365467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1359913)
    (mid := 1362731) (hi := 1365467) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1365467 1370933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1365467)
    (mid := 1368187) (hi := 1370933) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1370933 1376429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1370933)
    (mid := 1373689) (hi := 1376429) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1376429 1382099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1376429)
    (mid := 1379291) (hi := 1382099) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1382099 1387601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1382099)
    (mid := 1384861) (hi := 1387601) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1387601 1393159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1387601)
    (mid := 1390421) (hi := 1393159) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1393159 1398667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1393159)
    (mid := 1395871) (hi := 1398667) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1398667 1404163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1398667)
    (mid := 1401443) (hi := 1404163) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1404163 1409587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1404163)
    (mid := 1406879) (hi := 1409587) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1409587 1415179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1409587)
    (mid := 1412363) (hi := 1415179) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1415179 1420667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1415179)
    (mid := 1417931) (hi := 1420667) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1420667 1426171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1420667)
    (mid := 1423417) (hi := 1426171) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1337813 1349017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1337813)
    (mid := 1343413) (hi := 1349017) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1349017 1359913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1349017)
    (mid := 1354571) (hi := 1359913) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1359913 1370933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1359913)
    (mid := 1365467) (hi := 1370933) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1370933 1382099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1370933)
    (mid := 1376429) (hi := 1382099) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1382099 1393159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1382099)
    (mid := 1387601) (hi := 1393159) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1393159 1404163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1393159)
    (mid := 1398667) (hi := 1404163) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1404163 1415179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1404163)
    (mid := 1409587) (hi := 1415179) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1415179 1426171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1415179)
    (mid := 1420667) (hi := 1426171) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1337813 1359913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1337813)
    (mid := 1349017) (hi := 1359913) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1359913 1382099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1359913)
    (mid := 1370933) (hi := 1382099) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1382099 1404163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1382099)
    (mid := 1393159) (hi := 1404163) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1404163 1426171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1404163)
    (mid := 1415179) (hi := 1426171) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1337813 1382099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1337813)
    (mid := 1359913) (hi := 1382099) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1382099 1426171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1382099)
    (mid := 1404163) (hi := 1426171) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1337813 1426171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1337813)
    (mid := 1382099) (hi := 1426171) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1337813 1426171 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block015

#print axioms B699MiddleExtension.PrimorialBlocks.Block015.joined
