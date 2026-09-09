import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block001

def segment0Nodes : List Nat := [45959, 46141, 46309, 46489, 46663, 46831, 46997, 47161, 47339, 47521, 47701, 47881, 48049, 48221, 48397, 48571]
theorem segment0Check : trialChainCheck 322 45779 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 45779 48571 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [48751, 48907, 49081, 49261, 49433, 49613, 49789, 49957, 50131, 50311, 50627, 50789, 50971, 51151, 51329, 51511]
theorem segment1Check : trialChainCheck 322 48571 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 48571 51511 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [51691, 51871, 52051, 52223, 52391, 52571, 52747, 52919, 53101, 53281, 53453, 53633, 53813, 53993, 54167, 54347]
theorem segment2Check : trialChainCheck 322 51511 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 51511 54347 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [54521, 54679, 54851, 55021, 55201, 55381, 55547, 55721, 55903, 56087, 56269, 56453, 56633, 56813, 56993, 57173]
theorem segment3Check : trialChainCheck 322 54347 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 54347 57173 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [57349, 57529, 57713, 57881, 58061, 58243, 58427, 58603, 58787, 58967, 59149, 59333, 59513, 59693, 59863, 60041]
theorem segment4Check : trialChainCheck 322 57173 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 57173 60041 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [60223, 60539, 60719, 60901, 61057, 61231, 61409, 61583, 61757, 61933, 62099, 62273, 62423, 62603, 62773, 62939]
theorem segment5Check : trialChainCheck 322 60041 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 60041 62939 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [63113, 63281, 63463, 63647, 63823, 64007, 64189, 64373, 64553, 64717, 64901, 65071, 65239, 65423, 65599, 65777]
theorem segment6Check : trialChainCheck 322 62939 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 62939 65777 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [65957, 66137, 66301, 66467, 66643, 66821, 67003, 67187, 67369, 67547, 67723, 67901, 68071, 68239, 68399, 68581]
theorem segment7Check : trialChainCheck 322 65777 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 65777 68581 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [68749, 68927, 69109, 69263, 69439, 69623, 69779, 69959, 70141, 70321, 70501, 70667, 70849, 71023, 71191, 71363]
theorem segment8Check : trialChainCheck 322 68581 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 68581 71363 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [71537, 71719, 71899, 72077, 72253, 72431, 72613, 72797, 72977, 73141, 73309, 73483, 73651, 73823, 73999, 74177]
theorem segment9Check : trialChainCheck 322 71363 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 71363 74177 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [74357, 74531, 74713, 74897, 75079, 75253, 75437, 75619, 75797, 75979, 76163, 76343, 76519, 76697, 76873, 77047]
theorem segment10Check : trialChainCheck 322 74177 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 74177 77047 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [77213, 77383, 77563, 77747, 77929, 78101, 78283, 78467, 78649, 78823, 78989, 79159, 79337, 79493, 79669, 79847]
theorem segment11Check : trialChainCheck 322 77047 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 77047 79847 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [80021, 80191, 80369, 80537, 80713, 80897, 81077, 81239, 81421, 81569, 81749, 81931, 82241, 82421, 82601, 82781]
theorem segment12Check : trialChainCheck 322 79847 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 79847 82781 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [82963, 83137, 83311, 83477, 83653, 83833, 84017, 84199, 84377, 84559, 84737, 84919, 85103, 85259, 85439, 85621]
theorem segment13Check : trialChainCheck 322 82781 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 82781 85621 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [85933, 86117, 86297, 86477, 86629, 86813, 86993, 87151, 87323, 87491, 87671, 87853, 88037, 88211, 88379, 88547]
theorem segment14Check : trialChainCheck 322 85621 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 85621 88547 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [88729, 88903, 89087, 89269, 89449, 89633, 89809, 89989, 90173, 90353, 90533, 90709, 90887, 91199, 91381, 91541]
theorem segment15Check : trialChainCheck 322 88547 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 88547 91541 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 45779 51511 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 51511 57173 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 57173 62939 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 62939 68581 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 68581 74177 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 74177 79847 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 79847 85621 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 85621 91541 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 45779 57173 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 57173 68581 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 68581 79847 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 79847 91541 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 45779 68581 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 68581 91541 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 45779 91541 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 45779 91541 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block001

#print axioms B699MiddleIndex.PrimeBlocks.Block001.joined
