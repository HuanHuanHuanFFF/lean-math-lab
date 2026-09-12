import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk062
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4320, 4320, .largeDivisor 1142751954634097147128981127⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨4321, 4321, .largeDivisor 11456684909452282535369669257⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4322, 4322, .largeDivisor 51686630666652155655394269863⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4323, 4323, .largeDivisor 6770948617331432390856649352053⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨4324, 4324, .largeDivisor 1697054360151931002670076037461⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨4325, 4325, .largeDivisor 408331577616528600086123997887⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4326, 4326, .largeDivisor 48734823284475603486524648647⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4327, 4337, .topPrime 4327⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4327) (hi := 4337) (p := 4327)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨4338, 4346, .topPrime 4337⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4338) (hi := 4346) (p := 4337)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨4350, 4359, .topPrime 4349⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4350) (hi := 4359) (p := 4349)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨4360, 4367, .topPrime 4357⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4360) (hi := 4367) (p := 4357)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨4368, 4373, .topPrime 4363⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4368) (hi := 4373) (p := 4363)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨4374, 4383, .topPrime 4373⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4374) (hi := 4383) (p := 4373)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨4384, 4384, .largeDivisor 4644731558161595201665663⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨4385, 4385, .largeDivisor 4073429576507718991860786451⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨4386, 4386, .largeDivisor 2977677020427142583050234895681⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk062

#print axioms B699LowIndex.I11TerminalData.Chunk062.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk062.witnesses_check
