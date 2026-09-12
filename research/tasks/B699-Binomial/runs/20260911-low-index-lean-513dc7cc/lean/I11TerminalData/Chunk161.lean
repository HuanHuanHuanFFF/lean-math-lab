import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk161
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨13280, 13280, .largeDivisor 1441909179633537339451696823126689⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨13281, 13281, .largeDivisor 4810348107187392465525743659368389⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨13282, 13282, .largeDivisor 2407167642214714291579870668515219⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨13283, 13283, .largeDivisor 404739339133393037152600279618831063⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨13284, 13284, .largeDivisor 1250230762033384654807248660014471⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨13285, 13285, .largeDivisor 500506725135257349378161773340131⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨13286, 13286, .largeDivisor 8050523426328122450167381744064141⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨13287, 13287, .largeDivisor 10742925054295647584149241863350431⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨13288, 13288, .largeDivisor 1343978196519173807130518244710783⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨13289, 13289, .largeDivisor 8070549594913375835046297765007499⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨13290, 13290, .largeDivisor 13192817234489392970204833615860967⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨13312, 13319, .topPrime 13309⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13312) (hi := 13319) (p := 13309)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨13320, 13321, .topPrime 13313⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13320) (hi := 13321) (p := 13313)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨13338, 13338, .topPrime 13337⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13338) (hi := 13338) (p := 13337)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨13344, 13348, .topPrime 13339⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13344) (hi := 13348) (p := 13339)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨13375, 13377, .topPrime 13367⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13375) (hi := 13377) (p := 13367)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk161

#print axioms B699LowIndex.I11TerminalData.Chunk161.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk161.witnesses_check
