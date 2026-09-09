import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block015

def segment0Nodes : List Nat := [693503, 693683, 693859, 694039, 694223, 694391, 694571, 694747, 694919, 695099, 695281, 695447, 695627, 695939, 696119, 696281]
theorem segment0Check : trialChainCheck 322 693337 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 693337 696281 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [696457, 696629, 696811, 696991, 697157, 697327, 697511, 697693, 697877, 698183, 698359, 698543, 698723, 698903, 699077, 699253]
theorem segment1Check : trialChainCheck 322 696281 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 696281 699253 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [699437, 699617, 699793, 699967, 700129, 700307, 700471, 700643, 700811, 700993, 701177, 701359, 701531, 701711, 702017, 702199]
theorem segment2Check : trialChainCheck 322 699253 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 699253 702199 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [702379, 702557, 702733, 702913, 703081, 703249, 703561, 703733, 703907, 704087, 704269, 704453, 704617, 704801, 704983, 705167]
theorem segment3Check : trialChainCheck 322 702199 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 702199 705167 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [705317, 705499, 705643, 705827, 706009, 706193, 706373, 706547, 706729, 706913, 707071, 707249, 707431, 707753, 707933, 708109]
theorem segment4Check : trialChainCheck 322 705167 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 705167 708109 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [708293, 708473, 708647, 708823, 708997, 709157, 709337, 709519, 709703, 709879, 710053, 710221, 710399, 710713, 710887, 711049]
theorem segment5Check : trialChainCheck 322 708109 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 708109 711049 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [711223, 711397, 711577, 711757, 711937, 712121, 712303, 712483, 712651, 712819, 712981, 713159, 713329, 713509, 713681, 713863]
theorem segment6Check : trialChainCheck 322 711049 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 711049 713863 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [714037, 714199, 714377, 714557, 714739, 714919, 715087, 715259, 715441, 715621, 715801, 715973, 716143, 716321, 716501, 716671]
theorem segment7Check : trialChainCheck 322 713863 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 713863 716671 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [716827, 717011, 717191, 717511, 717683, 717851, 718007, 718187, 718357, 718541, 718723, 718901, 719071, 719239, 719419, 719599]
theorem segment8Check : trialChainCheck 322 716671 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 716671 719599 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [719779, 719959, 720133, 720311, 720491, 720661, 720829, 721013, 721181, 721363, 721547, 721709, 721891, 722069, 722243, 722417]
theorem segment9Check : trialChainCheck 322 719599 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 719599 722417 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [722599, 722783, 722963, 723133, 723293, 723473, 723623, 723803, 723977, 724153, 724331, 724651, 724813, 724993, 725161, 725341]
theorem segment10Check : trialChainCheck 322 722417 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 722417 725341 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [725519, 725687, 725867, 726043, 726221, 726391, 726707, 727021, 727201, 727369, 727541, 727717, 727891, 728209, 728383, 728561]
theorem segment11Check : trialChainCheck 322 725341 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 725341 728561 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [728743, 728927, 729073, 729257, 729413, 729587, 729761, 729943, 730111, 730283, 730459, 730637, 730819, 730999, 731183, 731363]
theorem segment12Check : trialChainCheck 322 728561 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 728561 731363 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [731539, 731719, 731893, 732077, 732257, 732439, 732617, 732799, 732971, 733147, 733331, 733511, 733687, 733871, 734047, 734221]
theorem segment13Check : trialChainCheck 322 731363 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 731363 734221 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [734401, 734567, 734743, 734911, 735083, 735263, 735443, 735617, 735781, 735953, 736121, 736279, 736447, 736607, 736787, 736961]
theorem segment14Check : trialChainCheck 322 734221 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 734221 736961 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [737131, 737309, 737483, 737663, 737843, 738011, 738173, 738349, 738523, 738707, 738889, 739069, 739253, 739433, 739603, 739787]
theorem segment15Check : trialChainCheck 322 736961 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 736961 739787 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 693337 699253 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 699253 705167 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 705167 711049 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 711049 716671 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 716671 722417 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 722417 728561 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 728561 734221 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 734221 739787 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 693337 705167 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 705167 716671 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 716671 728561 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 728561 739787 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 693337 716671 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 716671 739787 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 693337 739787 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 693337 739787 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block015

#print axioms B699MiddleIndex.PrimeBlocks.Block015.joined
