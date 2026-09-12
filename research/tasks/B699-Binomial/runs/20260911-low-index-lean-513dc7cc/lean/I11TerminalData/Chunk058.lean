import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk058
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4073, 4083, .topPrime 4073⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4073) (hi := 4083) (p := 4073)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨4084, 4089, .topPrime 4079⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4084) (hi := 4089) (p := 4079)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨4090, 4090, .largeDivisor 78821780045392684406617639063⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4096, 4103, .topPrime 4093⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4096) (hi := 4103) (p := 4093)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨4104, 4109, .topPrime 4099⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4104) (hi := 4109) (p := 4099)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨4110, 4110, .largeDivisor 22179261991381109020921485997⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4112, 4121, .topPrime 4111⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4112) (hi := 4121) (p := 4111)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨4122, 4122, .largeDivisor 20449082995144986545305837037⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨4123, 4123, .largeDivisor 46865797214554074222510264649⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨4124, 4124, .largeDivisor 105730058923862692611396242567⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨4125, 4125, .largeDivisor 565401384619586591504792741⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨4126, 4126, .largeDivisor 1417281964119328236056363821⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4127, 4137, .topPrime 4127⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4127) (hi := 4137) (p := 4127)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨4138, 4138, .topPrime 4133⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4138) (hi := 4138) (p := 4133)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨4144, 4149, .topPrime 4139⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4144) (hi := 4149) (p := 4139)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨4150, 4150, .largeDivisor 86365495763562576921632400713⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk058

#print axioms B699LowIndex.I11TerminalData.Chunk058.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk058.witnesses_check
