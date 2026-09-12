import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk130
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨9829, 9835, .topPrime 9829⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9829) (hi := 9835) (p := 9829)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨9850, 9850, .largeDivisor 35878942545085046099913964541317⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨9851, 9861, .topPrime 9851⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9851) (hi := 9861) (p := 9851)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨9862, 9865, .topPrime 9859⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9862) (hi := 9865) (p := 9859)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨9882, 9882, .largeDivisor 67479929217034046833354707901909⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨9883, 9885, .topPrime 9883⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9883) (hi := 9885) (p := 9883)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨9888, 9892, .topPrime 9887⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9888) (hi := 9892) (p := 9887)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨9898, 9898, .largeDivisor 473134726191309540281205893681057⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨9900, 9900, .largeDivisor 50580047459072898033885084198719⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨9901, 9910, .topPrime 9901⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9901) (hi := 9910) (p := 9901)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨9925, 9930, .topPrime 9923⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9925) (hi := 9930) (p := 9923)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨9950, 9959, .topPrime 9949⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9950) (hi := 9959) (p := 9949)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨9960, 9960, .largeDivisor 993314344592230907699276099307863⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨9984, 9984, .largeDivisor 91069305912459871224360754483693⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨9985, 9985, .largeDivisor 36467897314454053105082900883083⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨9990, 9990, .largeDivisor 20371876068625451539671873803549⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk130

#print axioms B699LowIndex.I11TerminalData.Chunk130.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk130.witnesses_check
