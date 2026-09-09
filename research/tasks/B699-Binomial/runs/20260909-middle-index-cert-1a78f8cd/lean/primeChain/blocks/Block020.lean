import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block020

def segment0Nodes : List Nat := [926131, 926309, 926489, 926671, 926851, 927013, 927191, 927373, 927557, 927869, 928051, 928231, 928409, 928703, 928883, 929063]
theorem segment0Check : trialChainCheck 322 925961 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 925961 929063 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [929239, 929419, 929587, 929897, 930079, 930229, 930409, 930593, 930773, 930931, 931097, 931267, 931421, 931597, 931781, 931949]
theorem segment1Check : trialChainCheck 322 929063 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 929063 931949 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [932131, 932303, 932483, 932663, 932839, 933019, 933199, 933349, 933523, 933707, 933883, 934067, 934243, 934403, 934579, 934763]
theorem segment2Check : trialChainCheck 322 931949 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 931949 934763 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [934943, 935261, 935443, 935621, 935791, 935971, 936151, 936329, 936511, 936827, 937009, 937187, 937351, 937511, 937693, 937877]
theorem segment3Check : trialChainCheck 322 934763 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 934763 937877 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [938059, 938243, 938393, 938573, 938747, 938921, 939091, 939247, 939431, 939613, 939793, 939973, 940157, 940327, 940501, 940669]
theorem segment4Check : trialChainCheck 322 937877 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 937877 940669 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [940853, 941027, 941209, 941383, 941561, 941741, 941911, 942091, 942269, 942449, 942607, 942787, 942943, 943127, 943307, 943477]
theorem segment5Check : trialChainCheck 322 940669 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 940669 943477 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [943651, 943819, 944003, 944179, 944497, 944677, 944857, 945037, 945211, 945391, 945547, 945731, 945907, 946091, 946273, 946453]
theorem segment6Check : trialChainCheck 322 943477 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 943477 946453 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [946607, 946783, 946961, 947137, 947299, 947483, 947659, 947833, 948007, 948187, 948349, 948533, 948713, 948887, 949051, 949213]
theorem segment7Check : trialChainCheck 322 946453 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 946453 949213 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [949391, 949567, 949733, 949903, 950083, 950251, 950569, 950753, 950933, 951109, 951283, 951449, 951623, 951803, 951967, 952151]
theorem segment8Check : trialChainCheck 322 949213 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 949213 952151 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [952313, 952487, 952669, 952843, 953023, 953191, 953347, 953521, 953699, 953881, 954043, 954221, 954391, 954571, 954743, 954923]
theorem segment9Check : trialChainCheck 322 952151 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 952151 954923 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [955103, 955277, 955457, 955613, 955793, 955967, 956147, 956311, 956633, 956953, 957133, 957317, 957499, 957659, 957823, 958007]
theorem segment10Check : trialChainCheck 322 954923 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 954923 958007 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [958183, 958367, 958549, 958729, 958901, 959083, 959267, 959449, 959627, 959809, 959969, 960151, 960331, 960499, 960677, 960833]
theorem segment11Check : trialChainCheck 322 958007 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 958007 960833 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [961003, 961187, 961339, 961511, 961691, 961871, 962051, 962233, 962417, 962587, 962747, 962921, 963103, 963283, 963461, 963643]
theorem segment12Check : trialChainCheck 322 960833 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 960833 963643 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [963817, 963979, 964153, 964333, 964517, 964697, 964879, 965059, 965233, 965411, 965567, 965749, 965927, 966109, 966293, 966463]
theorem segment13Check : trialChainCheck 322 963643 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 963643 966463 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [966631, 966803, 966971, 967139, 967321, 967501, 967667, 967847, 968027, 968197, 968381, 968557, 968731, 968911, 969083, 969259]
theorem segment14Check : trialChainCheck 322 966463 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 966463 969259 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [969443, 969599, 969767, 969929, 970111, 970279, 970457, 970633, 970817, 970999, 971177, 971357, 971521, 971699, 971863, 972047]
theorem segment15Check : trialChainCheck 322 969259 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 969259 972047 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 925961 931949 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 931949 937877 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 937877 943477 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 943477 949213 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 949213 954923 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 954923 960833 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 960833 966463 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 966463 972047 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 925961 937877 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 937877 949213 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 949213 960833 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 960833 972047 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 925961 949213 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 949213 972047 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 925961 972047 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 925961 972047 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block020

#print axioms B699MiddleIndex.PrimeBlocks.Block020.joined
