import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk174
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨16775, 16775, .largeDivisor 3258853485346843745163198354474503⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨16776, 16776, .largeDivisor 1585204304980823784181681036727681⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨16777, 16777, .largeDivisor 3172488682412415677826084069328439⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨16856, 16856, .largeDivisor 22090120551731845725458570014913057⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨16857, 16857, .largeDivisor 4912121072467499352224136487941607⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨16858, 16858, .largeDivisor 2457664184711138602712485692221749⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨16905, 16906, .topPrime 16903⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16905) (hi := 16906) (p := 16903)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨16960, 16960, .largeDivisor 8272930997919177040630091742807029⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨16961, 16961, .largeDivisor 177392139893435097074749666308154259⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨16962, 16962, .largeDivisor 29584542474116041497865453758076343⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨16963, 16964, .topPrime 16963⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16963) (hi := 16964) (p := 16963)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨17003, 17003, .topPrime 16993⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 17003) (hi := 17003) (p := 16993)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨17004, 17004, .largeDivisor 58369231772545744810272329698036181⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨17005, 17005, .largeDivisor 23362805373476294939359326033072973⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨17006, 17006, .largeDivisor 175334451977642485321599602170537943⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨17007, 17007, .largeDivisor 1637514016904868614972237470683327181⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk174

#print axioms B699LowIndex.I11TerminalData.Chunk174.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk174.witnesses_check
