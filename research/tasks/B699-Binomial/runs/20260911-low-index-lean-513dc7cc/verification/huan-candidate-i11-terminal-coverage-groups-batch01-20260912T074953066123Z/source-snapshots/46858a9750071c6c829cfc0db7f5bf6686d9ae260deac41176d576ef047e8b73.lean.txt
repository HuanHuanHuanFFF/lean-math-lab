import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk093
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6631, 6631, .largeDivisor 12894074945638980471686278434841⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨6632, 6632, .largeDivisor 4843311341157550888549127694827⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨6633, 6633, .largeDivisor 7546554880408276965878873384963⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨6634, 6634, .largeDivisor 3779544396544504710225007250177⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨6642, 6647, .topPrime 6637⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6642) (hi := 6647) (p := 6637)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨6648, 6648, .largeDivisor 64471350965097753123144276905729⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨6649, 6649, .largeDivisor 129156376187687544596500842767759⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨6650, 6650, .largeDivisor 1108888905361980726314286494617⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨6651, 6651, .largeDivisor 9873119289909683816219972524361⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6652, 6652, .largeDivisor 2472368224532420446675773875623⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨6656, 6660, .topPrime 6653⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6656) (hi := 6660) (p := 6653)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨6664, 6666, .topPrime 6661⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6664) (hi := 6666) (p := 6661)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨6669, 6671, .topPrime 6661⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6669) (hi := 6671) (p := 6661)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨6672, 6672, .largeDivisor 4106957217874267630061920859257⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨6673, 6682, .topPrime 6673⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6673) (hi := 6682) (p := 6673)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨6696, 6698, .topPrime 6691⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6696) (hi := 6698) (p := 6691)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk093

#print axioms B699LowIndex.I11TerminalData.Chunk093.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk093.witnesses_check
