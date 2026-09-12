import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk173
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨16384, 16385, .topPrime 16381⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16384) (hi := 16385) (p := 16381)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨16448, 16453, .topPrime 16447⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16448) (hi := 16453) (p := 16447)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨16513, 16513, .largeDivisor 66067207076317012750993897749936691⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨16514, 16514, .largeDivisor 99166865811516010595338413692279087⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨16515, 16515, .largeDivisor 17641415294632271395292873400419983⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨16516, 16516, .largeDivisor 22066465844149242226950704110976707⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨16517, 16517, .largeDivisor 2782227605708496441698815112984750149⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨16518, 16518, .largeDivisor 464013606258889604652380081544012671⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨16519, 16522, .topPrime 16519⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16519) (hi := 16522) (p := 16519)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨16611, 16615, .topPrime 16607⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16611) (hi := 16615) (p := 16607)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨16709, 16713, .topPrime 16703⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16709) (hi := 16713) (p := 16703)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨16714, 16714, .largeDivisor 58702617632643956571056809039134499⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨16758, 16758, .largeDivisor 8286937915065428610075422413391797⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨16759, 16760, .topPrime 16759⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16759) (hi := 16760) (p := 16759)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨16767, 16773, .topPrime 16763⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 16767) (hi := 16773) (p := 16763)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨16774, 16774, .largeDivisor 6784826108836871403864363787184621⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk173

#print axioms B699LowIndex.I11TerminalData.Chunk173.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk173.witnesses_check
