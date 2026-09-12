import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk107
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7752, 7752, .largeDivisor 214167924265493557328410213487⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨7753, 7760, .topPrime 7753⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7753) (hi := 7760) (p := 7753)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨7776, 7776, .largeDivisor 4021273655838651861339688741627⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨7777, 7777, .largeDivisor 1150562717392928719533452019559⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨7778, 7778, .largeDivisor 5184864899120625481188406609577⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨7779, 7779, .largeDivisor 13845885358825727984265230008891⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨7780, 7780, .largeDivisor 693274476069405095363518403071⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨7781, 7781, .largeDivisor 145793748602595703973609099845823⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨7782, 7782, .largeDivisor 24333353743091832203547934950461⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨7783, 7783, .largeDivisor 97471174566383803417505701348141⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨7784, 7784, .largeDivisor 5229059538682882545362135271089⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨7785, 7785, .largeDivisor 232731489630084558875134911731⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨7786, 7786, .largeDivisor 2913259450578518288427331869353⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨7792, 7799, .topPrime 7789⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7792) (hi := 7799) (p := 7789)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨7800, 7803, .topPrime 7793⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7800) (hi := 7803) (p := 7793)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨7804, 7804, .largeDivisor 301216149937710767905538104005827⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk107

#print axioms B699LowIndex.I11TerminalData.Chunk107.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk107.witnesses_check
