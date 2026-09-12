import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk239
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨107018, 107018, .largeDivisor 3006644842148199746253964839838914090943589⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨108135, 108135, .topPrime 108131⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 108135) (hi := 108135) (p := 108131)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨108388, 108388, .topPrime 108379⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 108388) (hi := 108388) (p := 108379)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨110080, 110080, .largeDivisor 77176027003729004099021469543434666496437⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨110081, 110081, .largeDivisor 6946536572851588307624188380057916208171939⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨110082, 110082, .largeDivisor 165410256629303022179166154065392322969889⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨110083, 110089, .topPrime 110083⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 110083) (hi := 110089) (p := 110083)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨111875, 111881, .topPrime 111871⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 111875) (hi := 111881) (p := 111871)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨111882, 111882, .largeDivisor 1281220683039160171921205020347072532420639⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨112504, 112511, .topPrime 112501⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 112504) (hi := 112511) (p := 112501)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨112512, 112514, .topPrime 112507⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 112512) (hi := 112514) (p := 112507)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨114219, 114220, .topPrime 114217⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 114219) (hi := 114220) (p := 114217)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨114696, 114698, .topPrime 114691⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 114696) (hi := 114698) (p := 114691)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨114944, 114949, .topPrime 114941⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 114944) (hi := 114949) (p := 114941)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨116883, 116885, .topPrime 116881⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 116883) (hi := 116885) (p := 116881)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨117504, 117510, .topPrime 117503⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 117504) (hi := 117510) (p := 117503)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk239

#print axioms B699LowIndex.I11TerminalData.Chunk239.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk239.witnesses_check
