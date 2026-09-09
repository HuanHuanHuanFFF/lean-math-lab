import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block006

def segment0Nodes : List Nat := [276439, 276623, 276781, 277099, 277279, 277429, 277603, 277787, 277961, 278143, 278321, 278503, 278687, 278867, 279047, 279221]
theorem segment0Check : trialChainCheck 322 276257 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 276257 279221 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [279397, 279577, 279761, 279941, 280121, 280303, 280487, 280639, 280817, 280997, 281167, 281339, 281509, 281683, 281867, 282167]
theorem segment1Check : trialChainCheck 322 279221 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 279221 282167 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [282349, 282493, 282677, 282851, 283027, 283211, 283369, 283553, 283873, 284057, 284237, 284413, 284593, 284777, 284957, 285139]
theorem segment2Check : trialChainCheck 322 282167 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 282167 285139 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [285317, 285497, 285673, 285841, 286019, 286199, 286381, 286553, 286873, 287057, 287239, 287557, 287731, 287887, 288061, 288241]
theorem segment3Check : trialChainCheck 322 285139 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 285139 288241 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [288413, 288583, 288767, 288947, 289129, 289309, 289489, 289669, 289853, 290033, 290209, 290393, 290557, 290737, 290897, 291077]
theorem segment4Check : trialChainCheck 322 288241 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 288241 291077 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [291257, 291439, 291619, 291791, 291971, 292147, 292319, 292493, 292673, 292849, 293021, 293201, 293507, 293681, 293863, 294043]
theorem segment5Check : trialChainCheck 322 291077 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 291077 294043 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [294227, 294403, 294563, 294731, 294911, 295081, 295259, 295441, 295601, 295777, 295961, 296137, 296299, 296479, 296663, 296843]
theorem segment6Check : trialChainCheck 322 294043 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 294043 296843 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [297023, 297191, 297371, 297533, 297707, 297889, 298063, 298247, 298427, 298607, 298777, 298943, 299113, 299287, 299471, 299653]
theorem segment7Check : trialChainCheck 322 296843 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 296843 299653 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [299807, 299983, 300163, 300347, 300511, 300691, 300869, 301051, 301219, 301403, 301583, 301759, 301943, 302123, 302299, 302483]
theorem segment8Check : trialChainCheck 322 299653 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 299653 302483 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [302663, 302843, 303019, 303187, 303371, 303553, 303731, 303907, 304091, 304259, 304439, 304609, 304789, 304961, 305143, 305297]
theorem segment9Check : trialChainCheck 322 302483 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 302483 305297 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [305479, 305663, 305839, 306023, 306193, 306377, 306541, 306707, 306883, 307067, 307243, 307423, 307589, 307759, 307939, 308117]
theorem segment10Check : trialChainCheck 322 305297 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 305297 308117 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [308293, 308467, 308641, 308813, 308989, 309173, 309493, 309677, 309857, 310027, 310187, 310363, 310547, 310729, 311041, 311203]
theorem segment11Check : trialChainCheck 322 308117 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 308117 311203 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [311371, 311551, 311713, 311897, 312073, 312253, 312427, 312601, 312779, 312943, 313127, 313307, 313477, 313661, 313829, 314003]
theorem segment12Check : trialChainCheck 322 311203 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 311203 314003 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [314173, 314357, 314527, 314711, 314879, 315059, 315223, 315407, 315589, 315907, 316087, 316271, 316453, 316637, 316819, 317003]
theorem segment13Check : trialChainCheck 322 314003 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 314003 317003 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [317179, 317363, 317539, 317717, 318023, 318203, 318377, 318559, 318743, 318919, 319097, 319279, 319453, 319763, 319937, 320119]
theorem segment14Check : trialChainCheck 322 317003 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 317003 320119 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [320303, 320483, 320659, 320843, 321017, 321199, 321383, 321553, 321733, 321911, 322093, 322271, 322433, 322613, 322783, 322963]
theorem segment15Check : trialChainCheck 322 320119 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 320119 322963 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 276257 282167 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 282167 288241 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 288241 294043 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 294043 299653 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 299653 305297 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 305297 311203 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 311203 317003 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 317003 322963 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 276257 288241 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 288241 299653 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 299653 311203 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 311203 322963 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 276257 299653 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 299653 322963 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 276257 322963 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 276257 322963 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block006

#print axioms B699MiddleIndex.PrimeBlocks.Block006.joined
