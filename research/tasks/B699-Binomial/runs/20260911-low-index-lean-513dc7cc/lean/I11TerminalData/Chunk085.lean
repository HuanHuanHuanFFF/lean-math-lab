import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk085
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5978, 5978, .largeDivisor 2206354067416023417387836043341⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨5979, 5979, .largeDivisor 11788910606863631825345729850881⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨5980, 5980, .largeDivisor 590531792838369226969069061051⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨5981, 5988, .topPrime 5981⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5981) (hi := 5988) (p := 5981)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨5994, 5994, .topPrime 5987⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5994) (hi := 5994) (p := 5987)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨6000, 6000, .largeDivisor 23824998353573705980998129707⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨6001, 6001, .largeDivisor 238687504373615708834674084093⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨6002, 6002, .largeDivisor 358688633262504127297374524969⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨6003, 6003, .largeDivisor 2235937555010189279507932786489⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6004, 6004, .largeDivisor 560010390467260822383014702573⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨6005, 6005, .largeDivisor 18177634566248114802216233994329⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨6006, 6006, .largeDivisor 2167974764781885251640468274553⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨6007, 6010, .topPrime 6007⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6007) (hi := 6010) (p := 6007)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨6021, 6021, .topPrime 6011⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6021) (hi := 6021) (p := 6011)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨6022, 6022, .largeDivisor 775143251667783923581732734217⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨6023, 6023, .largeDivisor 27956214399970434561274109330473⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk085

#print axioms B699LowIndex.I11TerminalData.Chunk085.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk085.witnesses_check
