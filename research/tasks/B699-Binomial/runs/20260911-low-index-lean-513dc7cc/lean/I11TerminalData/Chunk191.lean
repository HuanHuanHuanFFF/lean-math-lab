import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk191
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨22593, 22593, .largeDivisor 29115920964265055607936094907839261117⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨22594, 22594, .largeDivisor 14565051549098983005041582791208437003⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨22595, 22595, .largeDivisor 69946299628457283953010534148215650177⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨22596, 22596, .largeDivisor 4165498029677885628372776994879346889⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨22597, 22597, .largeDivisor 8335053482390080717642755844619552081⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨22598, 22598, .largeDivisor 12508669052666426089606255583524547611⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨22599, 22599, .largeDivisor 68668096446371384589657149475697003⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨22600, 22600, .largeDivisor 16831876135444612708527674383413799⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨22601, 22601, .largeDivisor 1515606504132205943527625373464283949⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨22602, 22602, .largeDivisor 252724080433182231387214589077064213⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨22687, 22689, .topPrime 22679⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22687) (hi := 22689) (p := 22679)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨22690, 22690, .largeDivisor 32297564454728018241878532771973691⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨22785, 22793, .topPrime 22783⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22785) (hi := 22793) (p := 22783)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨22794, 22794, .topPrime 22787⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22794) (hi := 22794) (p := 22787)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨22842, 22842, .largeDivisor 115864787834009576848793259680507273⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨22843, 22843, .largeDivisor 1854729746665929056732294625705555457⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk191

#print axioms B699LowIndex.I11TerminalData.Chunk191.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk191.witnesses_check
