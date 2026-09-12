import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk117
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8487, 8487, .largeDivisor 77393602718934808507811970800441⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨8488, 8488, .largeDivisor 474650939218438334258893069475537⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨8505, 8510, .topPrime 8501⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8505) (hi := 8510) (p := 8501)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨8512, 8512, .largeDivisor 11657936351401400022254721712049⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨8513, 8515, .topPrime 8513⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8513) (hi := 8515) (p := 8513)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨8526, 8531, .topPrime 8521⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8526) (hi := 8531) (p := 8521)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨8532, 8536, .topPrime 8527⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8532) (hi := 8536) (p := 8527)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨8550, 8553, .topPrime 8543⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8550) (hi := 8553) (p := 8543)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨8554, 8554, .largeDivisor 132914745989619212214081233897773⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨8559, 8559, .largeDivisor 3329445361043211002944776555478127⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨8560, 8560, .largeDivisor 41671616988141721524750390856961⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨8575, 8583, .topPrime 8573⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8575) (hi := 8583) (p := 8573)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨8584, 8586, .topPrime 8581⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8584) (hi := 8586) (p := 8581)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨8608, 8609, .topPrime 8599⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8608) (hi := 8609) (p := 8599)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨8610, 8610, .topPrime 8609⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8610) (hi := 8610) (p := 8609)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨8613, 8618, .topPrime 8609⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8613) (hi := 8618) (p := 8609)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk117

#print axioms B699LowIndex.I11TerminalData.Chunk117.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk117.witnesses_check
