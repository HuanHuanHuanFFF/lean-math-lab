import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block012

def segment0Nodes : List Nat := [554711, 554893, 555077, 555257, 555439, 555593, 555767, 555941, 556123, 556289, 556459, 556639, 556823, 556999, 557159, 557339]
theorem segment0Check : trialChainCheck 322 554531 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 554531 557339 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [557521, 557693, 557863, 558029, 558343, 558521, 558703, 558881, 559051, 559231, 559397, 559577, 559747, 559913, 560093, 560411]
theorem segment1Check : trialChainCheck 322 557339 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 557339 560411 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [560561, 560737, 560897, 561079, 561251, 561419, 561599, 561767, 561947, 562129, 562313, 562493, 562673, 562841, 563021, 563197]
theorem segment2Check : trialChainCheck 322 560411 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 560411 563197 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [563377, 563561, 563743, 564061, 564233, 564409, 564593, 564761, 564937, 565111, 565289, 565469, 565651, 565813, 565997, 566179]
theorem segment3Check : trialChainCheck 322 563197 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 563197 566179 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [566347, 566521, 566701, 566879, 567059, 567209, 567389, 567569, 567751, 568069, 568391, 568549, 568723, 568907, 569083, 569267]
theorem segment4Check : trialChainCheck 322 566179 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 566179 569267 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [569447, 569623, 569797, 569957, 570253, 570421, 570601, 570781, 570961, 571133, 571303, 571477, 571657, 571841, 572023, 572207]
theorem segment5Check : trialChainCheck 322 569267 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 569267 572207 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [572387, 572567, 572749, 572933, 573109, 573289, 573473, 573647, 573829, 574003, 574183, 574367, 574547, 574727, 574907, 575087]
theorem segment6Check : trialChainCheck 322 572207 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 572207 575087 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [575261, 575441, 575623, 575791, 575963, 576131, 576313, 576493, 576791, 576967, 577151, 577333, 577517, 577667, 577849, 578029]
theorem segment7Check : trialChainCheck 322 575087 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 575087 578029 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [578213, 578371, 578537, 578719, 578881, 579199, 579379, 579563, 579737, 579907, 580081, 580259, 580577, 580759, 580939, 581101]
theorem segment8Check : trialChainCheck 322 578029 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 578029 581101 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [581263, 581447, 581617, 581797, 581981, 582161, 582319, 582499, 582677, 582859, 583031, 583213, 583397, 583577, 583753, 583937]
theorem segment9Check : trialChainCheck 322 581101 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 581101 583937 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [584099, 584281, 584447, 584627, 584809, 584993, 585163, 585341, 585517, 585691, 585863, 586037, 586213, 586387, 586571, 586741]
theorem segment10Check : trialChainCheck 322 583937 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 583937 586741 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [586921, 587101, 587281, 587459, 587633, 587813, 587989, 588173, 588347, 588529, 588703, 588881, 589063, 589243, 589409, 589591]
theorem segment11Check : trialChainCheck 322 586741 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 586741 589591 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [589763, 589933, 590099, 590279, 590437, 590609, 590929, 591113, 591289, 591469, 591653, 591973, 592157, 592337, 592517, 592693]
theorem segment12Check : trialChainCheck 322 589591 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 589591 592693 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [592877, 593059, 593233, 593407, 593587, 593767, 593951, 594119, 594299, 594469, 594653, 594829, 595003, 595183, 595363, 595547]
theorem segment13Check : trialChainCheck 322 592693 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 592693 595547 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [595717, 595877, 596059, 596243, 596423, 596599, 596779, 596963, 597137, 597307, 597473, 597643, 597827, 598007, 598189, 598369]
theorem segment14Check : trialChainCheck 322 595547 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 595547 598369 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [598541, 598721, 598903, 599087, 599251, 599429, 599611, 599783, 599959, 600109, 600293, 600469, 600641, 600823, 600983, 601147]
theorem segment15Check : trialChainCheck 322 598369 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 598369 601147 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 554531 560411 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 560411 566179 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 566179 572207 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 572207 578029 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 578029 583937 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 583937 589591 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 589591 595547 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 595547 601147 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 554531 566179 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 566179 578029 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 578029 589591 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 589591 601147 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 554531 578029 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 578029 601147 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 554531 601147 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 554531 601147 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block012

#print axioms B699MiddleIndex.PrimeBlocks.Block012.joined
