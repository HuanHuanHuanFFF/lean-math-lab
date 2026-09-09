import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block039

def segment0Nodes : List Nat := [1815647, 1815823, 1816007, 1816189, 1816511, 1816679, 1816861, 1817041, 1817213, 1817393, 1817707, 1817891, 1818067, 1818241, 1818419, 1818577]
theorem segment0Check : trialChainCheck 322 1815467 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1815467 1818577 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1818743, 1818923, 1819217, 1819397, 1819577, 1819759, 1819933, 1820111, 1820293, 1820471, 1820647, 1820821, 1820999, 1821181, 1821353, 1821509]
theorem segment1Check : trialChainCheck 322 1818577 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1818577 1821509 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1821691, 1821871, 1822027, 1822207, 1822391, 1822703, 1822871, 1823053, 1823231, 1823413, 1823581, 1823737, 1823911, 1824077, 1824259, 1824421]
theorem segment2Check : trialChainCheck 322 1821509 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1821509 1824421 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1824601, 1824773, 1824947, 1825129, 1825309, 1825493, 1825673, 1825829, 1826003, 1826183, 1826501, 1826819, 1826999, 1827181, 1827361, 1827533]
theorem segment3Check : trialChainCheck 322 1824421 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1824421 1827533 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1827703, 1827869, 1828051, 1828223, 1828399, 1828583, 1828763, 1828933, 1829089, 1829257, 1829441, 1829623, 1829803, 1830119, 1830287, 1830469]
theorem segment4Check : trialChainCheck 322 1827533 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1827533 1830469 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1830637, 1830817, 1831001, 1831171, 1831343, 1831523, 1831703, 1831877, 1832057, 1832239, 1832561, 1832881, 1833179, 1833347, 1833529, 1833701]
theorem segment5Check : trialChainCheck 322 1830469 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1830469 1833701 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1833883, 1834067, 1834243, 1834421, 1834603, 1834783, 1834967, 1835131, 1835299, 1835467, 1835651, 1835819, 1835993, 1836157, 1836479, 1836647]
theorem segment6Check : trialChainCheck 322 1833701 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1833701 1836647 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1836827, 1837009, 1837189, 1837361, 1837541, 1837709, 1837879, 1838063, 1838237, 1838407, 1838591, 1838773, 1838957, 1839133, 1839317, 1839493]
theorem segment7Check : trialChainCheck 322 1836647 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1836647 1839493 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1839671, 1839853, 1840031, 1840351, 1840519, 1840703, 1840877, 1841057, 1841237, 1841401, 1841579, 1841759, 1841941, 1842263, 1842431, 1842611]
theorem segment8Check : trialChainCheck 322 1839493 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1839493 1842611 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1842793, 1842977, 1843159, 1843321, 1843493, 1843649, 1843823, 1843999, 1844179, 1844357, 1844537, 1844707, 1844867, 1845049, 1845229, 1845379]
theorem segment9Check : trialChainCheck 322 1842611 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1842611 1845379 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1845563, 1845731, 1845913, 1846093, 1846261, 1846441, 1846619, 1846777, 1846951, 1847129, 1847309, 1847477, 1847653, 1847831, 1848013, 1848193]
theorem segment10Check : trialChainCheck 322 1845379 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1845379 1848193 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1848367, 1848551, 1848713, 1848877, 1849051, 1849231, 1849399, 1849579, 1849759, 1849933, 1850089, 1850269, 1850447, 1850609, 1850789, 1850969]
theorem segment11Check : trialChainCheck 322 1848193 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1848193 1850969 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1851139, 1851319, 1851503, 1851677, 1851859, 1852013, 1852189, 1852373, 1852523, 1852703, 1853011, 1853191, 1853513, 1853809, 1853987, 1854163]
theorem segment12Check : trialChainCheck 322 1850969 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1850969 1854163 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1854341, 1854497, 1854679, 1854863, 1855039, 1855219, 1855393, 1855577, 1855759, 1855933, 1856089, 1856269, 1856443, 1856599, 1856773, 1856947]
theorem segment13Check : trialChainCheck 322 1854163 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1854163 1856947 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1857113, 1857293, 1857473, 1857617, 1857797, 1857979, 1858163, 1858459, 1858643, 1858823, 1859141, 1859323, 1859497, 1859677, 1859843, 1860017]
theorem segment14Check : trialChainCheck 322 1856947 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1856947 1860017 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1860197, 1860377, 1860559, 1860743, 1860923, 1861103, 1861417, 1861591, 1861759, 1861927, 1862111, 1862279, 1862447, 1862621, 1862797, 1862981]
theorem segment15Check : trialChainCheck 322 1860017 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1860017 1862981 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1815467 1821509 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1821509 1827533 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1827533 1833701 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1833701 1839493 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1839493 1845379 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1845379 1850969 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1850969 1856947 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1856947 1862981 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1815467 1827533 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1827533 1839493 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1839493 1850969 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1850969 1862981 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1815467 1839493 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1839493 1862981 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1815467 1862981 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1815467 1862981 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block039

#print axioms B699MiddleIndex.PrimeBlocks.Block039.joined
