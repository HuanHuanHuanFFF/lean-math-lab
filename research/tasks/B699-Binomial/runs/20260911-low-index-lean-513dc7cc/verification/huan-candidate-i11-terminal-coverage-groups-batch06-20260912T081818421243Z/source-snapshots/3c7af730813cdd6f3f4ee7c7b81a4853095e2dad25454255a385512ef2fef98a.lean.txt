import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk219
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨43258, 43258, .largeDivisor 766439442858817847506088093090361784199⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨43259, 43259, .largeDivisor 36798450453528969217831148522748013787641⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨43260, 43260, .largeDivisor 87637642412853102486453057824297565727⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨43264, 43264, .topPrime 43261⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 43264) (hi := 43264) (p := 43261)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨43500, 43507, .topPrime 43499⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 43500) (hi := 43507) (p := 43499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨43750, 43750, .largeDivisor 36740077800559919859295640891553821⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨43904, 43904, .largeDivisor 14795463215892579039383914953473379743⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨43905, 43905, .largeDivisor 1973222801882607137571272568862103363⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨43906, 43906, .largeDivisor 4934293219014565951828470976674992041⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨43907, 43907, .largeDivisor 118452713158705602650045202390852310303⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨43908, 43908, .largeDivisor 69114730895822643931831509416062606187⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨43909, 43909, .largeDivisor 138264099453491114511038760169023325667⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨43910, 43910, .largeDivisor 41489623501693397377022565154252813709⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨43911, 43911, .largeDivisor 65873046880820724309304619390692963907⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨43912, 43912, .largeDivisor 8236194034961047714944376115248255823⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨43913, 43914, .topPrime 43913⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 43913) (hi := 43914) (p := 43913)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk219

#print axioms B699LowIndex.I11TerminalData.Chunk219.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk219.witnesses_check
