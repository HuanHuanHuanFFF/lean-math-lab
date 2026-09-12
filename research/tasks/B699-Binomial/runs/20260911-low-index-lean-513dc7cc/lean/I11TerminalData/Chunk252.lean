import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk252
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2703135, 2703135, .largeDivisor 842394746926802139697415587726168574569007590938839161⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨2899968, 2899968, .largeDivisor 1740590084251324817909869359987635423672988765683050697⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2899969, 2899969, .largeDivisor 3481193373170390868329310933478335280685812386130496267⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2899970, 2899970, .largeDivisor 1044361973365099824490168843189765920545473437252753083⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨2899971, 2899971, .largeDivisor 32491384637996437225779445252849588215915989714989364261⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨2899972, 2899972, .largeDivisor 8122876970709244370399987224724464056386131100190410893⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨9764867, 9764873, .topPrime 9764863⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9764867) (hi := 9764873) (p := 9764863)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨9764874, 9764874, .topPrime 9764873⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9764874) (hi := 9764874) (p := 9764873)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨19529734, 19529738, .topPrime 19529729⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19529734) (hi := 19529738) (p := 19529729)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨29294601, 29294602, .topPrime 29294593⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29294601) (hi := 29294602) (p := 29294593)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk252

#print axioms B699LowIndex.I11TerminalData.Chunk252.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk252.witnesses_check
