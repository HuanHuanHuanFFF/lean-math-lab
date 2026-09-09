import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block000

def segment0Nodes : List Nat := [181, 359, 541, 719, 887, 1069, 1249, 1433, 1613, 1789, 1973, 2153, 2333, 2503, 2687, 2861]
theorem segment0Check : trialChainCheck 322 2 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 2 2861 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [3041, 3221, 3391, 3571, 3739, 3923, 4099, 4283, 4463, 4643, 4817, 4999, 5179, 5351, 5531, 5711]
theorem segment1Check : trialChainCheck 322 2861 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 2861 5711 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [5881, 6053, 6229, 6397, 6581, 6763, 6947, 7129, 7309, 7489, 7673, 7853, 8017, 8191, 8369, 8543]
theorem segment2Check : trialChainCheck 322 5711 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 5711 8543 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [8719, 8893, 9067, 9241, 9421, 9601, 9781, 9949, 10133, 10313, 10487, 10667, 10847, 11027, 11197, 11369]
theorem segment3Check : trialChainCheck 322 8543 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 8543 11369 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [11551, 11731, 11909, 12073, 12253, 12437, 12619, 12799, 12983, 13163, 13339, 13523, 13697, 13879, 14057, 14221]
theorem segment4Check : trialChainCheck 322 11369 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 11369 14221 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [14401, 14563, 14747, 14929, 15107, 15289, 15473, 15649, 15823, 16007, 16189, 16369, 16553, 16729, 16903, 17077]
theorem segment5Check : trialChainCheck 322 14221 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 14221 17077 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [17257, 17431, 17609, 17791, 17971, 18149, 18329, 18503, 18679, 18859, 19037, 19219, 19403, 19583, 19763, 19937]
theorem segment6Check : trialChainCheck 322 17077 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 17077 19937 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [20117, 20297, 20479, 20663, 20983, 21163, 21347, 21529, 21713, 21893, 22073, 22247, 22409, 22573, 22751, 22921]
theorem segment7Check : trialChainCheck 322 19937 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 19937 22921 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [23099, 23279, 23459, 23633, 23813, 23993, 24169, 24337, 24517, 24697, 24877, 25057, 25237, 25411, 25589, 25771]
theorem segment8Check : trialChainCheck 322 22921 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 22921 25771 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [25951, 26119, 26297, 26479, 26647, 26821, 27143, 27299, 27481, 27653, 27827, 28001, 28183, 28351, 28517, 28697]
theorem segment9Check : trialChainCheck 322 25771 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 25771 28697 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [28879, 29063, 29243, 29423, 29599, 29761, 29927, 30109, 30293, 30469, 30649, 30829, 31013, 31193, 31357, 31541]
theorem segment10Check : trialChainCheck 322 28697 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 28697 31541 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [31723, 31907, 32089, 32261, 32443, 32621, 32803, 32987, 33161, 33343, 33521, 33703, 33871, 34039, 34217, 34381]
theorem segment11Check : trialChainCheck 322 31541 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 31541 34381 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [34549, 34729, 34913, 35089, 35267, 35449, 35617, 35801, 35983, 36161, 36343, 36527, 36709, 36887, 37061, 37243]
theorem segment12Check : trialChainCheck 322 34381 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 34381 37243 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [37423, 37607, 37783, 37967, 38149, 38333, 38501, 38677, 38861, 39043, 39227, 39409, 39581, 39761, 39937, 40111]
theorem segment13Check : trialChainCheck 322 37243 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 37243 40111 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [40289, 40471, 40639, 40823, 40993, 41177, 41357, 41539, 41719, 41903, 42083, 42257, 42437, 42611, 42793, 42967]
theorem segment14Check : trialChainCheck 322 40111 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 40111 42967 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [43151, 43331, 43499, 43669, 43853, 44029, 44207, 44389, 44563, 44741, 44917, 45083, 45263, 45439, 45613, 45779]
theorem segment15Check : trialChainCheck 322 42967 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 42967 45779 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 2 5711 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 5711 11369 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 11369 17077 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 17077 22921 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 22921 28697 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 28697 34381 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 34381 40111 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 40111 45779 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 2 11369 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 11369 22921 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 22921 34381 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 34381 45779 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 2 22921 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 22921 45779 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 2 45779 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 2 45779 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block000

#print axioms B699MiddleIndex.PrimeBlocks.Block000.joined
