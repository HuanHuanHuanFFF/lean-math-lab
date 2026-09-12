import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk245
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨177153, 177153, .largeDivisor 893491771652970245185685376469901619712217⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨177154, 177154, .largeDivisor 446773627282507044635195596730181129196463⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨177155, 177155, .largeDivisor 2144646577461930239597563363737575882476613⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨177156, 177156, .largeDivisor 42555153799309519276216857509597105348191⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨177157, 177157, .largeDivisor 85115592580405727551474488002299734593719⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨177674, 177674, .largeDivisor 113477666767741394316232645585874163568850897⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨181250, 181253, .topPrime 181243⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 181250) (hi := 181253) (p := 181243)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨181254, 181258, .topPrime 181253⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 181254) (hi := 181258) (p := 181253)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨186880, 186885, .topPrime 186877⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 186880) (hi := 186885) (p := 186877)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨196101, 196101, .largeDivisor 18067446750089698005047468775204528736599601⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨196102, 196102, .largeDivisor 63239610941100381219180714699517340061840127⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨196103, 196103, .largeDivisor 2276753703760346623503762749168248382255743423⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨196104, 196104, .largeDivisor 94870059173074981058218526023130644803290681⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨196105, 196105, .largeDivisor 5421450340619693808777406767240211356113269⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨196106, 196106, .largeDivisor 40663158437143948369314699437635159802721209⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨196882, 196885, .topPrime 196879⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 196882) (hi := 196885) (p := 196879)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk245

#print axioms B699LowIndex.I11TerminalData.Chunk245.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk245.witnesses_check
