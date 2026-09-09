import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block018

def segment0Nodes : List Nat := [833479, 833659, 833843, 834023, 834199, 834367, 834527, 834709, 834893, 835039, 835217, 835399, 835559, 835739, 835909, 836071]
theorem segment0Check : trialChainCheck 322 833299 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 833299 836071 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [836243, 836413, 836573, 836753, 836921, 837079, 837257, 837439, 837619, 837797, 837979, 838249, 838429, 838613, 838781, 838963]
theorem segment1Check : trialChainCheck 322 836071 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 836071 838963 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [839131, 839303, 839483, 839653, 839837, 839999, 840181, 840353, 840523, 840703, 841021, 841193, 841369, 841549, 841727, 841889]
theorem segment2Check : trialChainCheck 322 838963 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 838963 841889 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [842071, 842249, 842423, 842599, 842771, 842951, 843131, 843307, 843487, 843649, 843833, 844013, 844187, 844369, 844553, 844733]
theorem segment3Check : trialChainCheck 322 841889 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 841889 844733 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [844913, 845083, 845261, 845441, 845623, 845777, 845951, 846271, 846589, 846757, 846931, 847109, 847283, 847453, 847621, 847789]
theorem segment4Check : trialChainCheck 322 844733 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 844733 847789 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [847969, 848149, 848321, 848489, 848671, 848851, 849019, 849203, 849383, 849539, 849721, 849883, 850063, 850247, 850427, 850571]
theorem segment5Check : trialChainCheck 322 847789 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 847789 850571 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [850753, 850933, 851117, 851297, 851471, 851647, 851831, 852013, 852197, 852367, 852689, 852871, 853049, 853217, 853387, 853571]
theorem segment6Check : trialChainCheck 322 850571 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 850571 853571 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [853739, 853913, 854093, 854263, 854443, 854621, 854801, 854963, 855143, 855317, 855499, 855683, 855863, 856043, 856213, 856393]
theorem segment7Check : trialChainCheck 322 853571 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 853571 856393 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [856571, 856733, 856909, 857083, 857267, 857581, 857749, 857929, 858113, 858293, 858467, 858787, 858961, 859121, 859297, 859477]
theorem segment8Check : trialChainCheck 322 856393 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 856393 859477 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [859657, 859841, 860143, 860323, 860507, 860689, 860861, 861043, 861221, 861391, 861571, 861743, 861907, 862067, 862249, 862423]
theorem segment9Check : trialChainCheck 322 859477 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 859477 862423 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [862607, 862789, 862973, 863153, 863323, 863497, 863671, 863851, 864029, 864211, 864379, 864551, 864733, 864917, 865091, 865409]
theorem segment10Check : trialChainCheck 322 862423 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 862423 865409 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [865591, 865771, 865937, 866119, 866293, 866477, 866653, 866819, 867001, 867173, 867343, 867511, 867689, 867871, 868051, 868229]
theorem segment11Check : trialChainCheck 322 865409 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 865409 868229 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [868409, 868583, 868741, 868909, 869081, 869257, 869437, 869599, 869779, 869959, 870137, 870301, 870479, 870643, 870823, 871001]
theorem segment12Check : trialChainCheck 322 868229 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 868229 871001 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [871181, 871349, 871531, 871687, 871867, 872041, 872203, 872387, 872567, 872749, 872923, 873091, 873263, 873437, 873619, 873787]
theorem segment13Check : trialChainCheck 322 871001 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 871001 873787 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [873959, 874127, 874303, 874487, 874661, 874831, 875011, 875183, 875363, 875543, 875717, 875893, 876077, 876257, 876433, 876611]
theorem segment14Check : trialChainCheck 322 873787 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 873787 876611 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [876791, 876971, 877133, 877313, 877469, 877651, 877823, 877997, 878309, 878489, 878663, 878837, 879007, 879181, 879353, 879533]
theorem segment15Check : trialChainCheck 322 876611 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 876611 879533 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 833299 838963 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 838963 844733 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 844733 850571 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 850571 856393 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 856393 862423 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 862423 868229 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 868229 873787 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 873787 879533 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 833299 844733 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 844733 856393 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 856393 868229 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 868229 879533 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 833299 856393 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 856393 879533 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 833299 879533 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 833299 879533 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block018

#print axioms B699MiddleIndex.PrimeBlocks.Block018.joined
