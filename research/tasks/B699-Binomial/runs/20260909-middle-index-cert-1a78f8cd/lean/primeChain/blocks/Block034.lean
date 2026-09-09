import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block034

def segment0Nodes : List Nat := [1579819, 1580003, 1580177, 1580357, 1580533, 1580717, 1580897, 1581079, 1581257, 1581439, 1581757, 1581929, 1582109, 1582283, 1582463, 1582621]
theorem segment0Check : trialChainCheck 322 1579651 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1579651 1582621 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1582799, 1582981, 1583161, 1583339, 1583521, 1583689, 1583867, 1584047, 1584227, 1584409, 1584577, 1584743, 1585033, 1585201, 1585373, 1585547]
theorem segment1Check : trialChainCheck 322 1582621 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1582621 1585547 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1585723, 1585901, 1586077, 1586257, 1586437, 1586621, 1586791, 1586971, 1587121, 1587301, 1587473, 1587653, 1587829, 1587997, 1588163, 1588333]
theorem segment2Check : trialChainCheck 322 1585547 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1585547 1588333 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1588513, 1588687, 1588861, 1589183, 1589363, 1589537, 1589719, 1589899, 1590079, 1590263, 1590559, 1590739, 1590917, 1591099, 1591277, 1591441]
theorem segment3Check : trialChainCheck 322 1588333 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1588333 1591441 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1591621, 1591787, 1591969, 1592281, 1592431, 1592609, 1592779, 1592963, 1593133, 1593299, 1593481, 1593659, 1593947, 1594129, 1594301, 1594477]
theorem segment4Check : trialChainCheck 322 1591441 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1591441 1594477 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1594661, 1594837, 1595003, 1595173, 1595357, 1595527, 1595701, 1595863, 1596047, 1596229, 1596389, 1596563, 1596871, 1597187, 1597369, 1597553]
theorem segment5Check : trialChainCheck 322 1594477 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1594477 1597553 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1597723, 1597877, 1598053, 1598237, 1598381, 1598563, 1598743, 1598923, 1599083, 1599253, 1599427, 1599709, 1599889, 1600069, 1600253, 1600433]
theorem segment6Check : trialChainCheck 322 1597553 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1597553 1600433 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1600607, 1600789, 1600969, 1601147, 1601317, 1601489, 1601671, 1601849, 1602011, 1602193, 1602361, 1602529, 1602703, 1602883, 1603067, 1603249]
theorem segment7Check : trialChainCheck 322 1600433 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1600433 1603249 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1603421, 1603601, 1603769, 1603949, 1604131, 1604311, 1604479, 1604651, 1604833, 1605017, 1605199, 1605349, 1605533, 1605697, 1606009, 1606331]
theorem segment8Check : trialChainCheck 322 1603249 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1603249 1606331 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1606499, 1606681, 1606859, 1607029, 1607201, 1607377, 1607527, 1607701, 1607873, 1608041, 1608209, 1608527, 1608707, 1608883, 1609063, 1609247]
theorem segment9Check : trialChainCheck 322 1606331 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1606331 1609247 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1609423, 1609589, 1609771, 1610093, 1610251, 1610431, 1610591, 1610773, 1610957, 1611139, 1611319, 1611499, 1611667, 1611851, 1612033, 1612213]
theorem segment10Check : trialChainCheck 322 1609247 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1609247 1612213 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1612393, 1612561, 1612733, 1612913, 1613201, 1613371, 1613543, 1613713, 1613873, 1614191, 1614367, 1614533, 1614707, 1614871, 1615049, 1615231]
theorem segment11Check : trialChainCheck 322 1612213 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1612213 1615231 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1615541, 1615723, 1615891, 1616063, 1616231, 1616401, 1616569, 1616749, 1616899, 1617079, 1617251, 1617433, 1617589, 1617773, 1617949, 1618129]
theorem segment12Check : trialChainCheck 322 1615231 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1615231 1618129 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1618307, 1618489, 1618663, 1618979, 1619159, 1619341, 1619507, 1619689, 1619861, 1620041, 1620217, 1620391, 1620571, 1620743, 1620923, 1621097]
theorem segment13Check : trialChainCheck 322 1618129 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1618129 1621097 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1621259, 1621439, 1621621, 1621933, 1622081, 1622263, 1622437, 1622617, 1622791, 1622953, 1623137, 1623319, 1623487, 1623667, 1623847, 1624019]
theorem segment14Check : trialChainCheck 322 1621097 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1621097 1624019 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1624201, 1624373, 1624529, 1624849, 1625027, 1625209, 1625383, 1625551, 1625719, 1625903, 1626083, 1626263, 1626437, 1626619, 1626803, 1626983]
theorem segment15Check : trialChainCheck 322 1624019 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1624019 1626983 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1579651 1585547 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1585547 1591441 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1591441 1597553 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1597553 1603249 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1603249 1609247 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1609247 1615231 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1615231 1621097 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1621097 1626983 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1579651 1591441 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1591441 1603249 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1603249 1615231 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1615231 1626983 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1579651 1603249 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1603249 1626983 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1579651 1626983 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1579651 1626983 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block034

#print axioms B699MiddleIndex.PrimeBlocks.Block034.joined
