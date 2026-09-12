import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk213
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨35883, 35885, .topPrime 35879⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 35883) (hi := 35885) (p := 35879)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨35968, 35973, .topPrime 35963⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 35968) (hi := 35973) (p := 35963)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨35974, 35974, .topPrime 35969⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 35974) (hi := 35974) (p := 35969)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨36126, 36126, .largeDivisor 422392950278364656356652274420023191537⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨36127, 36127, .largeDivisor 241440914429797318801271723145612990533⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨36128, 36128, .largeDivisor 67925938796720950143691945036480704289⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨36129, 36129, .largeDivisor 45297750757456692097042034114532206753⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨36130, 36130, .largeDivisor 4531154613546638294155786961316893131⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨36131, 36135, .topPrime 36131⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 36131) (hi := 36135) (p := 36131)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨36358, 36362, .topPrime 36353⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 36358) (hi := 36362) (p := 36353)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨36375, 36379, .topPrime 36373⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 36375) (hi := 36379) (p := 36373)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨36612, 36617, .topPrime 36607⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 36612) (hi := 36617) (p := 36607)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨36618, 36618, .largeDivisor 82059896780647190920045438168417725361⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨36701, 36703, .topPrime 36697⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 36701) (hi := 36703) (p := 36697)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨36864, 36865, .topPrime 36857⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 36864) (hi := 36865) (p := 36857)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨37000, 37002, .topPrime 36997⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 37000) (hi := 37002) (p := 36997)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk213

#print axioms B699LowIndex.I11TerminalData.Chunk213.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk213.witnesses_check
