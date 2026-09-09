import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block019

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1691843, 1692023, 1692203, 1692377, 1692541, 1692721, 1692883, 1693067, 1693249, 1693429, 1693613, 1693777, 1693957, 1694141, 1694311, 1694467]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1691659 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1691659 1694467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1691659) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1694647, 1694831, 1694989, 1695163, 1695347, 1695527, 1695709, 1695887, 1696069, 1696249, 1696423, 1696601, 1696729, 1696883, 1697063, 1697243]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1694467 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1694467 1697243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1694467) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1697419, 1697587, 1697771, 1697953, 1698133, 1698313, 1698497, 1698679, 1698859, 1699043, 1699223, 1699393, 1699571, 1699741, 1699921, 1700099]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1697243 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1697243 1700099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1697243) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1700269, 1700441, 1700617, 1700801, 1700983, 1701151, 1701313, 1701493, 1701653, 1701829, 1702013, 1702189, 1702373, 1702553, 1702721, 1702903]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1700099 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1700099 1702903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1700099) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1703071, 1703237, 1703413, 1703593, 1703773, 1703957, 1704137, 1704299, 1704463, 1704613, 1704793, 1704971, 1705153, 1705331, 1705493, 1705667]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1702903 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1702903 1705667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1702903) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1705849, 1706009, 1706191, 1706363, 1706539, 1706701, 1706869, 1706989, 1707163, 1707347, 1707529, 1707709, 1707889, 1708067, 1708247, 1708411]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1705667 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1705667 1708411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1705667) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1708579, 1708741, 1708909, 1709093, 1709269, 1709453, 1709633, 1709789, 1709971, 1710139, 1710311, 1710493, 1710677, 1710857, 1711019, 1711189]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1708411 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1708411 1711189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1708411) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1711351, 1711519, 1711687, 1711859, 1712017, 1712197, 1712371, 1712551, 1712707, 1712891, 1713071, 1713251, 1713403, 1713559, 1713737, 1713919]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1711189 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1711189 1713919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1711189) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1714091, 1714261, 1714441, 1714621, 1714793, 1714963, 1715143, 1715309, 1715489, 1715627, 1715807, 1715983, 1716163, 1716343, 1716521, 1716703]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1713919 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1713919 1716703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1713919) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1716853, 1717007, 1717181, 1717363, 1717517, 1717687, 1717861, 1718039, 1718219, 1718401, 1718573, 1718749, 1718933, 1719059, 1719241, 1719413]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1716703 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1716703 1719413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1716703) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1719583, 1719763, 1719947, 1720123, 1720307, 1720471, 1720643, 1720799, 1720973, 1721149, 1721327, 1721509, 1721693, 1721857, 1722037, 1722211]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1719413 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1719413 1722211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1719413) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1722377, 1722557, 1722739, 1722923, 1723063, 1723247, 1723417, 1723583, 1723751, 1723903, 1724083, 1724263, 1724447, 1724627, 1724791, 1724971]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1722211 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1722211 1724971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1722211) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1725151, 1725307, 1725481, 1725641, 1725821, 1726003, 1726171, 1726349, 1726513, 1726693, 1726859, 1727029, 1727191, 1727339, 1727521, 1727701]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1724971 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1724971 1727701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1724971) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1727881, 1728061, 1728229, 1728409, 1728593, 1728773, 1728953, 1729129, 1729309, 1729493, 1729633, 1729813, 1729961, 1730119, 1730303, 1730473]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1727701 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1727701 1730473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1727701) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1730657, 1730831, 1731013, 1731181, 1731361, 1731539, 1731721, 1731893, 1732057, 1732231, 1732399, 1732579, 1732763, 1732921, 1733101, 1733279]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1730473 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1730473 1733279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1730473) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1733449, 1733623, 1733801, 1733981, 1734151, 1734311, 1734463, 1734647, 1734827, 1735009, 1735183, 1735361, 1735541, 1735703, 1735883, 1736051]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1733279 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1733279 1736051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1733279) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1736233, 1736417, 1736599, 1736767, 1736951, 1737103, 1737269, 1737433, 1737613, 1737793, 1737959, 1738141, 1738313, 1738493, 1738669, 1738843]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1736051 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1736051 1738843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1736051) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1739021, 1739201, 1739383, 1739561, 1739741, 1739921, 1740097, 1740259, 1740439, 1740623, 1740793, 1740971, 1741153, 1741321, 1741477, 1741657]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1738843 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1738843 1741657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1738843) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1741841, 1742021, 1742197, 1742369, 1742539, 1742723, 1742903, 1743067, 1743241, 1743419, 1743601, 1743761, 1743941, 1744111, 1744289, 1744469]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1741657 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1741657 1744469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1741657) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1744643, 1744819, 1744993, 1745173, 1745353, 1745537, 1745717, 1745897, 1746037, 1746211, 1746389, 1746557, 1746737, 1746911, 1747087, 1747271]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1744469 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1744469 1747271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1744469) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1747441, 1747619, 1747799, 1747979, 1748143, 1748291, 1748473, 1748653, 1748833, 1749001, 1749179, 1749359, 1749533, 1749703, 1749887, 1750069]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1747271 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1747271 1750069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1747271) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1750253, 1750423, 1750607, 1750769, 1750937, 1751117, 1751293, 1751467, 1751647, 1751821, 1752001, 1752181, 1752353, 1752529, 1752703, 1752871]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1750069 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1750069 1752871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1750069) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1753051, 1753229, 1753403, 1753579, 1753753, 1753931, 1754113, 1754293, 1754461, 1754639, 1754803, 1754971, 1755133, 1755287, 1755451, 1755629]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1752871 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1752871 1755629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1752871) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1755799, 1755959, 1756141, 1756319, 1756499, 1756663, 1756837, 1756999, 1757153, 1757323, 1757491, 1757663, 1757827, 1758007, 1758187, 1758371]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1755629 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1755629 1758371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1755629) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1758553, 1758737, 1758899, 1759049, 1759231, 1759399, 1759579, 1759763, 1759943, 1760117, 1760287, 1760467, 1760641, 1760813, 1760981, 1761161]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1758371 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1758371 1761161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1758371) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1761337, 1761517, 1761691, 1761857, 1762039, 1762217, 1762399, 1762583, 1762751, 1762933, 1763093, 1763273, 1763453, 1763627, 1763803, 1763981]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1761161 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1761161 1763981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1761161) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1764151, 1764319, 1764487, 1764671, 1764839, 1765013, 1765187, 1765369, 1765553, 1765703, 1765877, 1766057, 1766231, 1766399, 1766581, 1766761]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1763981 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1763981 1766761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1763981) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1766939, 1767121, 1767281, 1767461, 1767641, 1767809, 1767979, 1768157, 1768339, 1768523, 1768673, 1768853, 1769023, 1769197, 1769371, 1769543]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1766761 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1766761 1769543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1766761) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1769701, 1769881, 1770061, 1770239, 1770409, 1770589, 1770773, 1770949, 1771103, 1771283, 1771463, 1771633, 1771799, 1771981, 1772119, 1772297]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1769543 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1769543 1772297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1769543) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1772473, 1772647, 1772819, 1772993, 1773173, 1773349, 1773523, 1773703, 1773887, 1774067, 1774247, 1774403, 1774583, 1774757, 1774939, 1775069]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1772297 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1772297 1775069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1772297) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1775243, 1775419, 1775597, 1775777, 1775953, 1776133, 1776317, 1776499, 1776683, 1776847, 1777031, 1777213, 1777379, 1777553, 1777733, 1777907]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1775069 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1775069 1777907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1775069) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1778071, 1778243, 1778423, 1778597, 1778759, 1778929, 1779109, 1779289, 1779461, 1779623, 1779779, 1779961, 1780133, 1780309, 1780489, 1780663]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1777907 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1777907 1780663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1777907) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1691659 1697243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1691659)
    (mid := 1694467) (hi := 1697243) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1697243 1702903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1697243)
    (mid := 1700099) (hi := 1702903) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1702903 1708411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1702903)
    (mid := 1705667) (hi := 1708411) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1708411 1713919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1708411)
    (mid := 1711189) (hi := 1713919) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1713919 1719413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1713919)
    (mid := 1716703) (hi := 1719413) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1719413 1724971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1719413)
    (mid := 1722211) (hi := 1724971) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1724971 1730473 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1724971)
    (mid := 1727701) (hi := 1730473) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1730473 1736051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1730473)
    (mid := 1733279) (hi := 1736051) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1736051 1741657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1736051)
    (mid := 1738843) (hi := 1741657) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1741657 1747271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1741657)
    (mid := 1744469) (hi := 1747271) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1747271 1752871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1747271)
    (mid := 1750069) (hi := 1752871) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1752871 1758371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1752871)
    (mid := 1755629) (hi := 1758371) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1758371 1763981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1758371)
    (mid := 1761161) (hi := 1763981) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1763981 1769543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1763981)
    (mid := 1766761) (hi := 1769543) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1769543 1775069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1769543)
    (mid := 1772297) (hi := 1775069) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1775069 1780663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1775069)
    (mid := 1777907) (hi := 1780663) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1691659 1702903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1691659)
    (mid := 1697243) (hi := 1702903) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1702903 1713919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1702903)
    (mid := 1708411) (hi := 1713919) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1713919 1724971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1713919)
    (mid := 1719413) (hi := 1724971) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1724971 1736051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1724971)
    (mid := 1730473) (hi := 1736051) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1736051 1747271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1736051)
    (mid := 1741657) (hi := 1747271) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1747271 1758371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1747271)
    (mid := 1752871) (hi := 1758371) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1758371 1769543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1758371)
    (mid := 1763981) (hi := 1769543) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1769543 1780663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1769543)
    (mid := 1775069) (hi := 1780663) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1691659 1713919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1691659)
    (mid := 1702903) (hi := 1713919) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1713919 1736051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1713919)
    (mid := 1724971) (hi := 1736051) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1736051 1758371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1736051)
    (mid := 1747271) (hi := 1758371) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1758371 1780663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1758371)
    (mid := 1769543) (hi := 1780663) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1691659 1736051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1691659)
    (mid := 1713919) (hi := 1736051) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1736051 1780663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1736051)
    (mid := 1758371) (hi := 1780663) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1691659 1780663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1691659)
    (mid := 1736051) (hi := 1780663) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1691659 1780663 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block019

#print axioms B699MiddleExtension.PrimorialBlocks.Block019.joined
