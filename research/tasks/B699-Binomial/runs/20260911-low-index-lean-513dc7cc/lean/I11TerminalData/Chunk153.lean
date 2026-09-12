import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk153
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨12131, 12131, .largeDivisor 9943013467935614922319894390654109⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨12132, 12132, .largeDivisor 276445469738000348883904332121973⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨12133, 12133, .largeDivisor 553392655392040625805710486988269⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨12134, 12134, .largeDivisor 7477579599696014424862462192779127⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨12135, 12135, .largeDivisor 13970812693196479606729173011451071⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨12150, 12159, .topPrime 12149⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12150) (hi := 12159) (p := 12149)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨12160, 12162, .topPrime 12157⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12160) (hi := 12162) (p := 12157)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨12177, 12177, .largeDivisor 20155879151941917033635746952159813⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨12178, 12178, .largeDivisor 10087050888154379289702314719462571⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨12179, 12179, .largeDivisor 726924217555220031770914147741625161⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨12180, 12180, .largeDivisor 1732336454030847310490304074657501⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨12181, 12181, .largeDivisor 17339022470459943376402953108794593⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨12182, 12182, .largeDivisor 26032039898341512227180277886533859⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨12183, 12183, .largeDivisor 34740753870248071362004307754588893⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨12184, 12184, .largeDivisor 30425628605168379921985371311235701⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨12185, 12185, .largeDivisor 36543744165005097028032700781410253⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk153

#print axioms B699LowIndex.I11TerminalData.Chunk153.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk153.witnesses_check
