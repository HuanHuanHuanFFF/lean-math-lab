import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk047
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3403, 3403, .largeDivisor 2054116235266114302582724321⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨3404, 3404, .largeDivisor 4636745135839425123336600523⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨3405, 3405, .largeDivisor 620236385289068652326109793⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨3406, 3406, .largeDivisor 10889304785023545514550154407⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3407, 3417, .topPrime 3407⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3407) (hi := 3417) (p := 3407)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨3418, 3423, .topPrime 3413⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3418) (hi := 3423) (p := 3413)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨3424, 3424, .largeDivisor 27820381059952076086999897337⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3425, 3425, .largeDivisor 6698404578582485806536003401⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨3426, 3426, .largeDivisor 5599983915623132350705794937⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨3427, 3427, .largeDivisor 314608932440007779768340315559⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3428, 3428, .largeDivisor 236716290694544922968803907317⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨3429, 3429, .largeDivisor 17590970695264602233492156951⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨3430, 3430, .largeDivisor 5145063087237380003946229⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨3431, 3431, .largeDivisor 929090076437444778607342721⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨3432, 3432, .largeDivisor 38836562680664894282622043⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨3433, 3443, .topPrime 3433⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3433) (hi := 3443) (p := 3433)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk047

#print axioms B699LowIndex.I11TerminalData.Chunk047.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk047.witnesses_check
