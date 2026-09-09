import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block017

def segment0Nodes : List Nat := [787079, 787261, 787439, 787621, 787793, 787973, 788153, 788321, 788497, 788677, 788849, 789031, 789343, 789527, 789709, 789883]
theorem segment0Check : trialChainCheck 322 786901 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 786901 789883 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [790063, 790241, 790421, 790589, 790753, 790927, 791111, 791291, 791473, 791657, 791827, 791993, 792163, 792317, 792487, 792667]
theorem segment1Check : trialChainCheck 322 789883 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 789883 792667 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [792821, 792991, 793159, 793343, 793519, 793699, 793867, 794041, 794221, 794399, 794579, 794749, 794923, 795103, 795253, 795427]
theorem segment2Check : trialChainCheck 322 792667 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 792667 795427 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [795601, 795763, 795947, 796121, 796303, 796487, 796657, 796819, 797003, 797171, 797353, 797509, 797689, 797869, 798043, 798227]
theorem segment3Check : trialChainCheck 322 795427 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 795427 798227 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [798409, 798569, 798751, 798929, 799103, 799259, 799441, 799621, 799801, 799979, 800161, 800333, 800509, 800693, 800873, 801037]
theorem segment4Check : trialChainCheck 322 798227 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 798227 801037 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [801217, 801379, 801557, 801733, 802037, 802357, 802531, 802709, 802873, 803057, 803237, 803417, 803591, 803749, 803927, 804107]
theorem segment5Check : trialChainCheck 322 801037 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 801037 804107 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [804283, 804449, 804619, 804803, 804983, 805159, 805339, 805523, 805703, 805877, 806059, 806233, 806549, 806719, 806903, 807083]
theorem segment6Check : trialChainCheck 322 804107 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 804107 807083 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [807259, 807427, 807607, 807787, 807949, 808267, 808441, 808603, 808777, 808961, 809143, 809323, 809629, 809803, 809983, 810151]
theorem segment7Check : trialChainCheck 322 807083 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 807083 810151 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [810319, 810503, 810671, 810853, 811037, 811207, 811387, 811561, 811729, 811897, 812081, 812257, 812431, 812599, 812761, 812939]
theorem segment8Check : trialChainCheck 322 810151 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 810151 812939 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [813121, 813443, 813623, 813797, 813971, 814139, 814309, 814493, 814643, 814823, 814991, 815173, 815351, 815533, 815713, 815897]
theorem segment9Check : trialChainCheck 322 812939 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 812939 815897 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [816077, 816251, 816427, 816593, 816769, 816947, 817127, 817303, 817483, 817651, 817823, 817987, 818171, 818353, 818509, 818689]
theorem segment10Check : trialChainCheck 322 815897 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 815897 818689 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [818837, 819017, 819187, 819367, 819523, 819701, 819853, 820037, 820213, 820367, 820541, 820723, 820907, 821089, 821263, 821441]
theorem segment11Check : trialChainCheck 322 818689 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 818689 821441 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [821603, 821771, 821941, 822113, 822433, 822611, 822793, 822973, 823153, 823337, 823519, 823703, 823877, 824191, 824513, 824683]
theorem segment12Check : trialChainCheck 322 821441 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 821441 824683 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [824861, 825029, 825203, 825361, 825533, 825709, 825889, 826211, 826393, 826571, 826753, 826927, 827087, 827269, 827447, 827599]
theorem segment13Check : trialChainCheck 322 824683 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 824683 827599 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [827779, 827941, 828119, 828277, 828449, 828757, 828941, 829123, 829289, 829469, 829643, 829819, 830003, 830177, 830359, 830513]
theorem segment14Check : trialChainCheck 322 827599 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 827599 830513 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [830693, 830873, 831043, 831221, 831373, 831553, 831731, 831913, 832081, 832253, 832427, 832607, 832787, 832969, 833117, 833299]
theorem segment15Check : trialChainCheck 322 830513 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 830513 833299 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 786901 792667 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 792667 798227 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 798227 804107 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 804107 810151 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 810151 815897 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 815897 821441 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 821441 827599 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 827599 833299 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 786901 798227 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 798227 810151 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 810151 821441 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 821441 833299 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 786901 810151 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 810151 833299 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 786901 833299 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 786901 833299 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block017

#print axioms B699MiddleIndex.PrimeBlocks.Block017.joined
