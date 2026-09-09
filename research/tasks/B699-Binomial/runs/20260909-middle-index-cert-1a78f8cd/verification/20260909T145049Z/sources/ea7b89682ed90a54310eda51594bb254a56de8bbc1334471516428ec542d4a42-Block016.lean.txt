import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block016

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1426343, 1426519, 1426703, 1426883, 1427047, 1427227, 1427411, 1427567, 1427749, 1427927, 1428109, 1428281, 1428431, 1428613, 1428793, 1428953]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1426171 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1426171 1428953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1426171) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1429133, 1429303, 1429481, 1429661, 1429843, 1430027, 1430201, 1430381, 1430543, 1430717, 1430887, 1431071, 1431253, 1431421, 1431601, 1431779]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1428953 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1428953 1431779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1428953) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1431959, 1432139, 1432313, 1432493, 1432667, 1432841, 1433021, 1433203, 1433371, 1433539, 1433723, 1433903, 1434077, 1434259, 1434439, 1434623]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1431779 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1431779 1434623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1431779) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1434803, 1434943, 1435121, 1435289, 1435459, 1435631, 1435801, 1435937, 1436111, 1436291, 1436471, 1436651, 1436803, 1436957, 1437133, 1437313]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1434623 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1434623 1437313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1434623) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1437493, 1437659, 1437841, 1438009, 1438181, 1438303, 1438483, 1438667, 1438849, 1439027, 1439209, 1439393, 1439561, 1439743, 1439927, 1440107]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1437313 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1437313 1440107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1437313) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1440269, 1440449, 1440623, 1440799, 1440983, 1441151, 1441331, 1441471, 1441637, 1441807, 1441981, 1442159, 1442341, 1442513, 1442669, 1442849]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1440107 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1440107 1442849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1440107) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1443007, 1443161, 1443341, 1443523, 1443697, 1443859, 1444043, 1444217, 1444309, 1444493, 1444661, 1444823, 1444999, 1445179, 1445351, 1445533]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1442849 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1442849 1445533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1442849) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1445713, 1445887, 1446059, 1446239, 1446409, 1446587, 1446761, 1446941, 1447123, 1447291, 1447471, 1447639, 1447813, 1447987, 1448171, 1448309]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1445533 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1445533 1448309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1445533) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1448477, 1448659, 1448833, 1449017, 1449193, 1449367, 1449551, 1449733, 1449911, 1450073, 1450249, 1450429, 1450613, 1450759, 1450931, 1451083]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1448309 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1448309 1451083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1448309) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1451267, 1451423, 1451603, 1451767, 1451929, 1452109, 1452281, 1452461, 1452637, 1452809, 1452991, 1453171, 1453343, 1453513, 1453681, 1453847]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1451083 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1451083 1453847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1451083) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1454029, 1454209, 1454381, 1454549, 1454731, 1454899, 1455079, 1455263, 1455439, 1455613, 1455781, 1455959, 1456127, 1456289, 1456451, 1456633]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1453847 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1453847 1456633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1453847) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1456799, 1456963, 1457147, 1457321, 1457503, 1457683, 1457867, 1458049, 1458229, 1458409, 1458593, 1458757, 1458911, 1459091, 1459261, 1459439]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1456633 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1456633 1459439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1456633) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1459609, 1459793, 1459963, 1460143, 1460311, 1460483, 1460653, 1460821, 1461001, 1461181, 1461359, 1461517, 1461701, 1461883, 1462063, 1462247]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1459439 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1459439 1462247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1459439) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1462427, 1462607, 1462763, 1462939, 1463123, 1463303, 1463471, 1463647, 1463821, 1463999, 1464179, 1464343, 1464503, 1464649, 1464829, 1465007]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1462247 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1462247 1465007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1462247) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1465187, 1465367, 1465549, 1465729, 1465901, 1466057, 1466203, 1466383, 1466567, 1466747, 1466929, 1467107, 1467283, 1467443, 1467611, 1467787]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1465007 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1465007 1467787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1465007) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1467971, 1468109, 1468277, 1468459, 1468639, 1468807, 1468969, 1469147, 1469323, 1469477, 1469659, 1469843, 1470023, 1470199, 1470377, 1470559]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1467787 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1467787 1470559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1467787) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1470727, 1470871, 1471033, 1471213, 1471397, 1471579, 1471763, 1471937, 1472117, 1472297, 1472467, 1472623, 1472791, 1472971, 1473149, 1473331]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1470559 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1470559 1473331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1470559) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1473503, 1473677, 1473853, 1474037, 1474217, 1474397, 1474579, 1474757, 1474901, 1475051, 1475233, 1475401, 1475567, 1475743, 1475927, 1476109]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1473331 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1473331 1476109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1473331) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1476283, 1476463, 1476647, 1476823, 1477001, 1477169, 1477339, 1477519, 1477703, 1477871, 1478051, 1478231, 1478413, 1478593, 1478777, 1478957]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1476109 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1476109 1478957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1476109) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1479139, 1479301, 1479481, 1479617, 1479791, 1479941, 1480099, 1480277, 1480459, 1480643, 1480811, 1480991, 1481173, 1481357, 1481539, 1481719]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1478957 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1478957 1481719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1478957) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1481899, 1482059, 1482233, 1482413, 1482583, 1482763, 1482937, 1483103, 1483283, 1483453, 1483637, 1483819, 1483997, 1484177, 1484359, 1484537]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1481719 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1481719 1484537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1481719) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1484701, 1484849, 1485031, 1485199, 1485383, 1485563, 1485739, 1485917, 1486097, 1486271, 1486451, 1486609, 1486787, 1486963, 1487131, 1487303]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1484537 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1484537 1487303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1484537) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1487471, 1487641, 1487821, 1487989, 1488173, 1488343, 1488499, 1488671, 1488847, 1489031, 1489207, 1489351, 1489531, 1489673, 1489841, 1490011]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1487303 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1487303 1490011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1487303) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1490183, 1490353, 1490527, 1490711, 1490893, 1491041, 1491199, 1491377, 1491547, 1491727, 1491911, 1492087, 1492261, 1492417, 1492597, 1492747]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1490011 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1490011 1492747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1490011) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1492919, 1493101, 1493281, 1493461, 1493641, 1493813, 1493981, 1494161, 1494343, 1494511, 1494679, 1494859, 1495019, 1495181, 1495363, 1495517]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1492747 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1492747 1495517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1492747) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1495691, 1495867, 1496039, 1496203, 1496387, 1496569, 1496753, 1496927, 1497107, 1497289, 1497439, 1497619, 1497803, 1497983, 1498153, 1498333]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1495517 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1495517 1498333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1495517) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1498513, 1498697, 1498843, 1499011, 1499189, 1499369, 1499551, 1499713, 1499891, 1500073, 1500241, 1500419, 1500593, 1500769, 1500937, 1501081]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1498333 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1498333 1501081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1498333) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1501261, 1501441, 1501613, 1501783, 1501961, 1502143, 1502327, 1502503, 1502687, 1502869, 1503053, 1503233, 1503401, 1503583, 1503767, 1503941]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1501081 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1501081 1503941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1501081) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1504121, 1504297, 1504471, 1504651, 1504831, 1505011, 1505191, 1505369, 1505521, 1505687, 1505851, 1506031, 1506203, 1506371, 1506553, 1506733]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1503941 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1503941 1506733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1503941) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1506917, 1507097, 1507229, 1507379, 1507559, 1507729, 1507907, 1508081, 1508263, 1508417, 1508587, 1508753, 1508933, 1509097, 1509269, 1509439]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1506733 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1506733 1509439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1506733) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1509623, 1509779, 1509961, 1510141, 1510321, 1510493, 1510669, 1510853, 1511021, 1511201, 1511371, 1511539, 1511723, 1511897, 1512041, 1512223]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1509439 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1509439 1512223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1509439) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1512383, 1512559, 1512713, 1512877, 1513049, 1513229, 1513399, 1513583, 1513751, 1513927, 1514101, 1514273, 1514453, 1514633, 1514801, 1514971]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1512223 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1512223 1514971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1512223) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1426171 1431779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1426171)
    (mid := 1428953) (hi := 1431779) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1431779 1437313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1431779)
    (mid := 1434623) (hi := 1437313) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1437313 1442849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1437313)
    (mid := 1440107) (hi := 1442849) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1442849 1448309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1442849)
    (mid := 1445533) (hi := 1448309) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1448309 1453847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1448309)
    (mid := 1451083) (hi := 1453847) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1453847 1459439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1453847)
    (mid := 1456633) (hi := 1459439) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1459439 1465007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1459439)
    (mid := 1462247) (hi := 1465007) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1465007 1470559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1465007)
    (mid := 1467787) (hi := 1470559) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1470559 1476109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1470559)
    (mid := 1473331) (hi := 1476109) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1476109 1481719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1476109)
    (mid := 1478957) (hi := 1481719) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1481719 1487303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1481719)
    (mid := 1484537) (hi := 1487303) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1487303 1492747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1487303)
    (mid := 1490011) (hi := 1492747) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1492747 1498333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1492747)
    (mid := 1495517) (hi := 1498333) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1498333 1503941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1498333)
    (mid := 1501081) (hi := 1503941) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1503941 1509439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1503941)
    (mid := 1506733) (hi := 1509439) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1509439 1514971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1509439)
    (mid := 1512223) (hi := 1514971) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1426171 1437313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1426171)
    (mid := 1431779) (hi := 1437313) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1437313 1448309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1437313)
    (mid := 1442849) (hi := 1448309) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1448309 1459439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1448309)
    (mid := 1453847) (hi := 1459439) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1459439 1470559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1459439)
    (mid := 1465007) (hi := 1470559) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1470559 1481719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1470559)
    (mid := 1476109) (hi := 1481719) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1481719 1492747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1481719)
    (mid := 1487303) (hi := 1492747) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1492747 1503941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1492747)
    (mid := 1498333) (hi := 1503941) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1503941 1514971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1503941)
    (mid := 1509439) (hi := 1514971) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1426171 1448309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1426171)
    (mid := 1437313) (hi := 1448309) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1448309 1470559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1448309)
    (mid := 1459439) (hi := 1470559) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1470559 1492747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1470559)
    (mid := 1481719) (hi := 1492747) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1492747 1514971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1492747)
    (mid := 1503941) (hi := 1514971) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1426171 1470559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1426171)
    (mid := 1448309) (hi := 1470559) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1470559 1514971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1470559)
    (mid := 1492747) (hi := 1514971) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1426171 1514971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1426171)
    (mid := 1470559) (hi := 1514971) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1426171 1514971 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block016

#print axioms B699MiddleExtension.PrimorialBlocks.Block016.joined
