import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block007

def segment0Nodes : List Nat := [323273, 323443, 323623, 323803, 323987, 324161, 324341, 324523, 324707, 324889, 325063, 325231, 325411, 325571, 325753, 325921]
theorem segment0Check : trialChainCheck 322 322963 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 322963 325921 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [326101, 326257, 326441, 326617, 326779, 326951, 327133, 327317, 327499, 327673, 327853, 328037, 328213, 328397, 328579, 328753]
theorem segment1Check : trialChainCheck 322 325921 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 325921 328753 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [328931, 329111, 329293, 329473, 329657, 329977, 330149, 330331, 330509, 330689, 330859, 331043, 331217, 331399, 331579, 331753]
theorem segment2Check : trialChainCheck 322 328753 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 328753 331753 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [331937, 332117, 332287, 332471, 332641, 332803, 332987, 333161, 333341, 333517, 333701, 333871, 334049, 334231, 334403, 334561]
theorem segment3Check : trialChainCheck 322 331753 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 331753 334561 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [334727, 334897, 335081, 335261, 335429, 335609, 335771, 335953, 336263, 336437, 336613, 336793, 336977, 337153, 337327, 337511]
theorem segment4Check : trialChainCheck 322 334561 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 334561 337511 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [337691, 337873, 338033, 338213, 338389, 338573, 338753, 338927, 339107, 339289, 339467, 339649, 339827, 340007, 340183, 340339]
theorem segment5Check : trialChainCheck 322 337511 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 337511 340339 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [340519, 340693, 340877, 341059, 341357, 341521, 341701, 341879, 342061, 342241, 342421, 342599, 342761, 342929, 343087, 343267]
theorem segment6Check : trialChainCheck 322 340339 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 340339 343267 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [343433, 343601, 343771, 343951, 344117, 344293, 344453, 344629, 344807, 344987, 345143, 345311, 345487, 345659, 345823, 345997]
theorem segment7Check : trialChainCheck 322 343267 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 343267 345997 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [346169, 346349, 346529, 346711, 346891, 347071, 347251, 347411, 347591, 347773, 347957, 348269, 348451, 348629, 348811, 348991]
theorem segment8Check : trialChainCheck 322 345997 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 345997 348991 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [349171, 349343, 349519, 349697, 349871, 350039, 350219, 350381, 350563, 350747, 350899, 351079, 351259, 351437, 351599, 351779]
theorem segment9Check : trialChainCheck 322 348991 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 348991 351779 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [351959, 352133, 352309, 352493, 352661, 352841, 353021, 353203, 353359, 353531, 353711, 353891, 354073, 354257, 354439, 354619]
theorem segment10Check : trialChainCheck 322 351779 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 351779 354619 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [354799, 354983, 355139, 355321, 355501, 355679, 355853, 356023, 356197, 356351, 356533, 356701, 356869, 357047, 357229, 357389]
theorem segment11Check : trialChainCheck 322 354619 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 354619 357389 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [357571, 357739, 357913, 358079, 358243, 358427, 358607, 358783, 358951, 359129, 359311, 359483, 359663, 359837, 360007, 360187]
theorem segment12Check : trialChainCheck 322 357389 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 357389 360187 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [360337, 360653, 360827, 361003, 361183, 361363, 361541, 361723, 361903, 362081, 362237, 362419, 362599, 362759, 362941, 363119]
theorem segment13Check : trialChainCheck 322 360187 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 360187 363119 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [363439, 363619, 363799, 363977, 364141, 364321, 364499, 364669, 364853, 365021, 365201, 365377, 365699, 365851, 366031, 366211]
theorem segment14Check : trialChainCheck 322 363119 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 363119 366211 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [366383, 366547, 366727, 366907, 367069, 367243, 367427, 367603, 367781, 367957, 368141, 368323, 368507, 368689, 368873, 369029]
theorem segment15Check : trialChainCheck 322 366211 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 366211 369029 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 322963 328753 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 328753 334561 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 334561 340339 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 340339 345997 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 345997 351779 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 351779 357389 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 357389 363119 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 363119 369029 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 322963 334561 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 334561 345997 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 345997 357389 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 357389 369029 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 322963 345997 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 345997 369029 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 322963 369029 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 322963 369029 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block007

#print axioms B699MiddleIndex.PrimeBlocks.Block007.joined
