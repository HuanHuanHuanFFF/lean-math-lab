import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk176
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨17250, 17250, .largeDivisor 1709078698606894330586309299173127⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨17251, 17251, .largeDivisor 68406767122198454981309563155535067⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨17252, 17252, .largeDivisor 359364660898954855462104928002220151⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨17253, 17253, .largeDivisor 2959620800814962850923262949560101⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨17254, 17254, .largeDivisor 1480754430704093517074464389366989⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨17255, 17255, .largeDivisor 1524033265839494997740523891352663⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨17256, 17256, .largeDivisor 317709457274165527218160822813153⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨17257, 17260, .topPrime 17257⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 17257) (hi := 17260) (p := 17257)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨17344, 17344, .topPrime 17341⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 17344) (hi := 17344) (p := 17341)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨17346, 17351, .topPrime 17341⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 17346) (hi := 17351) (p := 17341)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨17352, 17354, .topPrime 17351⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 17352) (hi := 17354) (p := 17351)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨17415, 17415, .largeDivisor 21526116808691304476539303136756791⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨17416, 17416, .largeDivisor 1923189407498706030509544175676921⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨17417, 17418, .topPrime 17417⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 17417) (hi := 17418) (p := 17417)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨17496, 17501, .topPrime 17491⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 17496) (hi := 17501) (p := 17491)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨17502, 17506, .topPrime 17497⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 17502) (hi := 17506) (p := 17497)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk176

#print axioms B699LowIndex.I11TerminalData.Chunk176.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk176.witnesses_check
