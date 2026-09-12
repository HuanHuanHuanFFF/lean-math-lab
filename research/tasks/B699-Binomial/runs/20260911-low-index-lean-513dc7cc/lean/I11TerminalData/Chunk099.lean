import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk099
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7056, 7056, .largeDivisor 56326053370848551248243280983⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨7057, 7066, .topPrime 7057⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7057) (hi := 7066) (p := 7057)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨7074, 7079, .topPrime 7069⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7074) (hi := 7079) (p := 7069)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨7080, 7084, .topPrime 7079⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7080) (hi := 7084) (p := 7079)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨7101, 7101, .largeDivisor 30446100630699927185783887756081⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨7102, 7102, .largeDivisor 106726656801199843471587942173587⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨7103, 7113, .topPrime 7103⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7103) (hi := 7113) (p := 7103)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨7114, 7114, .topPrime 7109⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7114) (hi := 7114) (p := 7109)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨7125, 7131, .topPrime 7121⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7125) (hi := 7131) (p := 7121)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨7132, 7138, .topPrime 7129⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7132) (hi := 7138) (p := 7129)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7152, 7161, .topPrime 7151⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7152) (hi := 7161) (p := 7151)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨7162, 7164, .topPrime 7159⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7162) (hi := 7164) (p := 7159)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨7175, 7175, .largeDivisor 2879429908563674042417204332747⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨7176, 7176, .largeDivisor 600802193063878952325711162241⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨7177, 7178, .topPrime 7177⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7177) (hi := 7178) (p := 7177)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨7182, 7187, .topPrime 7177⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7182) (hi := 7187) (p := 7177)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk099

#print axioms B699LowIndex.I11TerminalData.Chunk099.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk099.witnesses_check
