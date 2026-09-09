import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block040

def segment0Nodes : List Nat := [1863157, 1863331, 1863509, 1863683, 1863857, 1864039, 1864217, 1864399, 1864571, 1864739, 1864921, 1865081, 1865263, 1865447, 1865609, 1865791]
theorem segment0Check : trialChainCheck 322 1862981 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1862981 1865791 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1865959, 1866143, 1866307, 1866467, 1866649, 1866833, 1867013, 1867193, 1867373, 1867553, 1867729, 1867913, 1868063, 1868239, 1868423, 1868599]
theorem segment1Check : trialChainCheck 322 1865791 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1865791 1868599 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1868777, 1868947, 1869113, 1869293, 1869449, 1869631, 1869793, 1869971, 1870147, 1870327, 1870511, 1870669, 1870853, 1871029, 1871213, 1871383]
theorem segment2Check : trialChainCheck 322 1868599 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1868599 1871383 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1871561, 1871743, 1871927, 1872109, 1872289, 1872473, 1872631, 1872799, 1872971, 1873147, 1873321, 1873499, 1873681, 1873849, 1874021, 1874189]
theorem segment3Check : trialChainCheck 322 1871383 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1871383 1874189 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1874351, 1874527, 1874699, 1874881, 1875061, 1875241, 1875403, 1875583, 1875901, 1876081, 1876261, 1876417, 1876597, 1876781, 1876951, 1877111]
theorem segment4Check : trialChainCheck 322 1874189 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1874189 1877111 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1877279, 1877461, 1877621, 1877801, 1877983, 1878139, 1878323, 1878493, 1878677, 1878991, 1879301, 1879477, 1879643, 1879817, 1880129, 1880309]
theorem segment5Check : trialChainCheck 322 1877111 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1877111 1880309 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1880467, 1880647, 1880831, 1880993, 1881163, 1881343, 1881521, 1881697, 1881881, 1882063, 1882247, 1882429, 1882607, 1882787, 1882963, 1883129]
theorem segment6Check : trialChainCheck 322 1880309 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1880309 1883129 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1883293, 1883477, 1883773, 1883941, 1884121, 1884293, 1884611, 1884793, 1884973, 1885153, 1885321, 1885501, 1885673, 1885847, 1886029, 1886351]
theorem segment7Check : trialChainCheck 322 1883129 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1883129 1886351 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1886527, 1886701, 1886869, 1887049, 1887229, 1887409, 1887577, 1887757, 1887923, 1888097, 1888279, 1888463, 1888633, 1888807, 1888981, 1889143]
theorem segment8Check : trialChainCheck 322 1886351 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1886351 1889143 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1889317, 1889501, 1889677, 1889999, 1890173, 1890337, 1890521, 1890701, 1890877, 1891049, 1891223, 1891391, 1891567, 1891739, 1891909, 1892089]
theorem segment9Check : trialChainCheck 322 1889143 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1889143 1892089 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1892257, 1892441, 1892621, 1892927, 1893223, 1893403, 1893587, 1893757, 1893937, 1894121, 1894439, 1894609, 1894793, 1894969, 1895141, 1895321]
theorem segment10Check : trialChainCheck 322 1892089 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1892089 1895321 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1895501, 1895657, 1895833, 1896017, 1896199, 1896353, 1896529, 1896689, 1896871, 1897037, 1897219, 1897403, 1897583, 1897871, 1898053, 1898227]
theorem segment11Check : trialChainCheck 322 1895321 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1895321 1898227 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1898389, 1898573, 1898749, 1898921, 1899101, 1899281, 1899589, 1899769, 1899949, 1900121, 1900303, 1900487, 1900667, 1900981, 1901147, 1901329]
theorem segment12Check : trialChainCheck 322 1898227 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1898227 1901329 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1901507, 1901681, 1901857, 1902037, 1902221, 1902403, 1902569, 1902743, 1902917, 1903091, 1903271, 1903441, 1903619, 1903801, 1903981, 1904143]
theorem segment13Check : trialChainCheck 322 1901329 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1901329 1904143 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1904311, 1904489, 1904647, 1904831, 1904999, 1905181, 1905361, 1905517, 1905697, 1905863, 1906043, 1906211, 1906393, 1906559, 1906739, 1906909]
theorem segment14Check : trialChainCheck 322 1904143 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1904143 1906909 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1907071, 1907249, 1907431, 1907611, 1907783, 1907963, 1908133, 1908317, 1908499, 1908679, 1908857, 1909027, 1909199, 1909381, 1909561, 1909741]
theorem segment15Check : trialChainCheck 322 1906909 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1906909 1909741 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1862981 1868599 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1868599 1874189 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1874189 1880309 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1880309 1886351 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1886351 1892089 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1892089 1898227 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1898227 1904143 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1904143 1909741 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1862981 1874189 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1874189 1886351 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1886351 1898227 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1898227 1909741 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1862981 1886351 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1886351 1909741 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1862981 1909741 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1862981 1909741 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block040

#print axioms B699MiddleIndex.PrimeBlocks.Block040.joined
