import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block035

def segment0Nodes : List Nat := [1627147, 1627309, 1627489, 1627669, 1627981, 1628161, 1628329, 1628507, 1628689, 1628873, 1629031, 1629211, 1629377, 1629559, 1629731, 1630051]
theorem segment0Check : trialChainCheck 322 1626983 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1626983 1630051 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1630199, 1630381, 1630549, 1630721, 1630897, 1631059, 1631243, 1631407, 1631579, 1631761, 1631939, 1632259, 1632437, 1632619, 1632797, 1632979]
theorem segment1Check : trialChainCheck 322 1630051 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1630051 1632979 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1633157, 1633459, 1633633, 1633817, 1633993, 1634177, 1634497, 1634681, 1634849, 1635031, 1635199, 1635377, 1635559, 1635727, 1635899, 1636079]
theorem segment2Check : trialChainCheck 322 1632979 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1632979 1636079 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1636249, 1636423, 1636577, 1636759, 1636937, 1637093, 1637261, 1637437, 1637617, 1637927, 1638107, 1638269, 1638431, 1638743, 1638913, 1639097]
theorem segment3Check : trialChainCheck 322 1636079 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1636079 1639097 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1639271, 1639427, 1639609, 1639793, 1639949, 1640131, 1640311, 1640467, 1640641, 1640819, 1641137, 1641301, 1641473, 1641641, 1641821, 1641971]
theorem segment4Check : trialChainCheck 322 1639097 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1639097 1641971 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1642153, 1642327, 1642483, 1642661, 1642843, 1643027, 1643197, 1643363, 1643539, 1643717, 1643893, 1644073, 1644233, 1644413, 1644593, 1644757]
theorem segment5Check : trialChainCheck 322 1641971 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1641971 1644757 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1644931, 1645253, 1645433, 1645613, 1645771, 1645939, 1646111, 1646291, 1646473, 1646647, 1646819, 1647001, 1647179, 1647361, 1647523, 1647707]
theorem segment6Check : trialChainCheck 322 1644757 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1644757 1647707 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1647887, 1648069, 1648253, 1648429, 1648613, 1648793, 1648963, 1649147, 1649327, 1649507, 1649689, 1649863, 1650041, 1650221, 1650401, 1650577]
theorem segment7Check : trialChainCheck 322 1647707 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1647707 1650577 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1650757, 1650937, 1651093, 1651411, 1651591, 1651757, 1651921, 1652089, 1652267, 1652419, 1652597, 1652773, 1652947, 1653109, 1653293, 1653473]
theorem segment8Check : trialChainCheck 322 1650577 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1650577 1653473 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1653791, 1653973, 1654157, 1654337, 1654519, 1654703, 1654879, 1655051, 1655231, 1655393, 1655707, 1655891, 1656073, 1656257, 1656427, 1656607]
theorem segment9Check : trialChainCheck 322 1653473 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1653473 1656607 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1656791, 1656953, 1657129, 1657303, 1657463, 1657639, 1657811, 1657987, 1658161, 1658483, 1658627, 1658807, 1658989, 1659169, 1659349, 1659533]
theorem segment10Check : trialChainCheck 322 1656607 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1656607 1659533 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1659851, 1660007, 1660189, 1660367, 1660517, 1660699, 1660873, 1661173, 1661353, 1661519, 1661677, 1661861, 1662041, 1662223, 1662403, 1662581]
theorem segment11Check : trialChainCheck 322 1659533 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1659533 1662581 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1662761, 1662943, 1663117, 1663301, 1663619, 1663793, 1663973, 1664291, 1664461, 1664633, 1664807, 1664987, 1665161, 1665343, 1665527, 1665709]
theorem segment12Check : trialChainCheck 322 1662581 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1662581 1665709 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1665889, 1666061, 1666237, 1666421, 1666597, 1666781, 1667077, 1667251, 1667423, 1667599, 1667779, 1667959, 1668137, 1668319, 1668503, 1668683]
theorem segment13Check : trialChainCheck 322 1665709 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1665709 1668683 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1668847, 1669027, 1669201, 1669361, 1669543, 1669727, 1669897, 1670213, 1670533, 1670717, 1670899, 1671077, 1671379, 1671689, 1671961, 1672129]
theorem segment14Check : trialChainCheck 322 1668683 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1668683 1672129 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1672301, 1672471, 1672651, 1672967, 1673137, 1673317, 1673489, 1673669, 1673849, 1674011, 1674181, 1674353, 1674523, 1674703, 1674887, 1675057]
theorem segment15Check : trialChainCheck 322 1672129 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1672129 1675057 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1626983 1632979 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1632979 1639097 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1639097 1644757 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1644757 1650577 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1650577 1656607 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1656607 1662581 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1662581 1668683 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1668683 1675057 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1626983 1639097 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1639097 1650577 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1650577 1662581 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1662581 1675057 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1626983 1650577 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1650577 1675057 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1626983 1675057 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1626983 1675057 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block035

#print axioms B699MiddleIndex.PrimeBlocks.Block035.joined
