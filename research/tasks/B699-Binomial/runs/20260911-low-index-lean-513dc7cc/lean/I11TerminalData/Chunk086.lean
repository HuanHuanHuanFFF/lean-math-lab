import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk086
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6024, 6024, .largeDivisor 8168812356685191006844937650697⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨6025, 6025, .largeDivisor 654700291972441314482750240711⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨6026, 6026, .largeDivisor 4919231869608393218295577245043⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨6027, 6027, .largeDivisor 4291244822424343020215290788229⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨6028, 6028, .largeDivisor 1074772469236078599212970453359⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨6029, 6037, .topPrime 6029⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6029) (hi := 6037) (p := 6029)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨6048, 6057, .topPrime 6047⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6048) (hi := 6057) (p := 6047)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨6058, 6058, .topPrime 6053⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6058) (hi := 6058) (p := 6053)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨6075, 6083, .topPrime 6073⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6075) (hi := 6083) (p := 6073)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨6084, 6086, .topPrime 6079⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6084) (hi := 6086) (p := 6079)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨6100, 6101, .topPrime 6091⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6100) (hi := 6101) (p := 6091)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨6102, 6110, .topPrime 6101⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6102) (hi := 6110) (p := 6101)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨6112, 6112, .largeDivisor 1825319859558476579969535476989⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨6125, 6131, .topPrime 6121⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6125) (hi := 6131) (p := 6121)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨6132, 6138, .topPrime 6131⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6132) (hi := 6138) (p := 6131)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨6150, 6153, .topPrime 6143⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6150) (hi := 6153) (p := 6143)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk086

#print axioms B699LowIndex.I11TerminalData.Chunk086.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk086.witnesses_check
