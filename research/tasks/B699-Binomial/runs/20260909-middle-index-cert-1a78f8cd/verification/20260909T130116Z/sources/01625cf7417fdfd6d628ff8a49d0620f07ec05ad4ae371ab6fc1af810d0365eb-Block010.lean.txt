import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block010

def segment0Nodes : List Nat := [462073, 462239, 462421, 462589, 462773, 462953, 463103, 463283, 463459, 463643, 463823, 464003, 464173, 464351, 464521, 464699]
theorem segment0Check : trialChainCheck 322 461891 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 461891 464699 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [464879, 465061, 465383, 465551, 465721, 465901, 466079, 466261, 466441, 466619, 466801, 466957, 467141, 467317, 467497, 467681]
theorem segment1Check : trialChainCheck 322 464699 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 464699 467681 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [467833, 468011, 468191, 468371, 468551, 468719, 468899, 469069, 469253, 469429, 469613, 469793, 469969, 470153, 470333, 470513]
theorem segment2Check : trialChainCheck 322 467681 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 467681 470513 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [470689, 470867, 471041, 471217, 471391, 471571, 471749, 471931, 472111, 472289, 472469, 472643, 472817, 472993, 473173, 473353]
theorem segment3Check : trialChainCheck 322 470513 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 470513 473353 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [473659, 473839, 474017, 474197, 474379, 474557, 474737, 474917, 475093, 475273, 475457, 475639, 475823, 475997, 476167, 476351]
theorem segment4Check : trialChainCheck 322 473353 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 473353 476351 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [476519, 476701, 476869, 477047, 477229, 477409, 477593, 477769, 477947, 478129, 478273, 478453, 478637, 478813, 478991, 479153]
theorem segment5Check : trialChainCheck 322 476351 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 476351 479153 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [479327, 479639, 479821, 480143, 480317, 480499, 480661, 480839, 481021, 481199, 481379, 481549, 481721, 481883, 482051, 482233]
theorem segment6Check : trialChainCheck 322 479153 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 479153 482233 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [482413, 482597, 482773, 482957, 483139, 483323, 483503, 483671, 483853, 484037, 484207, 484373, 484543, 484727, 485041, 485209]
theorem segment7Check : trialChainCheck 322 482233 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 482233 485209 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [485389, 485567, 485731, 485909, 486091, 486407, 486589, 486769, 486949, 487133, 487313, 487489, 487657, 487831, 488011, 488171]
theorem segment8Check : trialChainCheck 322 485209 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 485209 488171 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [488353, 488513, 488689, 488861, 489043, 489217, 489389, 489571, 489743, 489913, 490097, 490277, 490459, 490643, 490783, 490967]
theorem segment9Check : trialChainCheck 322 488171 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 488171 490967 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [491149, 491333, 491503, 491677, 491857, 492113, 492293, 492467, 492647, 492799, 492979, 493159, 493481, 493657, 493817, 493993]
theorem segment10Check : trialChainCheck 322 490967 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 490967 493993 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [494167, 494341, 494521, 494699, 494873, 495043, 495221, 495401, 495571, 495751, 495931, 496079, 496259, 496439, 496609, 496789]
theorem segment11Check : trialChainCheck 322 493993 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 493993 496789 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [496963, 497141, 497323, 497507, 497689, 497873, 498053, 498227, 498409, 498583, 498767, 498947, 499129, 499309, 499493, 499673]
theorem segment12Check : trialChainCheck 322 496789 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 496789 499673 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [499853, 500029, 500209, 500393, 500567, 500741, 500923, 501103, 501287, 501463, 501637, 501821, 502001, 502181, 502339, 502517]
theorem segment13Check : trialChainCheck 322 499673 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 499673 502517 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [502699, 502883, 503053, 503233, 503413, 503593, 503777, 503959, 504143, 504323, 504479, 504661, 504821, 504991, 505159, 505339]
theorem segment14Check : trialChainCheck 322 502517 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 502517 505339 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [505523, 505693, 505877, 506047, 506213, 506393, 506573, 506743, 506911, 507217, 507401, 507571, 507743, 507919, 508103, 508273]
theorem segment15Check : trialChainCheck 322 505339 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 505339 508273 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 461891 467681 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 467681 473353 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 473353 479153 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 479153 485209 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 485209 490967 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 490967 496789 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 496789 502517 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 502517 508273 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 461891 473353 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 473353 485209 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 485209 496789 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 496789 508273 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 461891 485209 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 485209 508273 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 461891 508273 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 461891 508273 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block010

#print axioms B699MiddleIndex.PrimeBlocks.Block010.joined
