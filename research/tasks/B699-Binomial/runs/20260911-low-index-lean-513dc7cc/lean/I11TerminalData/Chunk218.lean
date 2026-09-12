import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk218
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨42876, 42876, .largeDivisor 24321263757634614600046266982423602449⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨42877, 42877, .largeDivisor 48655009850982100975420323305434460981⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨42878, 42878, .largeDivisor 219003727943566084990979700051482134993⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨42879, 42879, .largeDivisor 2044559296863089518469022111584476914079⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨42880, 42880, .largeDivisor 3195443628025542880343009668435465097⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨42881, 42881, .largeDivisor 95887906377441080652196359406704813733⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨42882, 42882, .largeDivisor 2283631182182998841778649505592256183⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨42883, 42883, .largeDivisor 18273736888515308701622285267458988971⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨42884, 42884, .largeDivisor 13708819059672005079427088401961221801⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨42885, 42885, .largeDivisor 609437167694519794779774000423055669⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨43008, 43013, .topPrime 43003⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 43008) (hi := 43013) (p := 43003)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨43014, 43018, .topPrime 43013⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 43014) (hi := 43018) (p := 43013)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨43254, 43254, .largeDivisor 72920012100466481534330305363978558801⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨43255, 43255, .largeDivisor 58350848643153781496021780751436362241⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨43256, 43256, .largeDivisor 328307012084841307543173536444345900767⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨43257, 43257, .largeDivisor 1532489092667959473442867990285213189757⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk218

#print axioms B699LowIndex.I11TerminalData.Chunk218.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk218.witnesses_check
