import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk078
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5542, 5542, .largeDivisor 3727371921964811190782165335297⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨5543, 5543, .largeDivisor 44817402523754768829730027014211⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨5544, 5544, .largeDivisor 89100203824562164671431465237⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨5545, 5545, .largeDivisor 35710923759103520282116911799⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨5546, 5546, .largeDivisor 2415277843512050286397809668747⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨5552, 5552, .largeDivisor 6843768386885368955284203408629⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨5553, 5553, .largeDivisor 1523856042839506548325641827183⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨5554, 5554, .largeDivisor 763440056100542970359066814737⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨5555, 5555, .largeDivisor 77107445666154840006265748288437⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨5556, 5556, .largeDivisor 32191837099575916071146114930159⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨5557, 5560, .topPrime 5557⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5557) (hi := 5560) (p := 5557)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨5562, 5562, .topPrime 5557⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5562) (hi := 5562) (p := 5557)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨5568, 5572, .topPrime 5563⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5568) (hi := 5572) (p := 5563)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨5575, 5578, .topPrime 5573⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5575) (hi := 5578) (p := 5573)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨5584, 5591, .topPrime 5581⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5584) (hi := 5591) (p := 5581)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨5592, 5596, .topPrime 5591⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5592) (hi := 5596) (p := 5591)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk078

#print axioms B699LowIndex.I11TerminalData.Chunk078.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk078.witnesses_check
