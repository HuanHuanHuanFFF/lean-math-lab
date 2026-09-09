import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block018

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1603601, 1603769, 1603949, 1604131, 1604311, 1604479, 1604651, 1604833, 1605017, 1605199, 1605349, 1605533, 1605697, 1605881, 1606009, 1606153]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1603421 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1603421 1606153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1603421) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1606331, 1606499, 1606681, 1606859, 1607029, 1607201, 1607377, 1607527, 1607701, 1607873, 1608041, 1608209, 1608379, 1608527, 1608707, 1608883]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1606153 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1606153 1608883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1606153) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1609063, 1609247, 1609423, 1609589, 1609771, 1609913, 1610093, 1610251, 1610431, 1610591, 1610773, 1610957, 1611139, 1611319, 1611499, 1611667]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1608883 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1608883 1611667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1608883) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1611851, 1612033, 1612213, 1612393, 1612561, 1612733, 1612913, 1613093, 1613201, 1613371, 1613543, 1613713, 1613873, 1614037, 1614191, 1614367]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1611667 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1611667 1614367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1611667) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1614533, 1614707, 1614871, 1615049, 1615231, 1615403, 1615541, 1615723, 1615891, 1616063, 1616231, 1616401, 1616569, 1616749, 1616899, 1617079]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1614367 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1614367 1617079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1614367) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1617251, 1617433, 1617589, 1617773, 1617949, 1618129, 1618307, 1618489, 1618663, 1618831, 1618979, 1619159, 1619341, 1619507, 1619689, 1619861]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1617079 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1617079 1619861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1617079) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1620041, 1620217, 1620391, 1620571, 1620743, 1620923, 1621097, 1621259, 1621439, 1621621, 1621793, 1621933, 1622081, 1622263, 1622437, 1622617]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1619861 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1619861 1622617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1619861) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1622791, 1622953, 1623137, 1623319, 1623487, 1623667, 1623847, 1624019, 1624201, 1624373, 1624529, 1624699, 1624849, 1625027, 1625209, 1625383]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1622617 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1622617 1625383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1622617) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1625551, 1625719, 1625903, 1626083, 1626263, 1626437, 1626619, 1626803, 1626983, 1627147, 1627309, 1627489, 1627669, 1627853, 1627981, 1628161]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1625383 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1625383 1628161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1625383) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1628329, 1628507, 1628689, 1628873, 1629031, 1629211, 1629377, 1629559, 1629731, 1629899, 1630051, 1630199, 1630381, 1630549, 1630721, 1630897]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1628161 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1628161 1630897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1628161) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1631059, 1631243, 1631407, 1631579, 1631761, 1631939, 1632121, 1632259, 1632437, 1632619, 1632797, 1632979, 1633157, 1633339, 1633459, 1633633]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1630897 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1630897 1633633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1630897) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1633817, 1633993, 1634177, 1634341, 1634497, 1634681, 1634849, 1635031, 1635199, 1635377, 1635559, 1635727, 1635899, 1636079, 1636249, 1636423]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1633633 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1633633 1636423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1633633) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1636577, 1636759, 1636937, 1637093, 1637261, 1637437, 1637617, 1637777, 1637927, 1638107, 1638269, 1638431, 1638599, 1638743, 1638913, 1639097]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1636423 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1636423 1639097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1636423) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1639271, 1639427, 1639609, 1639793, 1639949, 1640131, 1640311, 1640467, 1640641, 1640819, 1640971, 1641137, 1641301, 1641473, 1641641, 1641821]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1639097 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1639097 1641821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1639097) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1641971, 1642153, 1642327, 1642483, 1642661, 1642843, 1643027, 1643197, 1643363, 1643539, 1643717, 1643893, 1644073, 1644233, 1644413, 1644593]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1641821 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1641821 1644593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1641821) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1644757, 1644931, 1645099, 1645253, 1645433, 1645613, 1645771, 1645939, 1646111, 1646291, 1646473, 1646647, 1646819, 1647001, 1647179, 1647361]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1644593 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1644593 1647361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1644593) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1647523, 1647707, 1647887, 1648069, 1648253, 1648429, 1648613, 1648793, 1648963, 1649147, 1649327, 1649507, 1649689, 1649863, 1650041, 1650221]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1647361 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1647361 1650221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1647361) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1650401, 1650577, 1650757, 1650937, 1651093, 1651267, 1651411, 1651591, 1651757, 1651921, 1652089, 1652267, 1652419, 1652597, 1652773, 1652947]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1650221 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1650221 1652947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1650221) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1653109, 1653293, 1653473, 1653643, 1653791, 1653973, 1654157, 1654337, 1654519, 1654703, 1654879, 1655051, 1655231, 1655393, 1655573, 1655707]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1652947 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1652947 1655707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1652947) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1655891, 1656073, 1656257, 1656427, 1656607, 1656791, 1656953, 1657129, 1657303, 1657463, 1657639, 1657811, 1657987, 1658161, 1658311, 1658483]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1655707 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1655707 1658483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1655707) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1658627, 1658807, 1658989, 1659169, 1659349, 1659533, 1659683, 1659851, 1660007, 1660189, 1660367, 1660517, 1660699, 1660873, 1661029, 1661173]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1658483 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1658483 1661173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1658483) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1661353, 1661519, 1661677, 1661861, 1662041, 1662223, 1662403, 1662581, 1662761, 1662943, 1663117, 1663301, 1663481, 1663619, 1663793, 1663973]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1661173 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1661173 1663973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1661173) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1664123, 1664291, 1664461, 1664633, 1664807, 1664987, 1665161, 1665343, 1665527, 1665709, 1665889, 1666061, 1666237, 1666421, 1666597, 1666781]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1663973 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1663973 1666781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1663973) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1666943, 1667077, 1667251, 1667423, 1667599, 1667779, 1667959, 1668137, 1668319, 1668503, 1668683, 1668847, 1669027, 1669201, 1669361, 1669543]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1666781 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1666781 1669543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1666781) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1669727, 1669897, 1670059, 1670213, 1670359, 1670533, 1670717, 1670899, 1671077, 1671227, 1671379, 1671521, 1671689, 1671781, 1671961, 1672129]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1669543 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1669543 1672129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1669543) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1672301, 1672471, 1672651, 1672799, 1672967, 1673137, 1673317, 1673489, 1673669, 1673849, 1674011, 1674181, 1674353, 1674523, 1674703, 1674887]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1672129 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1672129 1674887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1672129) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1675057, 1675217, 1675393, 1675577, 1675759, 1675943, 1676111, 1676281, 1676453, 1676629, 1676813, 1676993, 1677167, 1677349, 1677527, 1677707]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1674887 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1674887 1677707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1674887) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1677887, 1678069, 1678249, 1678429, 1678613, 1678777, 1678961, 1679143, 1679323, 1679501, 1679683, 1679863, 1680023, 1680191, 1680373, 1680557]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1677707 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1677707 1680557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1677707) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1680709, 1680893, 1681073, 1681247, 1681423, 1681597, 1681723, 1681907, 1682081, 1682257, 1682423, 1682581, 1682753, 1682911, 1683089, 1683271]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1680557 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1680557 1683271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1680557) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1683433, 1683601, 1683779, 1683949, 1684127, 1684307, 1684489, 1684667, 1684843, 1685011, 1685179, 1685323, 1685503, 1685681, 1685863, 1686029]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1683271 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1683271 1686029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1683271) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1686203, 1686367, 1686551, 1686703, 1686871, 1687039, 1687193, 1687373, 1687549, 1687729, 1687909, 1688081, 1688263, 1688443, 1688623, 1688803]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1686029 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1686029 1688803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1686029) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1688987, 1689167, 1689343, 1689521, 1689703, 1689881, 1690057, 1690231, 1690393, 1690573, 1690757, 1690933, 1691113, 1691297, 1691479, 1691659]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1688803 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1688803 1691659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1688803) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1603421 1608883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1603421)
    (mid := 1606153) (hi := 1608883) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1608883 1614367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1608883)
    (mid := 1611667) (hi := 1614367) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1614367 1619861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1614367)
    (mid := 1617079) (hi := 1619861) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1619861 1625383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1619861)
    (mid := 1622617) (hi := 1625383) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1625383 1630897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1625383)
    (mid := 1628161) (hi := 1630897) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1630897 1636423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1630897)
    (mid := 1633633) (hi := 1636423) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1636423 1641821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1636423)
    (mid := 1639097) (hi := 1641821) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1641821 1647361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1641821)
    (mid := 1644593) (hi := 1647361) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1647361 1652947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1647361)
    (mid := 1650221) (hi := 1652947) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1652947 1658483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1652947)
    (mid := 1655707) (hi := 1658483) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1658483 1663973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1658483)
    (mid := 1661173) (hi := 1663973) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1663973 1669543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1663973)
    (mid := 1666781) (hi := 1669543) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1669543 1674887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1669543)
    (mid := 1672129) (hi := 1674887) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1674887 1680557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1674887)
    (mid := 1677707) (hi := 1680557) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1680557 1686029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1680557)
    (mid := 1683271) (hi := 1686029) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1686029 1691659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1686029)
    (mid := 1688803) (hi := 1691659) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1603421 1614367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1603421)
    (mid := 1608883) (hi := 1614367) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1614367 1625383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1614367)
    (mid := 1619861) (hi := 1625383) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1625383 1636423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1625383)
    (mid := 1630897) (hi := 1636423) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1636423 1647361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1636423)
    (mid := 1641821) (hi := 1647361) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1647361 1658483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1647361)
    (mid := 1652947) (hi := 1658483) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1658483 1669543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1658483)
    (mid := 1663973) (hi := 1669543) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1669543 1680557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1669543)
    (mid := 1674887) (hi := 1680557) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1680557 1691659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1680557)
    (mid := 1686029) (hi := 1691659) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1603421 1625383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1603421)
    (mid := 1614367) (hi := 1625383) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1625383 1647361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1625383)
    (mid := 1636423) (hi := 1647361) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1647361 1669543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1647361)
    (mid := 1658483) (hi := 1669543) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1669543 1691659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1669543)
    (mid := 1680557) (hi := 1691659) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1603421 1647361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1603421)
    (mid := 1625383) (hi := 1647361) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1647361 1691659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1647361)
    (mid := 1669543) (hi := 1691659) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1603421 1691659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1603421)
    (mid := 1647361) (hi := 1691659) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1603421 1691659 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block018

#print axioms B699MiddleExtension.PrimorialBlocks.Block018.joined
