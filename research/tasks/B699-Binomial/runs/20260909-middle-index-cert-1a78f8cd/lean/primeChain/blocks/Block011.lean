import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block011

def segment0Nodes : List Nat := [508451, 508621, 508799, 508973, 509149, 509329, 509513, 509693, 509867, 510049, 510233, 510403, 510583, 510767, 510943, 511123]
theorem segment0Check : trialChainCheck 322 508273 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 508273 511123 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [511297, 511477, 511633, 511811, 511991, 512167, 512333, 512507, 512683, 512849, 513031, 513203, 513371, 513533, 513697, 513881]
theorem segment1Check : trialChainCheck 322 511123 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 511123 513881 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [514061, 514243, 514417, 514571, 514751, 514933, 515111, 515293, 515477, 515653, 515813, 515993, 516169, 516349, 516521, 516701]
theorem segment2Check : trialChainCheck 322 513881 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 513881 516701 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [516883, 517067, 517249, 517417, 517597, 517747, 517931, 518113, 518291, 518473, 518657, 518831, 519011, 519193, 519373, 519553]
theorem segment3Check : trialChainCheck 322 516701 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 516701 519553 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [519737, 519919, 520103, 520279, 520451, 520633, 520813, 520981, 521161, 521329, 521503, 521671, 521831, 521999, 522167, 522337]
theorem segment4Check : trialChainCheck 322 519553 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 519553 522337 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [522521, 522703, 522887, 523049, 523219, 523403, 523577, 523759, 523937, 524119, 524287, 524453, 524633, 524803, 524983, 525167]
theorem segment5Check : trialChainCheck 322 522337 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 522337 525167 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [525313, 525493, 525677, 525983, 526159, 526307, 526483, 526667, 526837, 526997, 527179, 527353, 527533, 527701, 527881, 528053]
theorem segment6Check : trialChainCheck 322 525167 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 525167 528053 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [528223, 528403, 528719, 528883, 529051, 529229, 529411, 529579, 529751, 529933, 530093, 530267, 530447, 530609, 530773, 530947]
theorem segment7Check : trialChainCheck 322 528053 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 528053 530947 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [531121, 531299, 531481, 531637, 531821, 532001, 532183, 532349, 532531, 532709, 532867, 533051, 533227, 533399, 533581, 533747]
theorem segment8Check : trialChainCheck 322 530947 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 530947 533747 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [533927, 534101, 534283, 534439, 534617, 534799, 534971, 535151, 535333, 535511, 535679, 535861, 536023, 536203, 536377, 536561]
theorem segment9Check : trialChainCheck 322 533747 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 533747 536561 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [536743, 536923, 537091, 537413, 537587, 537769, 537941, 538123, 538303, 538487, 538651, 538829, 539009, 539171, 539351, 539533]
theorem segment10Check : trialChainCheck 322 536561 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 536561 539533 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [539713, 539897, 540079, 540251, 540433, 540613, 540781, 540961, 541141, 541309, 541483, 541661, 541837, 542021, 542197, 542371]
theorem segment11Check : trialChainCheck 322 539533 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 539533 542371 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [542551, 542723, 542891, 543061, 543241, 543553, 543713, 544031, 544199, 544373, 544549, 544727, 544903, 545087, 545267, 545449]
theorem segment12Check : trialChainCheck 322 542371 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 542371 545449 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [545621, 545791, 545959, 546137, 546317, 546479, 546661, 546841, 547021, 547321, 547501, 547681, 548003, 548323, 548503, 548687]
theorem segment13Check : trialChainCheck 322 545449 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 545449 548687 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [548869, 549037, 549221, 549403, 549587, 549767, 549949, 550129, 550309, 550489, 550663, 550843, 551027, 551207, 551387, 551569]
theorem segment14Check : trialChainCheck 322 548687 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 548687 551569 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [551753, 551933, 552113, 552403, 552583, 552757, 552917, 553099, 553279, 553463, 553643, 553811, 553991, 554171, 554347, 554531]
theorem segment15Check : trialChainCheck 322 551569 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 551569 554531 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 508273 513881 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 513881 519553 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 519553 525167 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 525167 530947 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 530947 536561 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 536561 542371 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 542371 548687 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 548687 554531 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 508273 519553 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 519553 530947 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 530947 542371 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 542371 554531 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 508273 530947 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 530947 554531 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 508273 554531 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 508273 554531 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block011

#print axioms B699MiddleIndex.PrimeBlocks.Block011.joined
