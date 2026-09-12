import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk184
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨19750, 19750, .largeDivisor 15153934615880178172099838687488789⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨19751, 19757, .topPrime 19751⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19751) (hi := 19757) (p := 19751)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨19845, 19853, .topPrime 19843⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19845) (hi := 19853) (p := 19843)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨19854, 19855, .topPrime 19853⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19854) (hi := 19855) (p := 19853)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨19904, 19904, .largeDivisor 14737460047609412994894628075420453⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨20000, 20002, .topPrime 19997⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20000) (hi := 20002) (p := 19997)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨20007, 20007, .topPrime 19997⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20007) (hi := 20007) (p := 19997)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨20008, 20008, .largeDivisor 2265936089703761014449425686870297⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨20009, 20009, .largeDivisor 40809284625456844408747577469475943⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨20010, 20010, .largeDivisor 9527403866006200637253984659482133⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨20041, 20041, .largeDivisor 370831747634846274710437988982483089⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨20042, 20042, .largeDivisor 556553084176845067975632632558553697⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨20090, 20099, .topPrime 20089⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20090) (hi := 20099) (p := 20089)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨20100, 20100, .largeDivisor 22981322707317431306362924112033293⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨20169, 20170, .topPrime 20161⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20169) (hi := 20170) (p := 20161)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨20250, 20259, .topPrime 20249⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20250) (hi := 20259) (p := 20249)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk184

#print axioms B699LowIndex.I11TerminalData.Chunk184.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk184.witnesses_check
