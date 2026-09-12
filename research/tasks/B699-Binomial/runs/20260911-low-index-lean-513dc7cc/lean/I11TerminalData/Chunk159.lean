import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk159
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨12938, 12938, .largeDivisor 2254285346848520742185250995267653⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨12939, 12939, .largeDivisor 96264680207501682782623639035538489⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨12940, 12940, .largeDivisor 33721303786818402144210879510554089⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨12941, 12943, .topPrime 12941⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12941) (hi := 12943) (p := 12941)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨12960, 12969, .topPrime 12959⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12960) (hi := 12969) (p := 12959)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨12970, 12970, .topPrime 12967⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12970) (hi := 12970) (p := 12967)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨12987, 12993, .topPrime 12983⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12987) (hi := 12993) (p := 12983)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨12994, 12994, .largeDivisor 1576008159863989740994532094116293⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨12995, 12995, .largeDivisor 7571248072988002471062456400384927⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨12996, 12996, .largeDivisor 51570199138654130038746165293187899⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨12997, 12997, .largeDivisor 103227765009254231959584769800641171⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨13000, 13000, .largeDivisor 266117834639034376450023569825581⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨13001, 13002, .topPrime 13001⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13001) (hi := 13002) (p := 13001)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨13024, 13024, .largeDivisor 52806124531248224012175734424258371⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨13034, 13034, .topPrime 13033⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13034) (hi := 13034) (p := 13033)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨13041, 13044, .topPrime 13037⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13041) (hi := 13044) (p := 13037)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk159

#print axioms B699LowIndex.I11TerminalData.Chunk159.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk159.witnesses_check
