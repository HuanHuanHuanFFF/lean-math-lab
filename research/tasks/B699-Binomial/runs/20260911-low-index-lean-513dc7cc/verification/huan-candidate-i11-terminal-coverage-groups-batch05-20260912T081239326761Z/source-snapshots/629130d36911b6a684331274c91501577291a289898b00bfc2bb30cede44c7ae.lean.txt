import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk188
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨21376, 21376, .largeDivisor 369423934460506946531840744053621541⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨21377, 21386, .topPrime 21377⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21377) (hi := 21386) (p := 21377)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨21465, 21465, .largeDivisor 70150380949312693359759528184548359⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨21466, 21466, .largeDivisor 1228261074598651122072265931492263519⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨21467, 21472, .topPrime 21467⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21467) (hi := 21472) (p := 21467)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨21504, 21513, .topPrime 21503⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21504) (hi := 21513) (p := 21503)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨21514, 21514, .largeDivisor 75866378633149022979106067167812613⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨21568, 21570, .topPrime 21563⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21568) (hi := 21570) (p := 21563)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨21627, 21627, .topPrime 21617⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21627) (hi := 21627) (p := 21617)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨21628, 21628, .largeDivisor 498096383804204557258469031899345519⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨21629, 21629, .largeDivisor 8970296990259067750993694163989129251⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨21630, 21630, .largeDivisor 42737434201243534777387968864928087⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨21631, 21631, .largeDivisor 855183570034319057141238810839277937⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨21632, 21632, .largeDivisor 20053562277757724525720738036886079⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨21633, 21633, .largeDivisor 13375842899353524332159119598925679⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨21634, 21634, .largeDivisor 46839265989740068857547813759009087⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk188

#print axioms B699LowIndex.I11TerminalData.Chunk188.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk188.witnesses_check
