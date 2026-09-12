import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk168
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨14945, 14949, .topPrime 14939⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14945) (hi := 14949) (p := 14939)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨14950, 14954, .topPrime 14947⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14950) (hi := 14954) (p := 14947)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨14985, 14986, .topPrime 14983⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14985) (hi := 14986) (p := 14983)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨14994, 14994, .largeDivisor 3384872774352031156227898808697533⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨14995, 14995, .largeDivisor 5419772263898420415124115604529579⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨15000, 15000, .largeDivisor 1028101640296994162148452848097069⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨15001, 15001, .largeDivisor 1469794406375222474639182423930633⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨15002, 15002, .largeDivisor 2206309354056542682062939235922289⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨15003, 15003, .largeDivisor 3925205649105930257202689120899099⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨15004, 15004, .largeDivisor 982021369292092602865823176982093⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨15008, 15008, .largeDivisor 7756134764736752807456047430160449⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨15009, 15009, .largeDivisor 5174548903584207800467076315921153⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨15010, 15010, .largeDivisor 517834382577498227115213117554347⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨15043, 15043, .largeDivisor 63154817613489728594941594617206633⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨15044, 15044, .largeDivisor 47400772110224479993130181072702883⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨15045, 15045, .largeDivisor 6324727208534675193974933033912597⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk168

#print axioms B699LowIndex.I11TerminalData.Chunk168.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk168.witnesses_check
