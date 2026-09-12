import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk247
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨242504, 242504, .largeDivisor 222418858144279427334039660956112372808403591⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨242505, 242505, .largeDivisor 69200116998990926268872451526614489756046819⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨242506, 242506, .largeDivisor 173008140095231794116983677291420167970266293⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨242507, 242507, .largeDivisor 99657209097563840132844087004537840080677833531⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨242508, 242508, .largeDivisor 1186449162936724192313805445766754822999529501⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨242509, 242510, .topPrime 242509⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 242509) (hi := 242510) (p := 242509)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨244224, 244225, .topPrime 244219⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 244224) (hi := 244225) (p := 244219)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨247303, 247306, .topPrime 247301⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 247303) (hi := 247306) (p := 247301)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨261711, 261717, .topPrime 261707⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 261711) (hi := 261717) (p := 261707)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨261718, 261719, .topPrime 261713⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 261718) (hi := 261719) (p := 261713)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨263169, 263177, .topPrime 263167⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 263169) (hi := 263177) (p := 263167)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨263178, 263178, .topPrime 263171⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 263178) (hi := 263178) (p := 263171)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨266250, 266250, .largeDivisor 172717609621405591605350408261919127996698473⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨277504, 277509, .topPrime 277499⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 277504) (hi := 277509) (p := 277499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨277510, 277510, .largeDivisor 103774388298692263849612902109515757559261651⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨288125, 288125, .largeDivisor 7374033501318363649776992469813254704115218999⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk247

#print axioms B699LowIndex.I11TerminalData.Chunk247.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk247.witnesses_check
