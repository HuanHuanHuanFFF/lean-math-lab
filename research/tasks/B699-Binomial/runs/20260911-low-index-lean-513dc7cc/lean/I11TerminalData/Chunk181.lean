import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk181
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨19117, 19117, .largeDivisor 392193711792228305209293473004854227⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨19118, 19118, .largeDivisor 1765887748950499467496766984669524991⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨19119, 19119, .largeDivisor 2355872435432600608406300186999975459⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨19120, 19120, .largeDivisor 29465357269788662170134792228426089⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨19125, 19126, .topPrime 19121⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19125) (hi := 19126) (p := 19121)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨19200, 19200, .largeDivisor 6298664922091171930729752239192953⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨19201, 19201, .largeDivisor 9003250589523754354346904842160641⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨19202, 19202, .largeDivisor 13512616681259585048629769171421653⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨19203, 19203, .largeDivisor 36054297364211172945510276142671947⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨19204, 19204, .largeDivisor 9018740251423844178158434625174179⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨19205, 19205, .largeDivisor 75800834366999968245747368479855627⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨19206, 19206, .largeDivisor 21067853677934088595522907571765031⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨19207, 19210, .topPrime 19207⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19207) (hi := 19210) (p := 19207)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨19257, 19259, .topPrime 19249⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19257) (hi := 19259) (p := 19249)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨19260, 19260, .topPrime 19259⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19260) (hi := 19260) (p := 19259)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨19264, 19267, .topPrime 19259⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19264) (hi := 19267) (p := 19259)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk181

#print axioms B699LowIndex.I11TerminalData.Chunk181.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk181.witnesses_check
