import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk114
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8232, 8241, .topPrime 8231⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8232) (hi := 8241) (p := 8231)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨8242, 8242, .topPrime 8237⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8242) (hi := 8242) (p := 8237)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨8256, 8256, .largeDivisor 8996573077118599123995772006247⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨8257, 8257, .largeDivisor 126120040573460565308714922675011⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨8258, 8258, .largeDivisor 189432392698369834179586728164831⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨8259, 8259, .largeDivisor 505826747913299857901457092762153⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨8260, 8260, .largeDivisor 3617866180977656881583945747723⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨8262, 8262, .largeDivisor 5598024182831383518019904903791⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨8263, 8266, .topPrime 8263⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8263) (hi := 8266) (p := 8263)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨8281, 8283, .topPrime 8273⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8281) (hi := 8283) (p := 8273)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨8284, 8284, .largeDivisor 106721841779182613898035866528199⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨8285, 8285, .largeDivisor 897655288467541072228657009326019⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨8288, 8297, .topPrime 8287⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8288) (hi := 8297) (p := 8287)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨8298, 8298, .topPrime 8297⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8298) (hi := 8298) (p := 8297)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨8320, 8327, .topPrime 8317⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8320) (hi := 8327) (p := 8317)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨8328, 8328, .largeDivisor 173229379358071196556506264431537⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk114

#print axioms B699LowIndex.I11TerminalData.Chunk114.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk114.witnesses_check
