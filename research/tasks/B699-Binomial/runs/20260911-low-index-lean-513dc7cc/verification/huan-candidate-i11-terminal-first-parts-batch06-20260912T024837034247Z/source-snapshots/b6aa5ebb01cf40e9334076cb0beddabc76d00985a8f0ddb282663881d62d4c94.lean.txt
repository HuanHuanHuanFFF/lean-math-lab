import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk052
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3750, 3750, .largeDivisor 1697037216111721788714999277⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨3751, 3751, .largeDivisor 34040570040829242938342044321⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨3752, 3752, .largeDivisor 1828964067951531096125835581⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨3753, 3753, .largeDivisor 135877073995330209706836529⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3754, 3754, .largeDivisor 68138196069792894368082331⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3755, 3755, .largeDivisor 3936291172954958743879217737⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨3756, 3756, .largeDivisor 11514571375092542867609300483⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3757, 3757, .largeDivisor 23096767034822575308920524247⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨3758, 3758, .largeDivisor 34746857692899614896286361137⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨3759, 3759, .largeDivisor 6637873561397044894808173579⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3760, 3760, .largeDivisor 83216873135679143786605537⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨3761, 3771, .topPrime 3761⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3761) (hi := 3771) (p := 3761)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨3772, 3779, .topPrime 3769⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3772) (hi := 3779) (p := 3769)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨3780, 3789, .topPrime 3779⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3780) (hi := 3789) (p := 3779)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨3790, 3790, .largeDivisor 15138245256625678614160071923⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨3791, 3791, .largeDivisor 57389087767867947626280832660093⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk052

#print axioms B699LowIndex.I11TerminalData.Chunk052.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk052.witnesses_check
