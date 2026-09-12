import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk116
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8424, 8433, .topPrime 8423⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8424) (hi := 8433) (p := 8423)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨8434, 8435, .topPrime 8431⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8434) (hi := 8435) (p := 8431)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨8450, 8457, .topPrime 8447⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8450) (hi := 8457) (p := 8447)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨8458, 8458, .largeDivisor 4891172586508681614455719509689⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨8459, 8459, .largeDivisor 3761311719025176161516448302950841⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨8460, 8460, .largeDivisor 146463670914816304549522013453761⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨8477, 8477, .topPrime 8467⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8477) (hi := 8477) (p := 8467)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨8478, 8478, .largeDivisor 15299011809740218245161627072207⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨8479, 8479, .largeDivisor 61275541395742706896894395817309⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨8480, 8480, .largeDivisor 3451226029728335244989801252197⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨8481, 8481, .largeDivisor 80633189967289287087488992892239⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨8482, 8482, .largeDivisor 40368948016913453728962438774169⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨8483, 8483, .largeDivisor 970112708293135490036227671731659⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨8484, 8484, .largeDivisor 11563954152910030035838427339183⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨8485, 8485, .largeDivisor 4631586074460307049992402925323⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨8486, 8486, .largeDivisor 173909908972876839054139518691553⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk116

#print axioms B699LowIndex.I11TerminalData.Chunk116.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk116.witnesses_check
