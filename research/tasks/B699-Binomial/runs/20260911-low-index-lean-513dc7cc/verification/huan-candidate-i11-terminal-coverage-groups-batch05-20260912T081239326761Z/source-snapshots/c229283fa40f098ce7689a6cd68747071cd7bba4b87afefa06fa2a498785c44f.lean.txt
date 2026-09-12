import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk199
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨25731, 25731, .largeDivisor 773195527144944639497230278099168749⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨25732, 25732, .largeDivisor 27625935595280281625829268907629411⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨25733, 25735, .topPrime 25733⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 25733) (hi := 25735) (p := 25733)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨25758, 25758, .largeDivisor 3406779918877205140742602006335184427⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨25759, 25760, .topPrime 25759⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 25759) (hi := 25760) (p := 25759)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨25920, 25929, .topPrime 25919⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 25920) (hi := 25929) (p := 25919)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨25930, 25930, .largeDivisor 14026508542040483327677279587660319⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨26001, 26009, .topPrime 25999⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26001) (hi := 26009) (p := 25999)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨26010, 26010, .topPrime 26003⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26010) (hi := 26010) (p := 26003)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨26244, 26247, .topPrime 26237⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26244) (hi := 26247) (p := 26237)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨26248, 26248, .largeDivisor 363859551106144185118241070732340633⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨26249, 26254, .topPrime 26249⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26249) (hi := 26254) (p := 26249)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨26375, 26378, .topPrime 26371⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26375) (hi := 26378) (p := 26371)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨26411, 26416, .topPrime 26407⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26411) (hi := 26416) (p := 26407)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨26496, 26497, .topPrime 26489⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26496) (hi := 26497) (p := 26489)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨26500, 26506, .topPrime 26497⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26500) (hi := 26506) (p := 26497)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk199

#print axioms B699LowIndex.I11TerminalData.Chunk199.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk199.witnesses_check
