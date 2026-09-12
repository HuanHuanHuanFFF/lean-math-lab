import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk128
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨9612, 9612, .largeDivisor 6215753816976249559060371985609⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨9613, 9614, .topPrime 9613⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9613) (hi := 9614) (p := 9613)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨9632, 9635, .topPrime 9631⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9632) (hi := 9635) (p := 9631)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨9639, 9641, .topPrime 9631⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9639) (hi := 9641) (p := 9631)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨9642, 9642, .largeDivisor 275799002498255960530810527426487⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨9653, 9659, .topPrime 9649⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9653) (hi := 9659) (p := 9649)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨9660, 9660, .largeDivisor 115824851016204506148611817898967⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨9666, 9671, .topPrime 9661⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9666) (hi := 9671) (p := 9661)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨9672, 9672, .largeDivisor 2996611538628243802023258542377817⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨9673, 9673, .largeDivisor 6000046245736079962113636903419711⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨9674, 9674, .largeDivisor 1287187816145182009879081993251481⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨9675, 9675, .largeDivisor 366550172809555141886096196753733⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨9676, 9676, .largeDivisor 458709191943256020808311795109819⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨9696, 9699, .topPrime 9689⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9696) (hi := 9699) (p := 9689)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨9700, 9707, .topPrime 9697⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9700) (hi := 9707) (p := 9697)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨9708, 9708, .largeDivisor 4281156293495304626006879053020463⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk128

#print axioms B699LowIndex.I11TerminalData.Chunk128.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk128.witnesses_check
