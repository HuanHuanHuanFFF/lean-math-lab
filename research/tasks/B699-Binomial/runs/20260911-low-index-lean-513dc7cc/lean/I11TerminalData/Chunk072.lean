import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk072
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5110, 5113, .topPrime 5107⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5110) (hi := 5113) (p := 5107)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨5125, 5129, .topPrime 5119⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5125) (hi := 5129) (p := 5119)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨5130, 5130, .largeDivisor 464410687647883052662773889⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨5131, 5131, .largeDivisor 340413034045898277601813260637⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨5132, 5132, .largeDivisor 767574556556920017861382097359⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨5133, 5133, .largeDivisor 512815332397067610527459886209⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨5134, 5134, .largeDivisor 256958219454084043768102582061⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨5135, 5135, .largeDivisor 4326165432448267425407235275027⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨5136, 5136, .largeDivisor 11290236616389380841916443278729⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨5137, 5137, .largeDivisor 22628929183922063747532098760371⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨5138, 5138, .largeDivisor 4859459924224340196222516234673⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5139, 5139, .largeDivisor 4328785673529014433764519141963⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5140, 5140, .largeDivisor 216903473990438040451838841779⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨5145, 5145, .largeDivisor 40268209620635855774943338831⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨5146, 5146, .largeDivisor 100886176586072109940534771969⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨5150, 5157, .topPrime 5147⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5150) (hi := 5157) (p := 5147)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk072

#print axioms B699LowIndex.I11TerminalData.Chunk072.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk072.witnesses_check
