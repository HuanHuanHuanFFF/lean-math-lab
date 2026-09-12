import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk169
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨15046, 15046, .largeDivisor 15823386361758018451703831464624033⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨15047, 15047, .largeDivisor 1330136841259066500797695821498311869⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨15048, 15048, .largeDivisor 18487637149906557070341053846721233⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨15049, 15049, .largeDivisor 37002320982702989407043824888855943⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨15050, 15050, .largeDivisor 2856552607282277458712539443843457⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨15072, 15072, .largeDivisor 12543126738768194906079511967888183⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨15073, 15076, .topPrime 15073⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15073) (hi := 15076) (p := 15073)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨15141, 15149, .topPrime 15139⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15141) (hi := 15149) (p := 15139)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨15150, 15151, .topPrime 15149⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15150) (hi := 15151) (p := 15149)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨15200, 15200, .topPrime 15199⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15200) (hi := 15200) (p := 15199)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨15232, 15237, .topPrime 15227⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15232) (hi := 15237) (p := 15227)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨15238, 15242, .topPrime 15233⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15238) (hi := 15242) (p := 15233)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨15296, 15298, .topPrime 15289⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15296) (hi := 15298) (p := 15289)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨15337, 15338, .topPrime 15331⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15337) (hi := 15338) (p := 15331)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨15390, 15393, .topPrime 15383⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15390) (hi := 15393) (p := 15383)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨15394, 15400, .topPrime 15391⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15394) (hi := 15400) (p := 15391)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk169

#print axioms B699LowIndex.I11TerminalData.Chunk169.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk169.witnesses_check
