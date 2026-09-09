import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block020

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1780837, 1781009, 1781173, 1781357, 1781537, 1781707, 1781881, 1782061, 1782241, 1782413, 1782589, 1782769, 1782947, 1783129, 1783277, 1783447]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1780663 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1780663 1783447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1780663) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1783619, 1783801, 1783981, 1784137, 1784297, 1784459, 1784641, 1784807, 1784989, 1785151, 1785331, 1785503, 1785683, 1785857, 1786039, 1786223]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1783447 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1783447 1786223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1783447) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1786391, 1786553, 1786727, 1786909, 1787089, 1787267, 1787447, 1787603, 1787783, 1787953, 1788103, 1788271, 1788443, 1788623, 1788769, 1788949]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1786223 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1786223 1788949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1786223) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1789093, 1789261, 1789433, 1789603, 1789787, 1789951, 1790111, 1790293, 1790443, 1790623, 1790791, 1790969, 1791121, 1791289, 1791473, 1791637]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1788949 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1788949 1791637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1788949) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1791793, 1791973, 1792139, 1792319, 1792501, 1792673, 1792849, 1793023, 1793203, 1793387, 1793569, 1793731, 1793887, 1794053, 1794229, 1794371]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1791637 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1791637 1794371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1791637) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1794547, 1794731, 1794913, 1795091, 1795273, 1795439, 1795621, 1795793, 1795967, 1796147, 1796321, 1796503, 1796677, 1796843, 1797017, 1797193]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1794371 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1794371 1797193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1794371) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1797377, 1797547, 1797673, 1797857, 1798037, 1798211, 1798387, 1798571, 1798747, 1798931, 1799107, 1799279, 1799453, 1799627, 1799803, 1799983]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1797193 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1797193 1799983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1797193) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1800167, 1800343, 1800499, 1800677, 1800859, 1801039, 1801223, 1801403, 1801577, 1801759, 1801931, 1802113, 1802293, 1802419, 1802599, 1802753]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1799983 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1799983 1802753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1799983) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1802923, 1803103, 1803259, 1803421, 1803583, 1803761, 1803889, 1804073, 1804249, 1804433, 1804613, 1804793, 1804973, 1805147, 1805327, 1805501]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1802753 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1802753 1805501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1802753) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1805677, 1805857, 1806041, 1806223, 1806407, 1806589, 1806769, 1806953, 1807129, 1807313, 1807493, 1807643, 1807811, 1807987, 1808167, 1808327]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1805501 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1805501 1808327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1805501) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1808507, 1808687, 1808869, 1809029, 1809211, 1809391, 1809557, 1809683, 1809859, 1810043, 1810219, 1810397, 1810579, 1810751, 1810933, 1811107]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1808327 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1808327 1811107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1808327) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1811291, 1811473, 1811657, 1811837, 1811993, 1812157, 1812341, 1812511, 1812689, 1812871, 1813039, 1813223, 1813391, 1813561, 1813741, 1813913]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1811107 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1811107 1813913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1811107) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1814083, 1814261, 1814431, 1814611, 1814777, 1814951, 1815131, 1815301, 1815467, 1815647, 1815823, 1816007, 1816189, 1816337, 1816511, 1816679]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1813913 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1813913 1816679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1813913) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1816861, 1817041, 1817213, 1817393, 1817549, 1817707, 1817891, 1818067, 1818241, 1818419, 1818577, 1818743, 1818923, 1819067, 1819217, 1819397]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1816679 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1816679 1819397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1816679) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1819577, 1819759, 1819933, 1820111, 1820293, 1820471, 1820647, 1820821, 1820999, 1821181, 1821353, 1821509, 1821691, 1821871, 1822027, 1822207]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1819397 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1819397 1822207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1819397) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1822391, 1822571, 1822703, 1822871, 1823053, 1823231, 1823413, 1823581, 1823737, 1823911, 1824077, 1824259, 1824421, 1824601, 1824773, 1824947]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1822207 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1822207 1824947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1822207) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1825129, 1825309, 1825493, 1825673, 1825829, 1826003, 1826183, 1826329, 1826501, 1826659, 1826819, 1826999, 1827181, 1827361, 1827533, 1827703]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1824947 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1824947 1827703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1824947) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1827869, 1828051, 1828223, 1828399, 1828583, 1828763, 1828933, 1829089, 1829257, 1829441, 1829623, 1829803, 1829963, 1830119, 1830287, 1830469]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1827703 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1827703 1830469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1827703) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1830637, 1830817, 1831001, 1831171, 1831343, 1831523, 1831703, 1831877, 1832057, 1832239, 1832419, 1832561, 1832711, 1832881, 1833023, 1833179]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1830469 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1830469 1833179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1830469) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1833347, 1833529, 1833701, 1833883, 1834067, 1834243, 1834421, 1834603, 1834783, 1834967, 1835131, 1835299, 1835467, 1835651, 1835819, 1835993]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1833179 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1833179 1835993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1833179) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1836157, 1836319, 1836479, 1836647, 1836827, 1837009, 1837189, 1837361, 1837541, 1837709, 1837879, 1838063, 1838237, 1838407, 1838591, 1838773]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1835993 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1835993 1838773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1835993) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1838957, 1839133, 1839317, 1839493, 1839671, 1839853, 1840031, 1840183, 1840351, 1840519, 1840703, 1840877, 1841057, 1841237, 1841401, 1841579]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1838773 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1838773 1841579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1838773) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1841759, 1841941, 1842101, 1842263, 1842431, 1842611, 1842793, 1842977, 1843159, 1843321, 1843493, 1843649, 1843823, 1843999, 1844179, 1844357]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1841579 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1841579 1844357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1841579) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1844537, 1844707, 1844867, 1845049, 1845229, 1845379, 1845563, 1845731, 1845913, 1846093, 1846261, 1846441, 1846619, 1846777, 1846951, 1847129]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1844357 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1844357 1847129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1844357) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1847309, 1847477, 1847653, 1847831, 1848013, 1848193, 1848367, 1848551, 1848713, 1848877, 1849051, 1849231, 1849399, 1849579, 1849759, 1849933]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1847129 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1847129 1849933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1847129) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1850089, 1850269, 1850447, 1850609, 1850789, 1850969, 1851139, 1851319, 1851503, 1851677, 1851859, 1852013, 1852189, 1852373, 1852523, 1852703]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1849933 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1849933 1852703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1849933) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1852859, 1853011, 1853191, 1853339, 1853513, 1853671, 1853809, 1853987, 1854163, 1854341, 1854497, 1854679, 1854863, 1855039, 1855219, 1855393]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1852703 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1852703 1855393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1852703) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1855577, 1855759, 1855933, 1856089, 1856269, 1856443, 1856599, 1856773, 1856947, 1857113, 1857293, 1857473, 1857617, 1857797, 1857979, 1858163]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1855393 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1855393 1858163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1855393) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1858343, 1858459, 1858643, 1858823, 1858973, 1859141, 1859323, 1859497, 1859677, 1859843, 1860017, 1860197, 1860377, 1860559, 1860743, 1860923]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1858163 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1858163 1860923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1858163) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1861103, 1861267, 1861417, 1861591, 1861759, 1861927, 1862111, 1862279, 1862447, 1862621, 1862797, 1862981, 1863157, 1863331, 1863509, 1863683]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1860923 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1860923 1863683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1860923) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1863857, 1864039, 1864217, 1864399, 1864571, 1864739, 1864921, 1865081, 1865263, 1865447, 1865609, 1865791, 1865959, 1866143, 1866307, 1866467]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1863683 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1863683 1866467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1863683) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1866649, 1866833, 1867013, 1867193, 1867373, 1867553, 1867729, 1867913, 1868063, 1868239, 1868423, 1868599, 1868777, 1868947, 1869113, 1869293]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1866467 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1866467 1869293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1866467) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1780663 1786223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1780663)
    (mid := 1783447) (hi := 1786223) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1786223 1791637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1786223)
    (mid := 1788949) (hi := 1791637) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1791637 1797193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1791637)
    (mid := 1794371) (hi := 1797193) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1797193 1802753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1797193)
    (mid := 1799983) (hi := 1802753) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1802753 1808327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1802753)
    (mid := 1805501) (hi := 1808327) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1808327 1813913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1808327)
    (mid := 1811107) (hi := 1813913) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1813913 1819397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1813913)
    (mid := 1816679) (hi := 1819397) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1819397 1824947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1819397)
    (mid := 1822207) (hi := 1824947) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1824947 1830469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1824947)
    (mid := 1827703) (hi := 1830469) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1830469 1835993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1830469)
    (mid := 1833179) (hi := 1835993) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1835993 1841579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1835993)
    (mid := 1838773) (hi := 1841579) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1841579 1847129 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1841579)
    (mid := 1844357) (hi := 1847129) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1847129 1852703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1847129)
    (mid := 1849933) (hi := 1852703) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1852703 1858163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1852703)
    (mid := 1855393) (hi := 1858163) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1858163 1863683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1858163)
    (mid := 1860923) (hi := 1863683) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1863683 1869293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1863683)
    (mid := 1866467) (hi := 1869293) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1780663 1791637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1780663)
    (mid := 1786223) (hi := 1791637) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1791637 1802753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1791637)
    (mid := 1797193) (hi := 1802753) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1802753 1813913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1802753)
    (mid := 1808327) (hi := 1813913) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1813913 1824947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1813913)
    (mid := 1819397) (hi := 1824947) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1824947 1835993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1824947)
    (mid := 1830469) (hi := 1835993) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1835993 1847129 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1835993)
    (mid := 1841579) (hi := 1847129) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1847129 1858163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1847129)
    (mid := 1852703) (hi := 1858163) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1858163 1869293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1858163)
    (mid := 1863683) (hi := 1869293) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1780663 1802753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1780663)
    (mid := 1791637) (hi := 1802753) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1802753 1824947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1802753)
    (mid := 1813913) (hi := 1824947) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1824947 1847129 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1824947)
    (mid := 1835993) (hi := 1847129) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1847129 1869293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1847129)
    (mid := 1858163) (hi := 1869293) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1780663 1824947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1780663)
    (mid := 1802753) (hi := 1824947) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1824947 1869293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1824947)
    (mid := 1847129) (hi := 1869293) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1780663 1869293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1780663)
    (mid := 1824947) (hi := 1869293) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1780663 1869293 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block020

#print axioms B699MiddleExtension.PrimorialBlocks.Block020.joined
