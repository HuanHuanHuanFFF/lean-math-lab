import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block002

def segment0Nodes : List Nat := [91711, 91873, 92051, 92233, 92413, 92593, 92767, 92951, 93133, 93307, 93491, 93811, 93983, 94153, 94331, 94513]
theorem segment0Check : trialChainCheck 322 91541 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 91541 94513 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [94693, 94873, 95027, 95203, 95383, 95561, 95737, 95917, 96097, 96281, 96461, 96643, 96827, 97007, 97187, 97369]
theorem segment1Check : trialChainCheck 322 94513 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 94513 97369 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [97553, 97729, 97883, 98057, 98227, 98411, 98573, 98737, 98911, 99089, 99259, 99439, 99623, 99793, 99971, 100153]
theorem segment2Check : trialChainCheck 322 97369 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 97369 100153 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [100333, 100517, 100699, 100853, 101027, 101209, 101383, 101561, 101741, 101921, 102103, 102259, 102437, 102611, 102793, 102967]
theorem segment3Check : trialChainCheck 322 100153 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 100153 102967 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [103141, 103319, 103483, 103657, 103841, 104021, 104183, 104347, 104527, 104711, 104891, 105071, 105253, 105437, 105619, 105769]
theorem segment4Check : trialChainCheck 322 102967 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 102967 105769 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [105953, 106129, 106307, 106487, 106669, 106853, 107033, 107209, 107509, 107693, 107873, 108041, 108223, 108401, 108571, 108751]
theorem segment5Check : trialChainCheck 322 105769 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 105769 108751 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [108929, 109111, 109279, 109453, 109621, 109793, 109961, 110129, 110311, 110491, 110651, 110821, 110989, 111149, 111323, 111497]
theorem segment6Check : trialChainCheck 322 108751 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 108751 111497 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [111667, 111847, 112031, 112213, 112397, 112577, 112759, 112939, 113123, 113287, 113467, 113647, 113819, 114001, 114167, 114343]
theorem segment7Check : trialChainCheck 322 111497 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 111497 114343 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [114493, 114671, 114847, 115021, 115201, 115363, 115547, 115727, 116047, 116201, 116381, 116549, 116731, 116911, 117071, 117251]
theorem segment8Check : trialChainCheck 322 114343 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 114343 117251 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [117431, 117577, 117757, 117937, 118093, 118277, 118457, 118633, 118801, 118973, 119131, 119311, 119489, 119671, 119851, 120017]
theorem segment9Check : trialChainCheck 322 117251 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 117251 120017 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [120199, 120383, 120563, 120739, 120919, 121081, 121259, 121441, 121621, 121789, 121967, 122149, 122327, 122509, 122693, 122869]
theorem segment10Check : trialChainCheck 322 120017 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 120017 122869 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [123049, 123229, 123407, 123583, 123757, 123941, 124123, 124303, 124477, 124643, 124823, 125003, 125183, 125353, 125527, 125711]
theorem segment11Check : trialChainCheck 322 122869 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 122869 125711 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [125887, 126067, 126241, 126421, 126601, 126781, 126961, 127139, 127321, 127493, 127669, 127849, 128033, 128213, 128393, 128563]
theorem segment12Check : trialChainCheck 322 125711 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 125711 128563 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [128747, 128923, 129097, 129281, 129461, 129643, 129803, 129971, 130147, 130307, 130489, 130657, 130841, 131023, 131203, 131381]
theorem segment13Check : trialChainCheck 322 128563 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 128563 131381 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [131561, 131743, 131927, 132109, 132287, 132469, 132647, 132817, 132989, 133169, 133351, 133519, 133697, 133877, 134059, 134243]
theorem segment14Check : trialChainCheck 322 131381 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 131381 134243 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [134417, 134597, 134777, 134951, 135131, 135301, 135479, 135661, 135841, 136013, 136193, 136373, 136547, 136727, 136897, 137077]
theorem segment15Check : trialChainCheck 322 134243 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 134243 137077 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 91541 97369 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 97369 102967 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 102967 108751 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 108751 114343 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 114343 120017 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 120017 125711 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 125711 131381 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 131381 137077 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 91541 102967 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 102967 114343 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 114343 125711 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 125711 137077 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 91541 114343 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 114343 137077 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 91541 137077 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 91541 137077 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block002

#print axioms B699MiddleIndex.PrimeBlocks.Block002.joined
