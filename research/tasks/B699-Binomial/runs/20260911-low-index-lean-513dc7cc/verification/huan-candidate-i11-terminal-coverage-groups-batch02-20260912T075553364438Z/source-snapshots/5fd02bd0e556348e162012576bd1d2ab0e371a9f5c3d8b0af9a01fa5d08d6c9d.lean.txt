import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk132
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10020, 10020, .largeDivisor 505328738080532747818533790259449⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨10021, 10021, .largeDivisor 35411883107028102558668021763566003⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨10022, 10022, .largeDivisor 53176190065723051220103523241603009⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨10023, 10023, .largeDivisor 70979485021806118308576057191448523⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨10024, 10024, .largeDivisor 1268883233686537019598033979553509⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨10025, 10025, .largeDivisor 304866492934871986134698397723761⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨10026, 10026, .largeDivisor 84778151055778180867212684738959⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨10027, 10027, .largeDivisor 2715880257623922746183838945295661⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨10045, 10049, .topPrime 10039⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10045) (hi := 10049) (p := 10039)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨10050, 10050, .largeDivisor 8703854257612370451576823814687⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨10051, 10051, .largeDivisor 348535614116581415971309387097287⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨10052, 10052, .largeDivisor 37384011194458538492291625326539⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨10053, 10053, .largeDivisor 8316658136668031765761749749003⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨10054, 10054, .largeDivisor 4162883645626824224483154036467⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨10055, 10055, .largeDivisor 270050290688888500497923315075327⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨10056, 10056, .largeDivisor 2759782238991323944112923634550293⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk132

#print axioms B699LowIndex.I11TerminalData.Chunk132.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk132.witnesses_check
