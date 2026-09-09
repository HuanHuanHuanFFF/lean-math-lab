import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block041

def segment0Nodes : List Nat := [1909909, 1910087, 1910269, 1910429, 1910611, 1910767, 1910941, 1911121, 1911289, 1911467, 1911787, 1911961, 1912139, 1912307, 1912489, 1912661]
theorem segment0Check : trialChainCheck 322 1909741 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1909741 1912661 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1912843, 1913017, 1913201, 1913377, 1913551, 1913719, 1913903, 1914067, 1914247, 1914427, 1914593, 1914769, 1914949, 1915117, 1915289, 1915471]
theorem segment1Check : trialChainCheck 322 1912661 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1912661 1915471 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1915649, 1915817, 1915997, 1916179, 1916363, 1916543, 1916689, 1916867, 1917049, 1917203, 1917373, 1917557, 1917739, 1917899, 1918079, 1918247]
theorem segment2Check : trialChainCheck 322 1915471 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1915471 1918247 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1918429, 1918607, 1918771, 1919063, 1919231, 1919549, 1919719, 1919891, 1920049, 1920227, 1920407, 1920587, 1920769, 1920923, 1921103, 1921277]
theorem segment3Check : trialChainCheck 322 1918247 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1918247 1921277 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1921457, 1921631, 1921813, 1921981, 1922153, 1922329, 1922507, 1922689, 1922873, 1923049, 1923221, 1923403, 1923709, 1923893, 1924067, 1924243]
theorem segment4Check : trialChainCheck 322 1921277 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1921277 1924243 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1924409, 1924579, 1924753, 1924921, 1925087, 1925257, 1925431, 1925611, 1925933, 1926097, 1926269, 1926439, 1926623, 1926803, 1926973, 1927157]
theorem segment5Check : trialChainCheck 322 1924243 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1924243 1927157 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1927337, 1927507, 1927691, 1927867, 1928041, 1928219, 1928401, 1928569, 1928753, 1928929, 1929113, 1929289, 1929467, 1929649, 1929827, 1930147]
theorem segment6Check : trialChainCheck 322 1927157 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1927157 1930147 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1930309, 1930493, 1930667, 1930969, 1931143, 1931323, 1931497, 1931681, 1931851, 1932017, 1932197, 1932379, 1932563, 1932739, 1932923, 1933103]
theorem segment7Check : trialChainCheck 322 1930147 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1930147 1933103 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1933277, 1933577, 1933759, 1933931, 1934113, 1934297, 1934459, 1934633, 1934797, 1934969, 1935149, 1935317, 1935481, 1935641, 1935823, 1935991]
theorem segment8Check : trialChainCheck 322 1933103 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1933103 1935991 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1936171, 1936349, 1936523, 1936679, 1936859, 1937041, 1937207, 1937389, 1937557, 1937731, 1937891, 1938073, 1938257, 1938427, 1938611, 1938791]
theorem segment9Check : trialChainCheck 322 1935991 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1935991 1938791 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1938973, 1939151, 1939331, 1939499, 1939681, 1939999, 1940173, 1940339, 1940509, 1940683, 1940849, 1941031, 1941193, 1941377, 1941559, 1941739]
theorem segment10Check : trialChainCheck 322 1938791 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1938791 1941739 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1941889, 1942207, 1942387, 1942571, 1942753, 1942909, 1943093, 1943273, 1943443, 1943743, 1943923, 1944223, 1944401, 1944583, 1944763, 1944937]
theorem segment11Check : trialChainCheck 322 1941739 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1941739 1944937 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1945121, 1945303, 1945487, 1945661, 1945843, 1946017, 1946299, 1946473, 1946657, 1946839, 1947151, 1947311, 1947493, 1947667, 1947851, 1948021]
theorem segment12Check : trialChainCheck 322 1944937 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1944937 1948021 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1948187, 1948369, 1948553, 1948729, 1948909, 1949081, 1949257, 1949417, 1949581, 1949741, 1949911, 1950089, 1950271, 1950449, 1950629, 1950803]
theorem segment13Check : trialChainCheck 322 1948021 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1948021 1950803 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1950979, 1951153, 1951321, 1951501, 1951669, 1951843, 1952023, 1952207, 1952381, 1952563, 1952747, 1952921, 1953101, 1953277, 1953451, 1953629]
theorem segment14Check : trialChainCheck 322 1950803 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1950803 1953629 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1953811, 1953983, 1954159, 1954343, 1954523, 1954699, 1954877, 1955047, 1955203, 1955381, 1955543, 1955711, 1955893, 1956049, 1956217, 1956391]
theorem segment15Check : trialChainCheck 322 1953629 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1953629 1956391 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1909741 1915471 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1915471 1921277 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1921277 1927157 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1927157 1933103 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1933103 1938791 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1938791 1944937 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1944937 1950803 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1950803 1956391 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1909741 1921277 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1921277 1933103 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1933103 1944937 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1944937 1956391 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1909741 1933103 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1933103 1956391 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1909741 1956391 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1909741 1956391 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block041

#print axioms B699MiddleIndex.PrimeBlocks.Block041.joined
