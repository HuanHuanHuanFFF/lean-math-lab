import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block014

def segment0Nodes : List Nat := [647839, 648019, 648199, 648383, 648563, 648731, 648911, 649093, 649277, 649457, 649639, 649813, 650107, 650291, 650449, 650627]
theorem segment0Check : trialChainCheck 322 647659 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 647659 650627 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [650779, 650953, 651127, 651293, 651473, 651649, 651821, 651997, 652153, 652331, 652507, 652667, 652849, 653033, 653209, 653363]
theorem segment1Check : trialChainCheck 322 650627 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 650627 653363 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [653539, 653713, 653893, 654067, 654233, 654413, 654593, 654767, 654943, 655121, 655301, 655471, 655651, 655807, 655987, 656171]
theorem segment2Check : trialChainCheck 322 653363 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 653363 656171 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [656347, 656527, 656707, 656891, 657071, 657233, 657413, 657589, 657911, 658079, 658261, 658433, 658613, 658783, 658963, 659137]
theorem segment3Check : trialChainCheck 322 656171 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 656171 659137 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [659317, 659501, 659671, 659849, 660029, 660199, 660379, 660563, 660733, 660917, 661099, 661267, 661439, 661621, 661777, 661961]
theorem segment4Check : trialChainCheck 322 659137 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 659137 661961 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [662143, 662327, 662491, 662671, 662843, 663007, 663191, 663371, 663547, 663713, 663893, 664067, 664243, 664427, 664603, 664777]
theorem segment5Check : trialChainCheck 322 661961 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 661961 664777 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [664949, 665131, 665311, 665479, 665659, 665843, 666023, 666203, 666353, 666529, 666707, 667021, 667181, 667363, 667547, 667727]
theorem segment6Check : trialChainCheck 322 664777 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 664777 667727 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [667903, 668069, 668243, 668417, 668599, 668761, 668939, 669121, 669301, 669481, 669661, 669839, 670001, 670177, 670349, 670517]
theorem segment7Check : trialChainCheck 322 667727 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 667727 670517 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [670693, 670877, 671059, 671233, 671417, 671591, 671753, 671933, 672107, 672289, 672473, 672653, 672827, 672983, 673157, 673339]
theorem segment8Check : trialChainCheck 322 670517 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 670517 673339 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [673513, 673669, 673837, 674017, 674189, 674371, 674551, 674731, 674903, 675083, 675263, 675419, 675601, 675781, 675959, 676129]
theorem segment9Check : trialChainCheck 322 673339 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 673339 676129 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [676297, 676469, 676649, 676829, 677011, 677177, 677357, 677539, 677717, 677891, 678061, 678229, 678413, 678593, 678773, 678949]
theorem segment10Check : trialChainCheck 322 676129 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 676129 678949 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [679127, 679309, 679487, 679669, 679843, 680027, 680209, 680387, 680569, 680749, 680929, 681113, 681293, 681451, 681631, 681809]
theorem segment11Check : trialChainCheck 322 678949 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 678949 681809 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [681983, 682153, 682337, 682519, 682819, 683003, 683159, 683341, 683513, 683693, 683873, 684053, 684221, 684379, 684559, 684731]
theorem segment12Check : trialChainCheck 322 681809 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 681809 684731 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [684889, 685073, 685249, 685429, 685613, 685793, 685973, 686149, 686333, 686513, 686687, 686863, 687041, 687223, 687403, 687581]
theorem segment13Check : trialChainCheck 322 684731 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 684731 687581 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [687749, 687931, 688111, 688277, 688453, 688637, 688813, 688979, 689141, 689321, 689641, 689807, 689987, 690163, 690341, 690511]
theorem segment14Check : trialChainCheck 322 687581 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 687581 690511 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [690689, 690871, 691051, 691231, 691409, 691591, 691763, 691931, 692099, 692281, 692459, 692641, 692821, 692983, 693167, 693337]
theorem segment15Check : trialChainCheck 322 690511 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 690511 693337 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 647659 653363 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 653363 659137 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 659137 664777 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 664777 670517 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 670517 676129 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 676129 681809 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 681809 687581 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 687581 693337 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 647659 659137 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 659137 670517 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 670517 681809 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 681809 693337 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 647659 670517 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 670517 693337 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 647659 693337 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 647659 693337 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block014

#print axioms B699MiddleIndex.PrimeBlocks.Block014.joined
