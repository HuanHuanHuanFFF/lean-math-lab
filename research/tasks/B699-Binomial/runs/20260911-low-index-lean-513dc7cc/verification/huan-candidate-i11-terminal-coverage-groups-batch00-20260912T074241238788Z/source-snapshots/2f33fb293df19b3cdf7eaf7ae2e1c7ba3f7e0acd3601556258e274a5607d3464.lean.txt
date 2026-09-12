import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk061
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4284, 4285, .topPrime 4283⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4284) (hi := 4285) (p := 4283)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨4288, 4293, .topPrime 4283⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4288) (hi := 4293) (p := 4283)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨4294, 4298, .topPrime 4289⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4294) (hi := 4298) (p := 4289)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨4300, 4307, .topPrime 4297⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4300) (hi := 4307) (p := 4297)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨4308, 4308, .largeDivisor 279285579914105860004909227631⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨4309, 4309, .largeDivisor 3920005093973557494336006064697⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4310, 4310, .largeDivisor 1179010603979485889782846206479⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4311, 4311, .largeDivisor 13133629751306366074557751927987⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨4312, 4312, .largeDivisor 33589845911269478451554352757⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨4313, 4313, .largeDivisor 606163202574498998165497587619⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨4314, 4314, .largeDivisor 101285461922162393604692717987⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨4315, 4315, .largeDivisor 324941835088573032270817158449⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4316, 4316, .largeDivisor 8551518050257812239517358877231⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨4317, 4317, .largeDivisor 5715575696386898194456794902153⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨4318, 4318, .largeDivisor 2865086586603044625454427720861⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨4319, 4319, .largeDivisor 4924118172518324606978779676243⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk061

#print axioms B699LowIndex.I11TerminalData.Chunk061.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk061.witnesses_check
