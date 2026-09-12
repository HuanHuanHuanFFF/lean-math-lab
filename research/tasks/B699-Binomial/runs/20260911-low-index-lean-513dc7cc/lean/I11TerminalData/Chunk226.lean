import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk226
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨54194, 54199, .topPrime 54193⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 54194) (hi := 54199) (p := 54193)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨54537, 54537, .largeDivisor 2412040612658955163826339177629649935721⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨54538, 54538, .largeDivisor 1206263602739872876967015295812770262387⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨54880, 54885, .topPrime 54877⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 54880) (hi := 54885) (p := 54877)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨54918, 54922, .topPrime 54917⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 54918) (hi := 54922) (p := 54917)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨55168, 55171, .topPrime 55163⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 55168) (hi := 55171) (p := 55163)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨56133, 56135, .topPrime 56131⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 56133) (hi := 56135) (p := 56131)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨56252, 56259, .topPrime 56249⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 56252) (hi := 56259) (p := 56249)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨56260, 56260, .largeDivisor 1449038965882578130303771268338152607⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨56376, 56379, .topPrime 56369⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 56376) (hi := 56379) (p := 56369)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨56380, 56385, .topPrime 56377⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 56380) (hi := 56385) (p := 56377)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨56625, 56625, .largeDivisor 847090343421350709521643852489855201943⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨56626, 56626, .largeDivisor 2118137321671703845154667702512167299533⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨56627, 56627, .largeDivisor 355916208054313274894876462878802663711143⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨56628, 56628, .largeDivisor 9888482174425257103160546763487231573867⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨56629, 56629, .topPrime 56629⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 56629) (hi := 56629) (p := 56629)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk226

#print axioms B699LowIndex.I11TerminalData.Chunk226.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk226.witnesses_check
