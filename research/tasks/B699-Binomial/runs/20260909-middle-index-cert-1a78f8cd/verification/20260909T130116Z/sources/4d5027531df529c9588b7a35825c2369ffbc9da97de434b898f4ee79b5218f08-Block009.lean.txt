import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block009

def segment0Nodes : List Nat := [415631, 415801, 415979, 416159, 416333, 416513, 416693, 416873, 417037, 417217, 417383, 417559, 417737, 417899, 418079, 418259]
theorem segment0Check : trialChainCheck 322 415447 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 415447 418259 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [418427, 418603, 418787, 418961, 419141, 419317, 419491, 419651, 419831, 420001, 420163, 420341, 420521, 420691, 420859, 421037]
theorem segment1Check : trialChainCheck 322 418259 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 418259 421037 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [421207, 421381, 421559, 421741, 421913, 422089, 422267, 422581, 422761, 422927, 423109, 423289, 423469, 423649, 423823, 424007]
theorem segment2Check : trialChainCheck 322 421037 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 421037 424007 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [424187, 424351, 424519, 424693, 424867, 425039, 425207, 425387, 425563, 425879, 426061, 426233, 426407, 426583, 426763, 426941]
theorem segment3Check : trialChainCheck 322 424007 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 424007 426941 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [427117, 427283, 427457, 427621, 427789, 427969, 428149, 428303, 428473, 428657, 428833, 429017, 429197, 429367, 429551, 429733]
theorem segment4Check : trialChainCheck 322 426941 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 426941 429733 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [429917, 430093, 430277, 430453, 430603, 430783, 430957, 431141, 431311, 431479, 431663, 431833, 432007, 432167, 432349, 432661]
theorem segment5Check : trialChainCheck 322 429733 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 429733 432661 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [432833, 433003, 433187, 433369, 433549, 433729, 434039, 434221, 434389, 434573, 434743, 434927, 435109, 435287, 435451, 435623]
theorem segment6Check : trialChainCheck 322 432661 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 432661 435623 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [435779, 435949, 436127, 436309, 436483, 436651, 436831, 437011, 437191, 437363, 437543, 437719, 437881, 438049, 438233, 438409]
theorem segment7Check : trialChainCheck 322 435623 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 435623 438409 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [438589, 438769, 438953, 439133, 439303, 439471, 439639, 439823, 439991, 440171, 440347, 440527, 440711, 440893, 441073, 441257]
theorem segment8Check : trialChainCheck 322 438409 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 438409 441257 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [441421, 441587, 441751, 441923, 442097, 442271, 442447, 442619, 442789, 442973, 443293, 443467, 443629, 443791, 443953, 444131]
theorem segment9Check : trialChainCheck 322 441257 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 441257 444131 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [444307, 444487, 444671, 444841, 445021, 445199, 445363, 445541, 445703, 445883, 446053, 446231, 446401, 446569, 446753, 446933]
theorem segment10Check : trialChainCheck 322 444131 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 444131 446933 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [447107, 447263, 447443, 447617, 447793, 447961, 448141, 448451, 448633, 448807, 448969, 449153, 449473, 449653, 449833, 450011]
theorem segment11Check : trialChainCheck 322 446933 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 446933 450011 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [450193, 450377, 450557, 450727, 450899, 451069, 451249, 451411, 451579, 451753, 451937, 452087, 452269, 452453, 452633, 452813]
theorem segment12Check : trialChainCheck 322 450011 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 450011 452813 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [452989, 453161, 453461, 453643, 453823, 453991, 454159, 454331, 454513, 454679, 454859, 455033, 455201, 455381, 455557, 455737]
theorem segment13Check : trialChainCheck 322 452813 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 452813 455737 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [455921, 456241, 456409, 456587, 456769, 456949, 457117, 457279, 457459, 457643, 457817, 458123, 458407, 458573, 458747, 458929]
theorem segment14Check : trialChainCheck 322 455737 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 455737 458929 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [459113, 459293, 459469, 459649, 459829, 460013, 460189, 460373, 460543, 460721, 460903, 461059, 461239, 461413, 461717, 461891]
theorem segment15Check : trialChainCheck 322 458929 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 458929 461891 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 415447 421037 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 421037 426941 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 426941 432661 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 432661 438409 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 438409 444131 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 444131 450011 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 450011 455737 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 455737 461891 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 415447 426941 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 426941 438409 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 438409 450011 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 450011 461891 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 415447 438409 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 438409 461891 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 415447 461891 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 415447 461891 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block009

#print axioms B699MiddleIndex.PrimeBlocks.Block009.joined
