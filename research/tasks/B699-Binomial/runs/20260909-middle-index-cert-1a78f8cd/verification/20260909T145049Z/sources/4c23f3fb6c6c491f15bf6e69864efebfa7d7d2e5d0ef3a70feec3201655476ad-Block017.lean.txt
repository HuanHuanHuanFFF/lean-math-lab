import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block017

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1515149, 1515317, 1515487, 1515671, 1515847, 1516027, 1516199, 1516369, 1516547, 1516709, 1516883, 1517059, 1517239, 1517423, 1517603, 1517783]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1514971 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1514971 1517783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1514971) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1517941, 1518109, 1518281, 1518463, 1518623, 1518799, 1518977, 1519159, 1519333, 1519517, 1519691, 1519871, 1520011, 1520173, 1520357, 1520539]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1517783 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1517783 1520539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1517783) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1520723, 1520903, 1521067, 1521241, 1521397, 1521571, 1521739, 1521913, 1522097, 1522253, 1522427, 1522607, 1522789, 1522973, 1523153, 1523329]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1520539 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1520539 1523329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1520539) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1523507, 1523671, 1523849, 1524023, 1524181, 1524361, 1524533, 1524707, 1524871, 1525049, 1525229, 1525409, 1525571, 1525747, 1525921, 1526093]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1523329 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1523329 1526093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1523329) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1526269, 1526449, 1526633, 1526813, 1526977, 1527157, 1527313, 1527497, 1527679, 1527859, 1528019, 1528199, 1528333, 1528469, 1528643, 1528823]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1526093 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1526093 1528823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1526093) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1528999, 1529153, 1529327, 1529503, 1529683, 1529867, 1530037, 1530197, 1530349, 1530523, 1530703, 1530871, 1531051, 1531217, 1531379, 1531561]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1528823 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1528823 1531561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1528823) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1531729, 1531909, 1532093, 1532257, 1532413, 1532593, 1532767, 1532933, 1533109, 1533293, 1533463, 1533643, 1533817, 1533977, 1534153, 1534331]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1531561 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1531561 1534331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1531561) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1534513, 1534667, 1534843, 1535011, 1535179, 1535363, 1535543, 1535719, 1535879, 1536049, 1536221, 1536401, 1536583, 1536737, 1536907, 1537061]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1534331 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1534331 1537061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1534331) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1537241, 1537421, 1537561, 1537729, 1537897, 1538081, 1538261, 1538441, 1538617, 1538777, 1538951, 1539127, 1539301, 1539479, 1539661, 1539821]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1537061 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1537061 1539821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1537061) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1540003, 1540177, 1540337, 1540499, 1540681, 1540859, 1541009, 1541191, 1541363, 1541539, 1541707, 1541873, 1542043, 1542221, 1542383, 1542551]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1539821 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1539821 1542551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1539821) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1542727, 1542911, 1543081, 1543259, 1543441, 1543589, 1543741, 1543909, 1544083, 1544227, 1544407, 1544573, 1544729, 1544903, 1545073, 1545253]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1542551 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1542551 1545253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1542551) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1545433, 1545617, 1545799, 1545983, 1546157, 1546327, 1546499, 1546679, 1546861, 1547027, 1547207, 1547389, 1547573, 1547723, 1547893, 1548073]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1545253 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1545253 1548073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1545253) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1548251, 1548433, 1548593, 1548769, 1548949, 1549129, 1549283, 1549463, 1549631, 1549787, 1549957, 1550141, 1550321, 1550503, 1550669, 1550851]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1548073 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1548073 1550851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1548073) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1551019, 1551203, 1551383, 1551551, 1551733, 1551917, 1552087, 1552241, 1552417, 1552597, 1552781, 1552963, 1553147, 1553329, 1553509, 1553653]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1550851 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1550851 1553653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1550851) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1553837, 1554019, 1554193, 1554367, 1554529, 1554697, 1554881, 1555061, 1555243, 1555423, 1555607, 1555787, 1555969, 1556147, 1556329, 1556509]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1553653 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1553653 1556509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1553653) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1556671, 1556839, 1557019, 1557151, 1557313, 1557481, 1557653, 1557833, 1558009, 1558189, 1558357, 1558541, 1558717, 1558901, 1559059, 1559227]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1556509 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1556509 1559227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1556509) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1559407, 1559581, 1559759, 1559933, 1560077, 1560257, 1560421, 1560593, 1560749, 1560913, 1561069, 1561247, 1561429, 1561607, 1561759, 1561919]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1559227 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1559227 1561919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1559227) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1562101, 1562279, 1562447, 1562611, 1562753, 1562933, 1563109, 1563293, 1563469, 1563649, 1563829, 1564007, 1564183, 1564363, 1564543, 1564721]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1561919 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1561919 1564721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1561919) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1564877, 1565059, 1565233, 1565413, 1565591, 1565747, 1565929, 1566107, 1566289, 1566451, 1566613, 1566793, 1566953, 1567133, 1567303, 1567487]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1564721 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1564721 1567487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1564721) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1567667, 1567847, 1567999, 1568179, 1568353, 1568533, 1568687, 1568867, 1569047, 1569209, 1569391, 1569553, 1569731, 1569901, 1570081, 1570241]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1567487 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1567487 1570241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1567487) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1570421, 1570603, 1570781, 1570963, 1571137, 1571309, 1571477, 1571657, 1571839, 1572023, 1572203, 1572379, 1572559, 1572731, 1572911, 1573087]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1570241 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1570241 1573087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1570241) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1573237, 1573399, 1573577, 1573753, 1573937, 1574107, 1574269, 1574437, 1574611, 1574791, 1574957, 1575139, 1575307, 1575481, 1575659, 1575829]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1573087 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1573087 1575829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1573087) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1576013, 1576177, 1576357, 1576537, 1576721, 1576891, 1577071, 1577231, 1577383, 1577567, 1577729, 1577909, 1578091, 1578257, 1578439, 1578611]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1575829 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1575829 1578611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1575829) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1578793, 1578961, 1579141, 1579321, 1579469, 1579651, 1579819, 1580003, 1580177, 1580357, 1580533, 1580717, 1580897, 1581079, 1581257, 1581439]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1578611 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1578611 1581439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1578611) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1581623, 1581757, 1581929, 1582109, 1582283, 1582463, 1582621, 1582799, 1582981, 1583161, 1583339, 1583521, 1583689, 1583867, 1584047, 1584227]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1581439 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1581439 1584227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1581439) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1584409, 1584577, 1584743, 1584901, 1585033, 1585201, 1585373, 1585547, 1585723, 1585901, 1586077, 1586257, 1586437, 1586621, 1586791, 1586971]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1584227 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1584227 1586971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1584227) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1587121, 1587301, 1587473, 1587653, 1587829, 1587997, 1588163, 1588333, 1588513, 1588687, 1588861, 1589017, 1589183, 1589363, 1589537, 1589719]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1586971 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1586971 1589719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1586971) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1589899, 1590079, 1590263, 1590437, 1590559, 1590739, 1590917, 1591099, 1591277, 1591441, 1591621, 1591787, 1591969, 1592117, 1592281, 1592431]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1589719 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1589719 1592431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1589719) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1592609, 1592779, 1592963, 1593133, 1593299, 1593481, 1593659, 1593841, 1593947, 1594129, 1594301, 1594477, 1594661, 1594837, 1595003, 1595173]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1592431 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1592431 1595173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1592431) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1595357, 1595527, 1595701, 1595863, 1596047, 1596229, 1596389, 1596563, 1596743, 1596871, 1597039, 1597187, 1597369, 1597553, 1597723, 1597877]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1595173 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1595173 1597877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1595173) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1598053, 1598237, 1598381, 1598563, 1598743, 1598923, 1599083, 1599253, 1599427, 1599607, 1599709, 1599889, 1600069, 1600253, 1600433, 1600607]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1597877 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1597877 1600607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1597877) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1600789, 1600969, 1601147, 1601317, 1601489, 1601671, 1601849, 1602011, 1602193, 1602361, 1602529, 1602703, 1602883, 1603067, 1603249, 1603421]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1600607 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1600607 1603421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1600607) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1514971 1520539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1514971)
    (mid := 1517783) (hi := 1520539) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1520539 1526093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1520539)
    (mid := 1523329) (hi := 1526093) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1526093 1531561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1526093)
    (mid := 1528823) (hi := 1531561) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1531561 1537061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1531561)
    (mid := 1534331) (hi := 1537061) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1537061 1542551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1537061)
    (mid := 1539821) (hi := 1542551) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1542551 1548073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1542551)
    (mid := 1545253) (hi := 1548073) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1548073 1553653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1548073)
    (mid := 1550851) (hi := 1553653) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1553653 1559227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1553653)
    (mid := 1556509) (hi := 1559227) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1559227 1564721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1559227)
    (mid := 1561919) (hi := 1564721) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1564721 1570241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1564721)
    (mid := 1567487) (hi := 1570241) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1570241 1575829 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1570241)
    (mid := 1573087) (hi := 1575829) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1575829 1581439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1575829)
    (mid := 1578611) (hi := 1581439) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1581439 1586971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1581439)
    (mid := 1584227) (hi := 1586971) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1586971 1592431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1586971)
    (mid := 1589719) (hi := 1592431) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1592431 1597877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1592431)
    (mid := 1595173) (hi := 1597877) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1597877 1603421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1597877)
    (mid := 1600607) (hi := 1603421) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1514971 1526093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1514971)
    (mid := 1520539) (hi := 1526093) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1526093 1537061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1526093)
    (mid := 1531561) (hi := 1537061) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1537061 1548073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1537061)
    (mid := 1542551) (hi := 1548073) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1548073 1559227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1548073)
    (mid := 1553653) (hi := 1559227) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1559227 1570241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1559227)
    (mid := 1564721) (hi := 1570241) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1570241 1581439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1570241)
    (mid := 1575829) (hi := 1581439) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1581439 1592431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1581439)
    (mid := 1586971) (hi := 1592431) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1592431 1603421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1592431)
    (mid := 1597877) (hi := 1603421) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1514971 1537061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1514971)
    (mid := 1526093) (hi := 1537061) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1537061 1559227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1537061)
    (mid := 1548073) (hi := 1559227) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1559227 1581439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1559227)
    (mid := 1570241) (hi := 1581439) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1581439 1603421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1581439)
    (mid := 1592431) (hi := 1603421) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1514971 1559227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1514971)
    (mid := 1537061) (hi := 1559227) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1559227 1603421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1559227)
    (mid := 1581439) (hi := 1603421) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1514971 1603421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1514971)
    (mid := 1559227) (hi := 1603421) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1514971 1603421 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block017

#print axioms B699MiddleExtension.PrimorialBlocks.Block017.joined
