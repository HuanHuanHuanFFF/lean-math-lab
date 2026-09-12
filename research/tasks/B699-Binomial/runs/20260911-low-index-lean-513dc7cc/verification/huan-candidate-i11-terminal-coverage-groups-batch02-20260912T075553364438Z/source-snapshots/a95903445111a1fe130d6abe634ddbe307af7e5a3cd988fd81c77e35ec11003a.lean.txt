import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk135
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10243, 10251, .topPrime 10243⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10243) (hi := 10251) (p := 10243)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨10260, 10260, .topPrime 10259⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10260) (hi := 10260) (p := 10259)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨10275, 10282, .topPrime 10273⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10275) (hi := 10282) (p := 10273)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨10290, 10297, .topPrime 10289⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10290) (hi := 10297) (p := 10289)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨10300, 10300, .largeDivisor 33521121665610529139531623668257⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨10304, 10310, .topPrime 10303⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10304) (hi := 10310) (p := 10303)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨10314, 10314, .topPrime 10313⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10314) (hi := 10314) (p := 10313)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨10339, 10347, .topPrime 10337⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10339) (hi := 10347) (p := 10337)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨10348, 10351, .topPrime 10343⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10348) (hi := 10351) (p := 10343)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨10368, 10368, .largeDivisor 51096542094692603643341713012949⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨10369, 10378, .topPrime 10369⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10369) (hi := 10378) (p := 10369)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨10395, 10398, .topPrime 10391⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10395) (hi := 10398) (p := 10391)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨10400, 10409, .topPrime 10399⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10400) (hi := 10409) (p := 10399)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨10410, 10410, .largeDivisor 230779755889028058022291767225583⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨10425, 10425, .largeDivisor 312621199751263979498446344335623⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨10426, 10426, .largeDivisor 782378451417829632801440611148153⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk135

#print axioms B699LowIndex.I11TerminalData.Chunk135.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk135.witnesses_check
