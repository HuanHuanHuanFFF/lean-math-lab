import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk249
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨362500, 362500, .largeDivisor 37059134753286342810475137908649207087452079973⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨362501, 362501, .largeDivisor 1111807780120918029888276749732950940859758871331⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨362502, 362502, .largeDivisor 420197096966726815547679569184929498657310017⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨362503, 362503, .largeDivisor 1680839392226359432114148581135522969354036537⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨362504, 362504, .largeDivisor 1891001697741962533142697188395211964901543253⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨362505, 362505, .largeDivisor 252141210774964598246920296346682083321520333⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨362506, 362506, .largeDivisor 4412605086086188889258380271673763411052961757⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨441784, 441784, .largeDivisor 7460519976572577963651013702013424603251231401⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨483328, 483333, .topPrime 483323⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 483328) (hi := 483333) (p := 483323)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨483334, 483334, .largeDivisor 564232623727390919971426971224655797083791599389⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨483335, 483335, .largeDivisor 1354189116315904810707796782962330906887277665619⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨483336, 483336, .largeDivisor 9596229707509385975635864028647356035977708591⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨483337, 483337, .topPrime 483337⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 483337) (hi := 483337) (p := 483337)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨612360, 612360, .largeDivisor 20728382262341301503581663158272872710230589751⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨612361, 612361, .largeDivisor 1036437730917741628973199218850586642092717740713⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨612362, 612362, .largeDivisor 4664053570601053068102751510558524796992760190027⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk249

#print axioms B699LowIndex.I11TerminalData.Chunk249.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk249.witnesses_check
