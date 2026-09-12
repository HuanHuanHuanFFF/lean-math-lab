import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk171
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨15715, 15715, .largeDivisor 31781117653283991315870187798307251⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨15716, 15716, .largeDivisor 357787997878947856389839449454295671⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨15717, 15717, .largeDivisor 238692387735617957420905243307150773⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨15718, 15718, .largeDivisor 119429774954747662021448673021639901⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨15719, 15719, .largeDivisor 10039126377078494648744126691054318737⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨15720, 15720, .largeDivisor 83717967750797810107930523682482383⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨15721, 15721, .largeDivisor 837765863151045431385598830561620333⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨15722, 15722, .largeDivisor 179646947549861374727139103822932907⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨15750, 15754, .topPrime 15749⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15750) (hi := 15754) (p := 15749)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨15778, 15783, .topPrime 15773⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15778) (hi := 15783) (p := 15773)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨15784, 15784, .largeDivisor 16079817172203077867027718058105753⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨15785, 15785, .largeDivisor 2758462360085046830745340754737807⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨15786, 15786, .largeDivisor 3833869238977157005647644757377269⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨15875, 15875, .largeDivisor 50361701483217495654597964911951313⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨15876, 15876, .largeDivisor 15871951302621334905325548349181⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨15877, 15886, .topPrime 15877⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15877) (hi := 15886) (p := 15877)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk171

#print axioms B699LowIndex.I11TerminalData.Chunk171.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk171.witnesses_check
