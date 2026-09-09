import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block008

def segment0Nodes : List Nat := [369211, 369361, 369539, 369709, 369893, 370067, 370247, 370427, 370609, 370793, 370949, 371131, 371311, 371491, 371669, 371851]
theorem segment0Check : trialChainCheck 322 369029 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 369029 371851 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [372023, 372179, 372353, 372523, 372707, 372881, 373063, 373231, 373393, 373567, 373721, 373903, 374083, 374399, 374557, 374741]
theorem segment1Check : trialChainCheck 322 371851 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 371851 374741 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [374909, 375091, 375259, 375443, 375623, 375799, 375983, 376153, 376307, 376483, 376657, 376841, 377021, 377197, 377371, 377543]
theorem segment2Check : trialChainCheck 322 374741 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 374741 377543 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [377717, 377887, 378071, 378253, 378407, 378583, 378761, 378941, 379123, 379307, 379459, 379633, 379817, 379999, 380179, 380363]
theorem segment3Check : trialChainCheck 322 377543 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 377543 380363 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [380533, 380713, 380881, 381061, 381239, 381419, 381569, 381749, 381917, 382087, 382271, 382429, 382601, 382777, 382961, 383143]
theorem segment4Check : trialChainCheck 322 380363 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 380363 383143 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [383321, 383489, 383659, 383839, 384017, 384193, 384367, 384547, 384719, 384889, 385069, 385249, 385433, 385607, 385783, 385967]
theorem segment5Check : trialChainCheck 322 383143 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 383143 385967 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [386149, 386333, 386501, 386677, 386851, 387031, 387203, 387371, 387551, 387727, 387911, 388081, 388403, 388573, 388757, 388937]
theorem segment6Check : trialChainCheck 322 385967 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 385967 388937 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [389117, 389299, 389483, 389663, 389839, 390161, 390343, 390527, 390707, 390889, 391073, 391249, 391403, 391579, 391757, 391939]
theorem segment7Check : trialChainCheck 322 388937 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 388937 391939 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [392113, 392297, 392477, 392647, 392831, 393013, 393191, 393373, 393557, 393739, 393919, 394099, 394271, 394453, 394637, 394819]
theorem segment8Check : trialChainCheck 322 391939 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 391939 394819 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [394993, 395173, 395491, 395671, 395851, 396031, 396203, 396379, 396563, 396733, 396887, 397063, 397379, 397549, 397729, 397907]
theorem segment9Check : trialChainCheck 322 394819 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 394819 397907 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [398087, 398267, 398441, 398621, 398941, 399107, 399283, 399439, 399617, 399793, 399953, 400123, 400307, 400481, 400657, 400837]
theorem segment10Check : trialChainCheck 322 397907 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 397907 400837 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [401017, 401201, 401381, 401551, 401711, 401887, 402071, 402253, 402419, 402601, 402769, 402949, 403133, 403309, 403483, 403661]
theorem segment11Check : trialChainCheck 322 400837 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 400837 403661 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [403831, 404011, 404191, 404357, 404539, 404851, 405029, 405211, 405373, 405553, 405731, 405901, 406073, 406253, 406423, 406739]
theorem segment12Check : trialChainCheck 322 403661 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 403661 406739 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [406907, 407083, 407263, 407437, 407621, 407801, 407977, 408137, 408311, 408491, 408659, 408841, 409021, 409187, 409369, 409543]
theorem segment13Check : trialChainCheck 322 406739 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 406739 409543 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [409723, 409901, 410063, 410243, 410413, 410587, 410759, 410929, 411113, 411287, 411469, 411641, 411823, 412007, 412189, 412493]
theorem segment14Check : trialChainCheck 322 409543 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 409543 412493 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [412667, 412849, 413033, 413353, 413537, 413719, 413887, 414061, 414241, 414413, 414577, 414737, 414913, 415097, 415273, 415447]
theorem segment15Check : trialChainCheck 322 412493 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 412493 415447 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 369029 374741 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 374741 380363 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 380363 385967 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 385967 391939 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 391939 397907 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 397907 403661 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 403661 409543 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 409543 415447 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 369029 380363 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 380363 391939 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 391939 403661 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 403661 415447 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 369029 391939 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 391939 415447 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 369029 415447 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 369029 415447 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block008

#print axioms B699MiddleIndex.PrimeBlocks.Block008.joined
