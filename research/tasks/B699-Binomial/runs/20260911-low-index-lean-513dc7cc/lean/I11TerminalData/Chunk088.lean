import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk088
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6241, 6241, .largeDivisor 32160818462307709372960959733549⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨6242, 6242, .largeDivisor 48326391151113317743385245704577⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨6243, 6243, .largeDivisor 129097843370303997720134398345603⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨6244, 6244, .largeDivisor 4618774117050824882334344750693⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨6245, 6245, .largeDivisor 5552308827908065715144943785963⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨6246, 6246, .largeDivisor 1545029000227825824503043699863⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨6247, 6247, .topPrime 6247⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6247) (hi := 6247) (p := 6247)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨6250, 6250, .topPrime 6247⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6250) (hi := 6250) (p := 6247)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨6256, 6257, .topPrime 6247⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6256) (hi := 6257) (p := 6247)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨6258, 6260, .topPrime 6257⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6258) (hi := 6260) (p := 6257)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨6264, 6266, .topPrime 6263⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6264) (hi := 6266) (p := 6263)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨6272, 6281, .topPrime 6271⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6272) (hi := 6281) (p := 6271)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨6282, 6282, .topPrime 6277⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6282) (hi := 6282) (p := 6277)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨6291, 6297, .topPrime 6287⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6291) (hi := 6297) (p := 6287)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨6298, 6298, .largeDivisor 106639042252353914892760380978197⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨6300, 6301, .topPrime 6299⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6300) (hi := 6301) (p := 6299)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk088

#print axioms B699LowIndex.I11TerminalData.Chunk088.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk088.witnesses_check
