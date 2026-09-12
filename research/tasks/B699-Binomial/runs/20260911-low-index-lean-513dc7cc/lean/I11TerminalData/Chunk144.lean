import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk144
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨11235, 11235, .largeDivisor 1424560381457681364981620359455827⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨11236, 11236, .largeDivisor 8912227419854403016109958997130107⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨11237, 11237, .largeDivisor 53525761366597502240527851015901129⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨11238, 11238, .largeDivisor 8929700814076522819676553393852571⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨11239, 11242, .topPrime 11239⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11239) (hi := 11242) (p := 11239)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨11259, 11260, .topPrime 11257⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11259) (hi := 11260) (p := 11257)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨11264, 11271, .topPrime 11261⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11264) (hi := 11271) (p := 11261)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨11272, 11272, .largeDivisor 61818439792363533637436146153319⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨11273, 11280, .topPrime 11273⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11273) (hi := 11280) (p := 11273)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨11296, 11296, .topPrime 11287⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11296) (hi := 11296) (p := 11287)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨11300, 11306, .topPrime 11299⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11300) (hi := 11306) (p := 11299)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨11319, 11323, .topPrime 11317⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11319) (hi := 11323) (p := 11317)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨11325, 11331, .topPrime 11321⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11325) (hi := 11331) (p := 11321)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨11332, 11335, .topPrime 11329⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11332) (hi := 11335) (p := 11329)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨11350, 11350, .largeDivisor 88527977859687575846708235612929⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨11360, 11360, .topPrime 11353⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11360) (hi := 11360) (p := 11353)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk144

#print axioms B699LowIndex.I11TerminalData.Chunk144.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk144.witnesses_check
