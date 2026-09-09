import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block038

def segment0Nodes : List Nat := [1768157, 1768339, 1768523, 1768673, 1768853, 1769023, 1769197, 1769371, 1769543, 1769701, 1769881, 1770061, 1770239, 1770409, 1770589, 1770773]
theorem segment0Check : trialChainCheck 322 1767979 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1767979 1770773 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1770949, 1771103, 1771283, 1771463, 1771633, 1771799, 1772119, 1772297, 1772473, 1772647, 1772819, 1772993, 1773173, 1773349, 1773523, 1773703]
theorem segment1Check : trialChainCheck 322 1770773 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1770773 1773703 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1773887, 1774067, 1774247, 1774403, 1774583, 1774757, 1775069, 1775243, 1775419, 1775597, 1775777, 1775953, 1776133, 1776317, 1776499, 1776683]
theorem segment2Check : trialChainCheck 322 1773703 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1773703 1776683 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1776847, 1777031, 1777213, 1777379, 1777553, 1777733, 1777907, 1778071, 1778243, 1778423, 1778597, 1778759, 1778929, 1779109, 1779289, 1779461]
theorem segment3Check : trialChainCheck 322 1776683 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1776683 1779461 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1779779, 1779961, 1780133, 1780309, 1780489, 1780663, 1780837, 1781009, 1781173, 1781357, 1781537, 1781707, 1781881, 1782061, 1782241, 1782413]
theorem segment4Check : trialChainCheck 322 1779461 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1779461 1782413 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1782589, 1782769, 1782947, 1783129, 1783447, 1783619, 1783801, 1783981, 1784297, 1784459, 1784641, 1784807, 1784989, 1785151, 1785331, 1785503]
theorem segment5Check : trialChainCheck 322 1782413 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1782413 1785503 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1785683, 1785857, 1786039, 1786223, 1786391, 1786553, 1786727, 1786909, 1787089, 1787267, 1787447, 1787603, 1787783, 1788103, 1788271, 1788443]
theorem segment6Check : trialChainCheck 322 1785503 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1785503 1788443 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1788623, 1788769, 1788949, 1789261, 1789433, 1789603, 1789787, 1789951, 1790111, 1790293, 1790443, 1790623, 1790791, 1790969, 1791289, 1791473]
theorem segment7Check : trialChainCheck 322 1788443 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1788443 1791473 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1791793, 1791973, 1792139, 1792319, 1792501, 1792673, 1792849, 1793023, 1793203, 1793387, 1793569, 1793887, 1794053, 1794371, 1794547, 1794731]
theorem segment8Check : trialChainCheck 322 1791473 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1791473 1794731 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1794913, 1795091, 1795273, 1795439, 1795621, 1795793, 1795967, 1796147, 1796321, 1796503, 1796677, 1796843, 1797017, 1797193, 1797377, 1797673]
theorem segment9Check : trialChainCheck 322 1794731 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1794731 1797673 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1797857, 1798037, 1798211, 1798387, 1798571, 1798747, 1798931, 1799107, 1799279, 1799453, 1799627, 1799803, 1799983, 1800167, 1800343, 1800499]
theorem segment10Check : trialChainCheck 322 1797673 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1797673 1800499 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1800677, 1800859, 1801039, 1801223, 1801403, 1801577, 1801759, 1801931, 1802113, 1802419, 1802599, 1802753, 1802923, 1803103, 1803421, 1803583]
theorem segment11Check : trialChainCheck 322 1800499 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1800499 1803583 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1803889, 1804073, 1804249, 1804433, 1804613, 1804793, 1804973, 1805147, 1805327, 1805501, 1805677, 1805857, 1806041, 1806223, 1806407, 1806589]
theorem segment12Check : trialChainCheck 322 1803583 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1803583 1806589 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1806769, 1806953, 1807129, 1807313, 1807493, 1807811, 1807987, 1808167, 1808327, 1808507, 1808687, 1808869, 1809029, 1809211, 1809391, 1809683]
theorem segment13Check : trialChainCheck 322 1806589 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1806589 1809683 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1809859, 1810043, 1810219, 1810397, 1810579, 1810751, 1810933, 1811107, 1811291, 1811473, 1811657, 1811837, 1812157, 1812341, 1812511, 1812689]
theorem segment14Check : trialChainCheck 322 1809683 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1809683 1812689 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1812871, 1813039, 1813223, 1813391, 1813561, 1813741, 1813913, 1814083, 1814261, 1814431, 1814611, 1814777, 1814951, 1815131, 1815301, 1815467]
theorem segment15Check : trialChainCheck 322 1812689 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1812689 1815467 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1767979 1773703 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1773703 1779461 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1779461 1785503 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1785503 1791473 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1791473 1797673 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1797673 1803583 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1803583 1809683 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1809683 1815467 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1767979 1779461 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1779461 1791473 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1791473 1803583 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1803583 1815467 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1767979 1791473 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1791473 1815467 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1767979 1815467 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1767979 1815467 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block038

#print axioms B699MiddleIndex.PrimeBlocks.Block038.joined
