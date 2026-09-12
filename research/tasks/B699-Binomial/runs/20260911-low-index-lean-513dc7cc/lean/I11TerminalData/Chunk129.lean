import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk129
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨9709, 9709, .largeDivisor 1224574918349760263203040059092469⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨9710, 9710, .largeDivisor 367789126420543524766517753596903⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨9725, 9731, .topPrime 9721⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9725) (hi := 9731) (p := 9721)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨9732, 9732, .largeDivisor 68735775953931899159426187029129⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨9733, 9735, .topPrime 9733⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9733) (hi := 9735) (p := 9733)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨9750, 9759, .topPrime 9749⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9750) (hi := 9759) (p := 9749)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨9760, 9760, .largeDivisor 3243147610950433780248822127337⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨9761, 9761, .largeDivisor 2435104910037475702231442521918189⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨9775, 9779, .topPrime 9769⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9775) (hi := 9779) (p := 9769)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨9780, 9780, .largeDivisor 154795351114293081637985741775743⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨9781, 9784, .topPrime 9781⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9781) (hi := 9784) (p := 9781)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨9800, 9801, .topPrime 9791⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9800) (hi := 9801) (p := 9791)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨9802, 9802, .largeDivisor 1574117490097697476743841784183⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨9803, 9810, .topPrime 9803⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9803) (hi := 9810) (p := 9803)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨9825, 9827, .topPrime 9817⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9825) (hi := 9827) (p := 9817)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨9828, 9828, .largeDivisor 136137517778677029989547151867057⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk129

#print axioms B699LowIndex.I11TerminalData.Chunk129.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk129.witnesses_check
