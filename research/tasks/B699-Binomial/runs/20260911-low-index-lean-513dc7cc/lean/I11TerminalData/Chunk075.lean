import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk075
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5295, 5295, .largeDivisor 1031447736114453300801583749077⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨5296, 5296, .largeDivisor 2260988083800556573280292853937⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨5297, 5306, .topPrime 5297⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5297) (hi := 5306) (p := 5297)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨5319, 5319, .topPrime 5309⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5319) (hi := 5319) (p := 5309)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨5320, 5320, .largeDivisor 39606604474498910801877034357⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨5321, 5321, .largeDivisor 3571978684895062786047249149383⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨5322, 5322, .largeDivisor 596562811806047955417795141311⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨5325, 5333, .topPrime 5323⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5325) (hi := 5333) (p := 5323)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨5334, 5335, .topPrime 5333⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5334) (hi := 5335) (p := 5333)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨5344, 5344, .largeDivisor 535100381206019183069665867483⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨5345, 5345, .largeDivisor 4504112657553027611822620569601⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5346, 5346, .largeDivisor 46434151108794099090954851233⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5347, 5356, .topPrime 5347⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5347) (hi := 5356) (p := 5347)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨5360, 5360, .topPrime 5351⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5360) (hi := 5360) (p := 5351)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨5375, 5375, .largeDivisor 7153677023867234697470562680921⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨5376, 5376, .largeDivisor 6666986974713173063812267177⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk075

#print axioms B699LowIndex.I11TerminalData.Chunk075.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk075.witnesses_check
