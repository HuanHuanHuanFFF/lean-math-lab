import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk150
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨11861, 11861, .largeDivisor 27719595144539772272475415742383237⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨11862, 11862, .largeDivisor 10789848316746432325789308313189931⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨11863, 11863, .topPrime 11863⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11863) (hi := 11863) (p := 11863)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨11875, 11877, .topPrime 11867⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11875) (hi := 11877) (p := 11867)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨11878, 11878, .largeDivisor 2759675436317414603085333283569223⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨11879, 11879, .largeDivisor 4735257042902580972129232135709779⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨11880, 11880, .largeDivisor 4388560744117313227181864815301⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨11881, 11881, .largeDivisor 43926276496089130962213762317263⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨11882, 11882, .largeDivisor 197851409145766131195232723219757⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨11883, 11883, .largeDivisor 14786593049554332937062581446669009⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨11884, 11884, .largeDivisor 3700073102857401091216451568942443⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨11885, 11885, .largeDivisor 4444200993174351891774383718734809⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨11904, 11913, .topPrime 11903⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11904) (hi := 11913) (p := 11903)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨11914, 11917, .topPrime 11909⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11914) (hi := 11917) (p := 11909)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨11934, 11943, .topPrime 11933⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11934) (hi := 11943) (p := 11933)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨11944, 11944, .topPrime 11941⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11944) (hi := 11944) (p := 11941)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk150

#print axioms B699LowIndex.I11TerminalData.Chunk150.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk150.witnesses_check
