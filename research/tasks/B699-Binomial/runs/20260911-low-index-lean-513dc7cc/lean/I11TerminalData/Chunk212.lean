import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk212
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨34758, 34759, .topPrime 34757⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 34758) (hi := 34759) (p := 34757)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨34992, 34992, .largeDivisor 1404925100791951267980395354505403997⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨34993, 34993, .largeDivisor 401533393108396569014578719179721833⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨34994, 34994, .largeDivisor 1807468427892362945214325662332799823⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨34995, 34995, .largeDivisor 964286266241226332308488856671031783⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨34996, 34996, .largeDivisor 1205736821972915418231666286553502511⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨35000, 35000, .largeDivisor 141973054194324980064950237539068931⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨35001, 35001, .largeDivisor 157797430054795612309971841608870841⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨35002, 35002, .largeDivisor 78923518144350776229225149324021851⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨35073, 35079, .topPrime 35069⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 35073) (hi := 35079) (p := 35069)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨35080, 35080, .largeDivisor 2047278667302038108517146248928724139⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨35081, 35082, .topPrime 35081⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 35081) (hi := 35082) (p := 35081)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨35329, 35337, .topPrime 35327⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 35329) (hi := 35337) (p := 35327)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨35338, 35338, .largeDivisor 5095004531236196284284884118477207971⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨35721, 35721, .largeDivisor 1322000556990887903083041808049990999⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨35722, 35722, .largeDivisor 661203885313047767829694204407070349⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk212

#print axioms B699LowIndex.I11TerminalData.Chunk212.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk212.witnesses_check
