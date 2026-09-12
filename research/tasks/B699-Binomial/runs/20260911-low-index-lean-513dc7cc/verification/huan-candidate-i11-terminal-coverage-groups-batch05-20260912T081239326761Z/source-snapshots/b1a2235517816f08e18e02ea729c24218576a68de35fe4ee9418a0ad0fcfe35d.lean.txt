import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk197
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨24451, 24453, .topPrime 24443⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24451) (hi := 24453) (p := 24443)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨24454, 24454, .largeDivisor 331228562774203860161464160565836441⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨24455, 24455, .largeDivisor 16701431964212691546904342364201093123⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨24456, 24456, .largeDivisor 3481030716206326996583253194747579033⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨24457, 24457, .largeDivisor 6965194160701803105247207999995217247⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨24458, 24458, .largeDivisor 1493213179377353052505445131426143641⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨24500, 24509, .topPrime 24499⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24500) (hi := 24509) (p := 24499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨24510, 24510, .topPrime 24509⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24510) (hi := 24510) (p := 24509)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨24625, 24633, .topPrime 24623⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24625) (hi := 24633) (p := 24623)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨24634, 24634, .topPrime 24631⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24634) (hi := 24634) (p := 24631)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨24704, 24707, .topPrime 24697⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24704) (hi := 24707) (p := 24697)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨24708, 24708, .largeDivisor 6061459147116036992148607373419590589⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨24709, 24714, .topPrime 24709⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24709) (hi := 24714) (p := 24709)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨24875, 24875, .largeDivisor 50133192193353366493794640175310079001⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨24876, 24876, .largeDivisor 6966023689042263472192257462525490567⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨24877, 24877, .topPrime 24877⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24877) (hi := 24877) (p := 24877)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk197

#print axioms B699LowIndex.I11TerminalData.Chunk197.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk197.witnesses_check
