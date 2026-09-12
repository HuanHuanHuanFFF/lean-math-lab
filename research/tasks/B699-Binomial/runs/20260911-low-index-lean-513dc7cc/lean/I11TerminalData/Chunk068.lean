import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk068
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4752, 4761, .topPrime 4751⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4752) (hi := 4761) (p := 4751)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨4762, 4762, .topPrime 4759⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4762) (hi := 4762) (p := 4759)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨4775, 4775, .largeDivisor 1040991927138279283581005554937⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4776, 4776, .largeDivisor 217373970094981718187429281671⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨4777, 4777, .largeDivisor 435751345003662470743327603249⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨4778, 4778, .largeDivisor 4585946974509910319849381692343⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4779, 4779, .largeDivisor 1815911889235467844772573958713⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4780, 4780, .largeDivisor 91005020240569682302504754903⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨4781, 4781, .largeDivisor 1172762808005831943634165049033⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨4782, 4782, .largeDivisor 195911120934950337261880013431⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨4783, 4789, .topPrime 4783⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4783) (hi := 4789) (p := 4783)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨4800, 4809, .topPrime 4799⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4800) (hi := 4809) (p := 4799)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨4810, 4811, .topPrime 4801⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4810) (hi := 4811) (p := 4801)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨4812, 4812, .largeDivisor 9178335547059336068152085747⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨4816, 4816, .topPrime 4813⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4816) (hi := 4816) (p := 4813)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨4825, 4826, .topPrime 4817⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4825) (hi := 4826) (p := 4817)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk068

#print axioms B699LowIndex.I11TerminalData.Chunk068.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk068.witnesses_check
