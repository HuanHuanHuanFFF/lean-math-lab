import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk149
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨11777, 11785, .topPrime 11777⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11777) (hi := 11785) (p := 11777)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨11800, 11800, .largeDivisor 1425928509483591183469627835343971⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨11801, 11811, .topPrime 11801⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11801) (hi := 11811) (p := 11801)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨11812, 11817, .topPrime 11807⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11812) (hi := 11817) (p := 11807)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨11818, 11818, .topPrime 11813⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11818) (hi := 11818) (p := 11813)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨11826, 11831, .topPrime 11821⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11826) (hi := 11831) (p := 11821)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨11832, 11835, .topPrime 11831⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11832) (hi := 11835) (p := 11831)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨11850, 11850, .largeDivisor 3361155383292242141567745525535417⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨11853, 11853, .largeDivisor 8560079700235729011771032448172943⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨11854, 11854, .largeDivisor 4284015231216513202125045116973827⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨11855, 11855, .largeDivisor 216114896025837293664648552603083911⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨11856, 11856, .largeDivisor 22532874342921828423456391934555393⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨11857, 11857, .largeDivisor 45107595995952071520668991924366587⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨11858, 11858, .largeDivisor 1382126896811901912889579139743823⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨11859, 11859, .largeDivisor 3689093601011106186125932707229799⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨11860, 11860, .largeDivisor 184625918254670096073312355083743⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk149

#print axioms B699LowIndex.I11TerminalData.Chunk149.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk149.witnesses_check
