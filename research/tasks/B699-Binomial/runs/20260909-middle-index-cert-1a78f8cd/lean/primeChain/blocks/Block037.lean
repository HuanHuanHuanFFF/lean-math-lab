import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block037

def segment0Nodes : List Nat := [1721693, 1721857, 1722037, 1722211, 1722377, 1722557, 1722739, 1722923, 1723063, 1723247, 1723417, 1723583, 1723903, 1724083, 1724263, 1724447]
theorem segment0Check : trialChainCheck 322 1721509 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1721509 1724447 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1724627, 1724791, 1724971, 1725151, 1725307, 1725481, 1725641, 1725821, 1726003, 1726171, 1726349, 1726513, 1726693, 1726859, 1727029, 1727339]
theorem segment1Check : trialChainCheck 322 1724447 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1724447 1727339 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1727521, 1727701, 1727881, 1728061, 1728229, 1728409, 1728593, 1728773, 1728953, 1729129, 1729309, 1729493, 1729813, 1730119, 1730303, 1730473]
theorem segment2Check : trialChainCheck 322 1727339 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1727339 1730473 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1730657, 1730831, 1731013, 1731181, 1731361, 1731539, 1731721, 1731893, 1732057, 1732231, 1732399, 1732579, 1732763, 1732921, 1733101, 1733279]
theorem segment3Check : trialChainCheck 322 1730473 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1730473 1733279 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1733449, 1733623, 1733801, 1733981, 1734151, 1734463, 1734647, 1734827, 1735009, 1735183, 1735361, 1735541, 1735703, 1735883, 1736051, 1736233]
theorem segment4Check : trialChainCheck 322 1733279 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1733279 1736233 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1736417, 1736599, 1736767, 1736951, 1737269, 1737433, 1737613, 1737793, 1737959, 1738141, 1738313, 1738493, 1738669, 1738843, 1739021, 1739201]
theorem segment5Check : trialChainCheck 322 1736233 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1736233 1739201 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1739383, 1739561, 1739741, 1739921, 1740097, 1740259, 1740439, 1740623, 1740793, 1740971, 1741153, 1741321, 1741477, 1741657, 1741841, 1742021]
theorem segment6Check : trialChainCheck 322 1739201 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1739201 1742021 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1742197, 1742369, 1742539, 1742723, 1742903, 1743067, 1743241, 1743419, 1743601, 1743761, 1743941, 1744111, 1744289, 1744469, 1744643, 1744819]
theorem segment7Check : trialChainCheck 322 1742021 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1742021 1744819 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1744993, 1745173, 1745353, 1745537, 1745717, 1746037, 1746211, 1746389, 1746557, 1746737, 1746911, 1747087, 1747271, 1747441, 1747619, 1747799]
theorem segment8Check : trialChainCheck 322 1744819 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1744819 1747799 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1747979, 1748291, 1748473, 1748653, 1748833, 1749001, 1749179, 1749359, 1749533, 1749703, 1749887, 1750069, 1750253, 1750423, 1750607, 1750769]
theorem segment9Check : trialChainCheck 322 1747799 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1747799 1750769 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1750937, 1751117, 1751293, 1751467, 1751647, 1751821, 1752001, 1752181, 1752353, 1752529, 1752703, 1752871, 1753051, 1753229, 1753403, 1753579]
theorem segment10Check : trialChainCheck 322 1750769 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1750769 1753579 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1753753, 1753931, 1754113, 1754293, 1754461, 1754639, 1754803, 1754971, 1755287, 1755451, 1755629, 1755799, 1755959, 1756141, 1756319, 1756499]
theorem segment11Check : trialChainCheck 322 1753579 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1753579 1756499 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1756663, 1756837, 1757153, 1757323, 1757491, 1757663, 1757827, 1758007, 1758187, 1758371, 1758553, 1758737, 1759049, 1759231, 1759399, 1759579]
theorem segment12Check : trialChainCheck 322 1756499 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1756499 1759579 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1759763, 1759943, 1760117, 1760287, 1760467, 1760641, 1760813, 1760981, 1761161, 1761337, 1761517, 1761691, 1761857, 1762039, 1762217, 1762399]
theorem segment13Check : trialChainCheck 322 1759579 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1759579 1762399 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1762583, 1762751, 1762933, 1763093, 1763273, 1763453, 1763627, 1763803, 1763981, 1764151, 1764319, 1764487, 1764671, 1764839, 1765013, 1765187]
theorem segment14Check : trialChainCheck 322 1762399 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1762399 1765187 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1765369, 1765553, 1765703, 1765877, 1766057, 1766231, 1766399, 1766581, 1766761, 1766939, 1767121, 1767281, 1767461, 1767641, 1767809, 1767979]
theorem segment15Check : trialChainCheck 322 1765187 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1765187 1767979 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1721509 1727339 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1727339 1733279 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1733279 1739201 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1739201 1744819 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1744819 1750769 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1750769 1756499 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1756499 1762399 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1762399 1767979 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1721509 1733279 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1733279 1744819 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1744819 1756499 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1756499 1767979 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1721509 1744819 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1744819 1767979 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1721509 1767979 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1721509 1767979 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block037

#print axioms B699MiddleIndex.PrimeBlocks.Block037.joined
