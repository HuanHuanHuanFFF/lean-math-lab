import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk182
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨19359, 19359, .largeDivisor 1261157302175567099806370475526135529⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨19360, 19360, .largeDivisor 7886714226225831778209252547349341⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨19361, 19361, .largeDivisor 3551038933347868117625798571377455607⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨19362, 19362, .largeDivisor 84596607321242685247557911291664877⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨19363, 19363, .largeDivisor 677157547565614764137438543340432829⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨19364, 19364, .largeDivisor 508156826502114567228234380454353639⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨19365, 19365, .largeDivisor 67792752197398977605833479918008737⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨19456, 19457, .topPrime 19447⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19456) (hi := 19457) (p := 19447)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨19458, 19463, .topPrime 19457⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19458) (hi := 19463) (p := 19457)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨19502, 19510, .topPrime 19501⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19502) (hi := 19510) (p := 19501)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨19521, 19521, .largeDivisor 1511847986625087607820902851777478273⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨19522, 19522, .largeDivisor 756350171567191847672586373645634023⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨19523, 19523, .largeDivisor 7783987559043904292099053122131635757⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨19524, 19524, .largeDivisor 649031300085298635947581583032243703⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨19525, 19525, .largeDivisor 51951772611111841208881953095027399⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨19526, 19526, .largeDivisor 389857921600526445597474641096658337⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk182

#print axioms B699LowIndex.I11TerminalData.Chunk182.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk182.witnesses_check
