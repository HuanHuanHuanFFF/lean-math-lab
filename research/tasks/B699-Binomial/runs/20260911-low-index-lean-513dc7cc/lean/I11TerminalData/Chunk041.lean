import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk041
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3101, 3101, .largeDivisor 89650810886451937098759930407⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨3102, 3102, .largeDivisor 14994975486346053536091518609⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨3103, 3103, .largeDivisor 60193284520222256303353146499⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨3104, 3104, .largeDivisor 5663189717227506170150587013⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3105, 3105, .largeDivisor 589381735277070777888975119⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3106, 3106, .largeDivisor 1478691171058628300584133053⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨3107, 3107, .largeDivisor 106844034150678096044532590597⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3108, 3108, .largeDivisor 1276470540385886197496837537⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨3109, 3119, .topPrime 3109⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3109) (hi := 3119) (p := 3109)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨3120, 3129, .topPrime 3119⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3120) (hi := 3129) (p := 3119)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨3130, 3131, .topPrime 3121⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3130) (hi := 3131) (p := 3121)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨3132, 3132, .largeDivisor 14819949370792016613496561⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨3133, 3133, .largeDivisor 208210320083817883632666931⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨3134, 3134, .largeDivisor 940246603951996033580371991⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨3135, 3135, .largeDivisor 251615288381520065324324899⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨3136, 3136, .largeDivisor 251615288381520065324324899⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk041

#print axioms B699LowIndex.I11TerminalData.Chunk041.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk041.witnesses_check
