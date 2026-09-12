import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk066
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4561, 4570, .topPrime 4561⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4561) (hi := 4570) (p := 4561)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨4576, 4577, .topPrime 4567⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4576) (hi := 4577) (p := 4567)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨4578, 4578, .largeDivisor 136369446430276890331901677589⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4579, 4579, .largeDivisor 1093582653597614502328857761261⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨4580, 4580, .largeDivisor 164432322832471254782211705403⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨4581, 4581, .largeDivisor 183142346437041288149115444311⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4582, 4582, .largeDivisor 642540759092284213092838411817⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4583, 4585, .topPrime 4583⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4583) (hi := 4585) (p := 4583)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨4592, 4601, .topPrime 4591⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4592) (hi := 4601) (p := 4591)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨4602, 4602, .topPrime 4597⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4602) (hi := 4602) (p := 4597)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨4606, 4613, .topPrime 4603⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4606) (hi := 4613) (p := 4603)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨4614, 4614, .largeDivisor 13272711265037421888203693137⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4615, 4615, .largeDivisor 10643538225568671071079069301⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨4616, 4616, .largeDivisor 20004304743169782436523201911⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨4617, 4617, .largeDivisor 8086846598302678006254060347⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨4618, 4618, .largeDivisor 4053077663442779144007081689⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk066

#print axioms B699LowIndex.I11TerminalData.Chunk066.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk066.witnesses_check
