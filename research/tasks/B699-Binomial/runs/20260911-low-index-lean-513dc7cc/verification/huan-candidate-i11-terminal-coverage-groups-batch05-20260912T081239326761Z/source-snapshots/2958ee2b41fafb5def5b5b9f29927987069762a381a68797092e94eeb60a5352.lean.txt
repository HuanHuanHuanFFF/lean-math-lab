import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk189
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨21635, 21635, .largeDivisor 224942845657719509374705205477505349⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨21636, 21636, .largeDivisor 781448845319592052798831378566362513⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨21637, 21637, .largeDivisor 223384664837034961176471635175124991⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨21708, 21711, .topPrime 21701⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21708) (hi := 21711) (p := 21701)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨21712, 21712, .largeDivisor 4176959969973326019213234710118332393⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨21713, 21717, .topPrime 21713⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21713) (hi := 21717) (p := 21713)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨21756, 21761, .topPrime 21751⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21756) (hi := 21761) (p := 21751)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨21762, 21766, .topPrime 21757⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21762) (hi := 21766) (p := 21757)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨21875, 21880, .topPrime 21871⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21875) (hi := 21880) (p := 21871)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨21952, 21953, .topPrime 21943⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21952) (hi := 21953) (p := 21943)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨21954, 21954, .largeDivisor 4815024412650822667603078206638321⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨21955, 21955, .largeDivisor 7707900909934291773038686257874177⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨21956, 21956, .largeDivisor 202433818634590083934016023298906017⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨21957, 21957, .largeDivisor 135023523064482349796141736491815651⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨21958, 21958, .largeDivisor 67545598930375528245857753904572107⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨21959, 21959, .largeDivisor 115850488706718442923595283760876271⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk189

#print axioms B699LowIndex.I11TerminalData.Chunk189.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk189.witnesses_check
