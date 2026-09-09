import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block016

def segment0Nodes : List Nat := [739969, 740153, 740329, 740513, 740693, 740849, 741031, 741193, 741373, 741547, 741721, 741883, 742057, 742241, 742409, 742591]
theorem segment0Check : trialChainCheck 322 739787 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 739787 742591 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [742759, 742943, 743123, 743297, 743609, 743791, 743947, 744127, 744301, 744607, 744791, 744959, 745141, 745307, 745477, 745649]
theorem segment1Check : trialChainCheck 322 742591 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 742591 745649 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [745817, 745999, 746183, 746363, 746677, 746989, 747161, 747343, 747521, 747679, 747863, 748039, 748219, 748387, 748567, 748889]
theorem segment2Check : trialChainCheck 322 745649 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 745649 748889 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [749069, 749249, 749431, 749587, 749761, 749941, 750121, 750287, 750457, 750641, 750817, 751001, 751183, 751367, 751549, 751727]
theorem segment3Check : trialChainCheck 322 748889 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 748889 751727 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [751909, 752093, 752273, 752449, 752627, 752809, 752993, 753161, 753341, 753499, 753679, 753859, 754043, 754223, 754399, 754583]
theorem segment4Check : trialChainCheck 322 751727 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 751727 754583 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [754751, 754931, 755107, 755273, 755449, 755627, 755809, 755977, 756149, 756467, 756649, 756971, 757151, 757331, 757513, 757829]
theorem segment5Check : trialChainCheck 322 754583 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 754583 757829 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [758003, 758179, 758363, 758521, 758699, 758867, 759047, 759229, 759401, 759581, 759763, 759947, 760129, 760301, 760477, 760657]
theorem segment6Check : trialChainCheck 322 757829 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 757829 760657 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [760841, 761023, 761207, 761389, 761567, 761731, 761897, 762061, 762241, 762409, 762583, 762761, 762919, 763093, 763271, 763447]
theorem segment7Check : trialChainCheck 322 760657 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 760657 763447 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [763627, 763811, 763967, 764149, 764327, 764501, 764683, 764857, 765041, 765211, 765389, 765707, 765889, 766067, 766247, 766421]
theorem segment8Check : trialChainCheck 322 763447 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 763447 766421 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [766583, 766763, 766943, 767111, 767293, 767471, 767647, 767831, 768013, 768197, 768377, 768671, 768853, 769033, 769207, 769387]
theorem segment9Check : trialChainCheck 322 766421 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 766421 769387 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [769553, 769733, 769903, 770069, 770239, 770417, 770597, 770771, 770951, 771109, 771293, 771473, 771653, 771973, 772147, 772313]
theorem segment10Check : trialChainCheck 322 769387 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 769387 772313 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [772493, 772669, 772853, 773029, 773209, 773393, 773569, 773723, 773897, 774073, 774377, 774551, 774733, 774901, 775079, 775259]
theorem segment11Check : trialChainCheck 322 772313 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 772313 775259 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [775441, 775613, 775787, 775963, 776143, 776327, 776507, 776683, 776861, 777041, 777221, 777391, 777571, 777743, 777919, 778097]
theorem segment12Check : trialChainCheck 322 775259 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 775259 778097 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [778417, 778597, 778777, 778951, 779267, 779413, 779593, 779771, 779939, 780119, 780287, 780469, 780649, 780833, 781007, 781171]
theorem segment13Check : trialChainCheck 322 778097 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 778097 781171 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [781351, 781531, 781681, 781861, 782011, 782191, 782371, 782539, 782723, 783043, 783227, 783407, 783571, 783749, 783931, 784109]
theorem segment14Check : trialChainCheck 322 781171 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 781171 784109 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [784283, 784463, 784627, 784799, 784981, 785159, 785341, 785503, 785671, 785839, 786017, 786197, 786371, 786553, 786719, 786901]
theorem segment15Check : trialChainCheck 322 784109 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 784109 786901 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 739787 745649 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 745649 751727 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 751727 757829 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 757829 763447 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 763447 769387 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 769387 775259 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 775259 781171 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 781171 786901 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 739787 751727 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 751727 763447 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 763447 775259 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 775259 786901 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 739787 763447 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 763447 786901 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 739787 786901 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 739787 786901 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block016

#print axioms B699MiddleIndex.PrimeBlocks.Block016.joined
