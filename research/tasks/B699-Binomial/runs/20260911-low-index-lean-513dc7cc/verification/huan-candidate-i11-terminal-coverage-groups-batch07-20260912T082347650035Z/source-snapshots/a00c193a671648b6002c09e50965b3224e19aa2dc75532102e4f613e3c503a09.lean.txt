import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk241
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨122116, 122116, .largeDivisor 17120703332493508138587166122146857637734739⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨122117, 122118, .topPrime 122117⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 122117) (hi := 122118) (p := 122117)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨123137, 123137, .topPrime 123127⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 123137) (hi := 123137) (p := 123127)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨123138, 123138, .largeDivisor 3127423918921313121366497238108590496898049⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨123139, 123139, .largeDivisor 25021626531872625329864797830124990266878621⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨123140, 123140, .largeDivisor 11260737852257857916524929481768844753539337⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨123141, 123141, .largeDivisor 262774023093591980613757123614647965092967121⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨123142, 123142, .largeDivisor 131398749103763892426518422315074919059693161⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨123143, 123146, .topPrime 123143⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 123143) (hi := 123146) (p := 123143)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨124166, 124166, .largeDivisor 61684693351736767000036676293226256428824417⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨124167, 124167, .largeDivisor 82253544673959633021827958217092739048700467⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨124168, 124168, .largeDivisor 10282604016563926835633848590796301479375951⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨124169, 124169, .largeDivisor 61701090133510183697570161198017975083005483⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨124170, 124170, .largeDivisor 14398196541839017326731854157895720745817201⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨129033, 129033, .topPrime 129023⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 129033) (hi := 129033) (p := 129023)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨129034, 129034, .largeDivisor 26372915692894393745878661435797383605021⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk241

#print axioms B699LowIndex.I11TerminalData.Chunk241.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk241.witnesses_check
