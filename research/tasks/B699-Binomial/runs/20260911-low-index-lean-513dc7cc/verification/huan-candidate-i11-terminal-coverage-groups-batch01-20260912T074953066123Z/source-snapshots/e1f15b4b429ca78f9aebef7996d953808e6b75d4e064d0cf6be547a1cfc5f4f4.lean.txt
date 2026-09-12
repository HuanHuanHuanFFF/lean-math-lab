import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk106
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7633, 7633, .largeDivisor 10115581522304079620035598430641⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨7634, 7634, .largeDivisor 319100617112683238922941150493857⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨7635, 7635, .largeDivisor 170432543662492936633554087724421⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨7641, 7642, .topPrime 7639⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7641) (hi := 7642) (p := 7639)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨7644, 7653, .topPrime 7643⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7644) (hi := 7653) (p := 7643)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨7654, 7658, .topPrime 7649⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7654) (hi := 7658) (p := 7649)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨7668, 7668, .largeDivisor 88650086796892182386035037052977⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨7669, 7678, .topPrime 7669⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7669) (hi := 7678) (p := 7669)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨7680, 7683, .topPrime 7673⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7680) (hi := 7683) (p := 7673)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨7684, 7685, .topPrime 7681⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7684) (hi := 7685) (p := 7681)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7695, 7701, .topPrime 7691⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7695) (hi := 7701) (p := 7691)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨7702, 7706, .topPrime 7699⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7702) (hi := 7706) (p := 7699)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨7722, 7722, .topPrime 7717⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7722) (hi := 7722) (p := 7717)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨7725, 7733, .topPrime 7723⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7725) (hi := 7733) (p := 7723)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨7734, 7735, .topPrime 7727⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7734) (hi := 7735) (p := 7727)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨7744, 7751, .topPrime 7741⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7744) (hi := 7751) (p := 7741)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk106

#print axioms B699LowIndex.I11TerminalData.Chunk106.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk106.witnesses_check
