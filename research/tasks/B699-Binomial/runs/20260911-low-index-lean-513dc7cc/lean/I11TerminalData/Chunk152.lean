import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk152
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨12033, 12033, .largeDivisor 473643091515715023438043156916501⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨12034, 12034, .largeDivisor 237038216888468543294244836992979⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨12035, 12035, .largeDivisor 3416472982338585531193097740371859⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨12042, 12042, .topPrime 12041⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12042) (hi := 12042) (p := 12041)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨12050, 12052, .topPrime 12049⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12050) (hi := 12052) (p := 12049)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨12054, 12059, .topPrime 12049⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12054) (hi := 12059) (p := 12049)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨12060, 12060, .largeDivisor 3107011995630738960938721719595671⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨12064, 12064, .largeDivisor 4176390040273668413351228744402381⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨12069, 12069, .largeDivisor 4350865778066226741624104580716237⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨12070, 12070, .largeDivisor 435483455852552921232299048754001⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨12071, 12079, .topPrime 12071⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12071) (hi := 12079) (p := 12071)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨12096, 12096, .largeDivisor 1672194433036925738367377044357211⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨12097, 12107, .topPrime 12097⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12097) (hi := 12107) (p := 12097)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨12108, 12110, .topPrime 12107⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12108) (hi := 12110) (p := 12107)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨12125, 12129, .topPrime 12119⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12125) (hi := 12129) (p := 12119)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨12130, 12130, .largeDivisor 579483185378821181277731871584573⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk152

#print axioms B699LowIndex.I11TerminalData.Chunk152.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk152.witnesses_check
