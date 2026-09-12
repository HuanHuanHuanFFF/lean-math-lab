import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk221
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨47634, 47635, .topPrime 47629⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 47634) (hi := 47635) (p := 47629)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨47750, 47753, .topPrime 47743⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 47750) (hi := 47753) (p := 47743)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨47754, 47754, .largeDivisor 365561820028048244047515141977136071449⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨47872, 47879, .topPrime 47869⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 47872) (hi := 47879) (p := 47869)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨47880, 47880, .largeDivisor 199107947899228350509343060509753683⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨47881, 47882, .topPrime 47881⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 47881) (hi := 47882) (p := 47881)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨48000, 48000, .largeDivisor 232092416491334552758320953560723589813⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨48001, 48001, .largeDivisor 2321456154198905994363859989970471563787⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨48002, 48002, .largeDivisor 3482982381504528522268363044275882228071⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨48003, 48003, .largeDivisor 65030573029701237905269634855844097469503⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨48004, 48004, .largeDivisor 16261369510750412687290665053340799986071⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨48005, 48005, .largeDivisor 19518115848570410327625662604966248364329⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨48006, 48006, .largeDivisor 258235307091201386770336404920378533417⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨48007, 48007, .largeDivisor 1033177963790924658278484856322411222081⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨48008, 48008, .largeDivisor 1162591592107507758171608404798572987757⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨48009, 48009, .largeDivisor 775238686965975526231103350222574420729⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk221

#print axioms B699LowIndex.I11TerminalData.Chunk221.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk221.witnesses_check
