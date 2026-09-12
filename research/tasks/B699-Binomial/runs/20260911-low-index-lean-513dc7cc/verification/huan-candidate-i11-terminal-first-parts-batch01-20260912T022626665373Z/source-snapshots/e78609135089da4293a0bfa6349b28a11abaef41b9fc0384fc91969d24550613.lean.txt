import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk009
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨918, 921, .topPrime 911⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 918) (hi := 921) (p := 911)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨922, 929, .topPrime 919⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 922) (hi := 929) (p := 919)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨930, 939, .topPrime 929⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 930) (hi := 939) (p := 929)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨940, 947, .topPrime 937⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 940) (hi := 947) (p := 937)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨948, 957, .topPrime 947⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 948) (hi := 957) (p := 947)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨958, 963, .topPrime 953⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 958) (hi := 963) (p := 953)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨964, 964, .largeDivisor 54882072170269836921533⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨965, 965, .largeDivisor 199853583563435443884073⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨966, 966, .largeDivisor 24066138334863953975569⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨967, 977, .topPrime 967⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 967) (hi := 977) (p := 967)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨978, 987, .topPrime 977⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 978) (hi := 987) (p := 977)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨988, 993, .topPrime 983⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 988) (hi := 993) (p := 983)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨994, 1001, .topPrime 991⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 994) (hi := 1001) (p := 991)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨1002, 1007, .topPrime 997⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1002) (hi := 1007) (p := 997)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨1008, 1008, .largeDivisor 342459332588361191983⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1009, 1019, .topPrime 1009⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1009) (hi := 1019) (p := 1009)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk009

#print axioms B699LowIndex.I11TerminalData.Chunk009.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk009.witnesses_check
