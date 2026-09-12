import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk172
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨15974, 15978, .topPrime 15973⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15974) (hi := 15978) (p := 15973)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨16000, 16001, .topPrime 15991⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16000) (hi := 16001) (p := 15991)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨16002, 16010, .topPrime 16001⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16002) (hi := 16010) (p := 16001)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨16072, 16074, .topPrime 16069⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16072) (hi := 16074) (p := 16069)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨16121, 16121, .topPrime 16111⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16121) (hi := 16121) (p := 16111)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨16122, 16122, .largeDivisor 3222497493203565221105002255549147⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨16123, 16123, .largeDivisor 51595160956227489632448809698330583⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨16124, 16124, .largeDivisor 38722787900680136046993325617942763⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨16125, 16125, .largeDivisor 1446637601849909513484546482685959⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨16126, 16126, .largeDivisor 3619062669474347008137107753613679⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨16127, 16135, .topPrime 16127⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16127) (hi := 16135) (p := 16127)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨16200, 16202, .topPrime 16193⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16200) (hi := 16202) (p := 16193)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨16256, 16260, .topPrime 16253⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16256) (hi := 16260) (p := 16253)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨16320, 16327, .topPrime 16319⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16320) (hi := 16327) (p := 16319)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨16366, 16372, .topPrime 16363⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16366) (hi := 16372) (p := 16363)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨16375, 16376, .topPrime 16369⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16375) (hi := 16376) (p := 16369)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk172

#print axioms B699LowIndex.I11TerminalData.Chunk172.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk172.witnesses_check
