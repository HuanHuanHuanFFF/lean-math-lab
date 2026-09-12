import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk131
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨9991, 9991, .largeDivisor 407886600804883539745213809962441⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨9992, 9992, .largeDivisor 459378146443011308513771008695301⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨9993, 9993, .largeDivisor 2146127076860688174837827812011287⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨9994, 9994, .largeDivisor 1074245918368512351964802722289933⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨9996, 9996, .largeDivisor 1406190017484578993752932895943099⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨9997, 9997, .largeDivisor 2815477990144870058191081546313471⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨9998, 9998, .largeDivisor 4227868570962512893030104130375801⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨9999, 9999, .largeDivisor 1881122139503144503066257784880863⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨10000, 10000, .largeDivisor 1318235556764642258630874411269⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨10001, 10001, .largeDivisor 356315508194680735907226351002737⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨10002, 10002, .largeDivisor 59451301387301850341041570125269⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨10003, 10003, .largeDivisor 68019143060411804753681668301849⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨10004, 10004, .largeDivisor 51070512396904810474019169145279⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨10005, 10005, .largeDivisor 6816896491642086969415806647969⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨10006, 10006, .largeDivisor 17060997072378869988988134397093⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨10017, 10019, .topPrime 10009⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10017) (hi := 10019) (p := 10009)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk131

#print axioms B699LowIndex.I11TerminalData.Chunk131.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk131.witnesses_check
