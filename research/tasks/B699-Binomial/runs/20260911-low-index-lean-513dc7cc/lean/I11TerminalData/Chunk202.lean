import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk202
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨27459, 27466, .topPrime 27457⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 27459) (hi := 27466) (p := 27457)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨27625, 27627, .topPrime 27617⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 27625) (hi := 27627) (p := 27617)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨27628, 27628, .largeDivisor 66291792778570970387273997245539578317⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨27629, 27629, .largeDivisor 56844168172283210975140227488191335133⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨27630, 27630, .largeDivisor 631853420793328714630075304640817549⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨27631, 27631, .topPrime 27631⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 27631) (hi := 27631) (p := 27631)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨27712, 27712, .largeDivisor 3966626421167429838826019115002503747⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨27783, 27789, .topPrime 27779⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 27783) (hi := 27789) (p := 27779)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨27790, 27790, .largeDivisor 1030554071628987814791251895427370027⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨27791, 27793, .topPrime 27791⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 27791) (hi := 27793) (p := 27791)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨28032, 28036, .topPrime 28031⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 28032) (hi := 28036) (p := 28031)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨28126, 28133, .topPrime 28123⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 28126) (hi := 28133) (p := 28123)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨28134, 28134, .largeDivisor 2359845612450843210986240750801753⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨28135, 28135, .largeDivisor 1888614885686373879706951600734101⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨28352, 28360, .topPrime 28351⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 28352) (hi := 28360) (p := 28351)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨28674, 28679, .topPrime 28669⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 28674) (hi := 28679) (p := 28669)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk202

#print axioms B699LowIndex.I11TerminalData.Chunk202.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk202.witnesses_check
