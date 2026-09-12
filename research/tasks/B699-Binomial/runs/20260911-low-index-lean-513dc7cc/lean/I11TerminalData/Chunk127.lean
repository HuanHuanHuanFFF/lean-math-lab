import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk127
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨9531, 9531, .topPrime 9521⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9531) (hi := 9531) (p := 9521)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨9532, 9532, .largeDivisor 2722501178148215092974154399913947⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨9533, 9541, .topPrime 9533⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9533) (hi := 9541) (p := 9533)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨9555, 9561, .topPrime 9551⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9555) (hi := 9561) (p := 9551)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨9562, 9562, .largeDivisor 71895488630827255562813334623219⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨9563, 9563, .largeDivisor 3454957576766839421845145321617303⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨9564, 9564, .largeDivisor 288244654944328589889100892005547⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨9565, 9565, .largeDivisor 115430610196462338802145699478043⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨9568, 9568, .largeDivisor 591214037399716211393278835408797⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨9575, 9575, .largeDivisor 15448109412231062666851135433708737⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨9576, 9576, .largeDivisor 153431301010136011850586290245931⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨9577, 9577, .largeDivisor 307215465141976287997713757408589⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨9578, 9578, .largeDivisor 1384059136937840492211713249510567⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨9585, 9585, .largeDivisor 41340223640693026849008741030109⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨9600, 9600, .largeDivisor 23657536523485983544308347261173⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨9601, 9610, .topPrime 9601⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9601) (hi := 9610) (p := 9601)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk127

#print axioms B699LowIndex.I11TerminalData.Chunk127.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk127.witnesses_check
