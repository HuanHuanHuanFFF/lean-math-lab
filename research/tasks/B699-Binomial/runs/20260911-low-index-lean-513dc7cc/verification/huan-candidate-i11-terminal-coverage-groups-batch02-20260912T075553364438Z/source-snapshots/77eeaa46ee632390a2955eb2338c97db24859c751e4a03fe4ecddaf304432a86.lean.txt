import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk133
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10057, 10057, .largeDivisor 5525608197797281486351517617493987⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨10058, 10058, .largeDivisor 8297486899588691727340036458159827⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨10075, 10079, .topPrime 10069⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10075) (hi := 10079) (p := 10069)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨10080, 10085, .topPrime 10079⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10080) (hi := 10085) (p := 10079)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨10098, 10103, .topPrime 10093⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10098) (hi := 10103) (p := 10093)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨10104, 10108, .topPrime 10103⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10104) (hi := 10108) (p := 10103)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨10125, 10125, .largeDivisor 20151464727398907847845611347669⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨10126, 10126, .largeDivisor 353034138113566333680423288073523⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨10127, 10127, .largeDivisor 12723048813793901285343938214663941⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨10128, 10128, .largeDivisor 265351714906643587151089350923603⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨10129, 10129, .largeDivisor 75897199341750004073458448465399⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨10130, 10130, .largeDivisor 22793911335070487437418739488719⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨10131, 10131, .largeDivisor 304249164342027810577719696653771⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨10132, 10132, .largeDivisor 76144959320062883528639856893983⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨10133, 10135, .topPrime 10133⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10133) (hi := 10135) (p := 10133)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨10144, 10151, .topPrime 10141⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10144) (hi := 10151) (p := 10141)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk133

#print axioms B699LowIndex.I11TerminalData.Chunk133.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk133.witnesses_check
