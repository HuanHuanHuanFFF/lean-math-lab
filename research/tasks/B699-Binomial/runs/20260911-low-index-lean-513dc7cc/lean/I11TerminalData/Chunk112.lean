import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk112
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8038, 8038, .largeDivisor 31911026622194116899718200509473⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨8039, 8042, .topPrime 8039⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8039) (hi := 8042) (p := 8039)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨8046, 8046, .topPrime 8039⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8046) (hi := 8046) (p := 8039)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨8050, 8050, .largeDivisor 9083012354599256418326617892009⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨8051, 8051, .largeDivisor 1091452723386247961551456726097977⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨8052, 8052, .largeDivisor 91078818230589775177344542123087⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨8053, 8056, .topPrime 8053⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8053) (hi := 8056) (p := 8053)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨8073, 8079, .topPrime 8069⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8073) (hi := 8079) (p := 8069)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨8080, 8080, .largeDivisor 9462615987829446700839097696127⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨8081, 8083, .topPrime 8081⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8081) (hi := 8083) (p := 8081)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨8085, 8085, .topPrime 8081⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8085) (hi := 8085) (p := 8081)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨8100, 8103, .topPrime 8093⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8100) (hi := 8103) (p := 8093)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨8104, 8110, .topPrime 8101⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8104) (hi := 8110) (p := 8101)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨8127, 8133, .topPrime 8123⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8127) (hi := 8133) (p := 8123)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨8134, 8134, .largeDivisor 145463388080309765473533083233⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨8135, 8135, .largeDivisor 349584833687834547157220570783⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk112

#print axioms B699LowIndex.I11TerminalData.Chunk112.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk112.witnesses_check
