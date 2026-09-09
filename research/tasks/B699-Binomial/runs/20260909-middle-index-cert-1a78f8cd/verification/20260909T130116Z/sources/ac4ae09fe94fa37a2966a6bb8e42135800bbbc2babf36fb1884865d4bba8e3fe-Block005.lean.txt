import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block005

def segment0Nodes : List Nat := [230369, 230551, 230729, 230891, 231067, 231241, 231419, 231599, 231779, 231961, 232129, 232307, 232487, 232669, 232853, 233021]
theorem segment0Check : trialChainCheck 322 230189 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 230189 233021 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [233201, 233371, 233551, 233713, 233881, 234043, 234217, 234383, 234547, 234727, 234907, 235091, 235273, 235447, 235621, 235793]
theorem segment1Check : trialChainCheck 322 233021 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 233021 235793 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [235967, 236143, 236323, 236507, 236813, 236993, 237173, 237343, 237509, 237691, 237859, 238039, 238223, 238397, 238573, 238747]
theorem segment2Check : trialChainCheck 322 235793 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 235793 238747 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [238921, 239087, 239263, 239441, 239623, 239807, 239977, 240151, 240319, 240503, 240677, 240859, 241037, 241207, 241391, 241567]
theorem segment3Check : trialChainCheck 322 238747 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 238747 241567 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [241739, 241921, 242101, 242279, 242453, 242633, 242813, 242989, 243167, 243343, 243527, 243709, 243889, 244043, 244219, 244403]
theorem segment4Check : trialChainCheck 322 241567 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 241567 244403 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [244583, 244759, 244943, 245107, 245291, 245473, 245653, 245821, 245989, 246173, 246349, 246527, 246709, 246889, 247073, 247249]
theorem segment5Check : trialChainCheck 322 244403 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 244403 247249 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [247433, 247613, 247781, 247957, 248141, 248323, 248483, 248657, 248839, 249017, 249199, 249383, 249563, 249737, 249911, 250091]
theorem segment6Check : trialChainCheck 322 247249 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 247249 250091 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [250267, 250451, 250619, 250799, 250979, 251159, 251323, 251501, 251677, 251861, 252037, 252209, 252391, 252559, 252737, 252919]
theorem segment7Check : trialChainCheck 322 250091 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 250091 252919 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [253103, 253273, 253447, 253613, 253789, 253969, 254147, 254329, 254491, 254663, 254833, 255007, 255191, 255371, 255551, 255733]
theorem segment8Check : trialChainCheck 322 252919 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 252919 255733 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [255917, 256219, 256393, 256577, 256757, 256939, 257123, 257297, 257473, 257657, 257837, 258019, 258197, 258373, 258551, 258733]
theorem segment9Check : trialChainCheck 322 255733 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 255733 258733 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [258917, 259099, 259277, 259459, 259643, 259823, 260003, 260179, 260363, 260543, 260723, 260893, 261077, 261251, 261433, 261601]
theorem segment10Check : trialChainCheck 322 258733 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 258733 261601 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [261917, 262079, 262261, 262433, 262597, 262781, 262957, 263129, 263443, 263621, 263803, 263983, 264167, 264349, 264529, 264697]
theorem segment11Check : trialChainCheck 322 261601 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 261601 264697 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [264881, 265037, 265207, 265381, 265561, 265739, 265921, 266099, 266281, 266449, 266633, 266801, 266983, 267167, 267341, 267523]
theorem segment12Check : trialChainCheck 322 264697 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 264697 267523 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [267679, 267863, 268043, 268343, 268519, 268693, 268861, 269041, 269221, 269393, 269573, 269749, 269923, 270097, 270271, 270451]
theorem segment13Check : trialChainCheck 322 267523 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 267523 270451 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [270631, 270799, 270973, 271289, 271471, 271651, 271829, 272011, 272191, 272369, 272549, 272719, 272903, 273083, 273253, 273433]
theorem segment14Check : trialChainCheck 322 270451 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 270451 273433 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [273617, 273797, 273979, 274163, 274333, 274517, 274697, 274871, 275053, 275227, 275399, 275581, 275741, 275923, 276091, 276257]
theorem segment15Check : trialChainCheck 322 273433 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 273433 276257 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 230189 235793 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 235793 241567 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 241567 247249 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 247249 252919 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 252919 258733 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 258733 264697 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 264697 270451 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 270451 276257 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 230189 241567 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 241567 252919 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 252919 264697 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 264697 276257 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 230189 252919 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 252919 276257 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 230189 276257 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 230189 276257 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block005

#print axioms B699MiddleIndex.PrimeBlocks.Block005.joined
