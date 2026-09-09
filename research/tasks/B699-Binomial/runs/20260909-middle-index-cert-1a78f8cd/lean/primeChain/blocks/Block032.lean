import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block032

def segment0Nodes : List Nat := [1486271, 1486451, 1486609, 1486787, 1486963, 1487131, 1487303, 1487471, 1487641, 1487821, 1487989, 1488173, 1488343, 1488499, 1488671, 1488847]
theorem segment0Check : trialChainCheck 322 1486097 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1486097 1488847 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1489031, 1489351, 1489673, 1489841, 1490011, 1490183, 1490353, 1490527, 1490711, 1490893, 1491199, 1491377, 1491547, 1491727, 1491911, 1492087]
theorem segment1Check : trialChainCheck 322 1488847 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1488847 1492087 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1492261, 1492417, 1492597, 1492919, 1493101, 1493281, 1493461, 1493641, 1493813, 1493981, 1494161, 1494343, 1494511, 1494679, 1494859, 1495181]
theorem segment2Check : trialChainCheck 322 1492087 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1492087 1495181 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1495363, 1495517, 1495691, 1495867, 1496039, 1496203, 1496387, 1496569, 1496753, 1496927, 1497107, 1497289, 1497439, 1497619, 1497803, 1497983]
theorem segment3Check : trialChainCheck 322 1495181 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1495181 1497983 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1498153, 1498333, 1498513, 1498697, 1499011, 1499189, 1499369, 1499551, 1499713, 1499891, 1500073, 1500241, 1500419, 1500593, 1500769, 1501081]
theorem segment4Check : trialChainCheck 322 1497983 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1497983 1501081 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1501261, 1501441, 1501613, 1501783, 1501961, 1502143, 1502327, 1502503, 1502687, 1502869, 1503053, 1503233, 1503401, 1503583, 1503767, 1503941]
theorem segment5Check : trialChainCheck 322 1501081 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1501081 1503941 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1504121, 1504297, 1504471, 1504651, 1504831, 1505011, 1505191, 1505369, 1505687, 1505851, 1506031, 1506203, 1506371, 1506553, 1506733, 1506917]
theorem segment6Check : trialChainCheck 322 1503941 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1503941 1506917 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1507229, 1507379, 1507559, 1507729, 1507907, 1508081, 1508263, 1508417, 1508587, 1508753, 1508933, 1509097, 1509269, 1509439, 1509623, 1509779]
theorem segment7Check : trialChainCheck 322 1506917 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1506917 1509779 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1509961, 1510141, 1510321, 1510493, 1510669, 1510853, 1511021, 1511201, 1511371, 1511539, 1511723, 1512041, 1512223, 1512383, 1512559, 1512877]
theorem segment8Check : trialChainCheck 322 1509779 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1509779 1512877 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1513049, 1513229, 1513399, 1513583, 1513751, 1513927, 1514101, 1514273, 1514453, 1514633, 1514801, 1514971, 1515149, 1515317, 1515487, 1515671]
theorem segment9Check : trialChainCheck 322 1512877 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1512877 1515671 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1515847, 1516027, 1516199, 1516369, 1516547, 1516709, 1516883, 1517059, 1517239, 1517423, 1517603, 1517783, 1517941, 1518109, 1518281, 1518463]
theorem segment10Check : trialChainCheck 322 1515671 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1515671 1518463 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1518623, 1518799, 1518977, 1519159, 1519333, 1519517, 1519691, 1520011, 1520173, 1520357, 1520539, 1520723, 1520903, 1521067, 1521241, 1521397]
theorem segment11Check : trialChainCheck 322 1518463 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1518463 1521397 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1521571, 1521739, 1521913, 1522097, 1522253, 1522427, 1522607, 1522789, 1522973, 1523153, 1523329, 1523507, 1523671, 1523849, 1524023, 1524181]
theorem segment12Check : trialChainCheck 322 1521397 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1521397 1524181 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1524361, 1524533, 1524707, 1524871, 1525049, 1525229, 1525409, 1525571, 1525747, 1525921, 1526093, 1526269, 1526449, 1526633, 1526813, 1526977]
theorem segment13Check : trialChainCheck 322 1524181 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1524181 1526977 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1527157, 1527313, 1527497, 1527679, 1527859, 1528019, 1528333, 1528643, 1528823, 1528999, 1529153, 1529327, 1529503, 1529683, 1529867, 1530037]
theorem segment14Check : trialChainCheck 322 1526977 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1526977 1530037 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1530349, 1530523, 1530703, 1530871, 1531051, 1531217, 1531379, 1531561, 1531729, 1531909, 1532093, 1532413, 1532593, 1532767, 1532933, 1533109]
theorem segment15Check : trialChainCheck 322 1530037 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1530037 1533109 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1486097 1492087 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1492087 1497983 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1497983 1503941 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1503941 1509779 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1509779 1515671 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1515671 1521397 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1521397 1526977 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1526977 1533109 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1486097 1497983 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1497983 1509779 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1509779 1521397 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1521397 1533109 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1486097 1509779 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1509779 1533109 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1486097 1533109 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1486097 1533109 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block032

#print axioms B699MiddleIndex.PrimeBlocks.Block032.joined
