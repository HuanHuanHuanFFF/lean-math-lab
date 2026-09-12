import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk067
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4624, 4631, .topPrime 4621⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4624) (hi := 4631) (p := 4621)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨4632, 4632, .largeDivisor 434466619422326761566882702779⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4633, 4633, .largeDivisor 871001232273318860380513873637⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4634, 4634, .largeDivisor 187087221208610345740395906667⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨4644, 4653, .topPrime 4643⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4644) (hi := 4653) (p := 4643)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨4654, 4661, .topPrime 4651⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4654) (hi := 4661) (p := 4651)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨4662, 4665, .topPrime 4657⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4662) (hi := 4665) (p := 4657)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨4672, 4673, .topPrime 4663⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4672) (hi := 4673) (p := 4663)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨4674, 4682, .topPrime 4673⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4674) (hi := 4682) (p := 4673)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨4698, 4698, .topPrime 4691⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4698) (hi := 4698) (p := 4691)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨4700, 4701, .topPrime 4691⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4700) (hi := 4701) (p := 4691)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨4702, 4702, .largeDivisor 1138873798481302534182321967879⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4703, 4713, .topPrime 4703⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4703) (hi := 4713) (p := 4703)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨4714, 4714, .largeDivisor 134459498335970410753664945951⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨4725, 4733, .topPrime 4723⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4725) (hi := 4733) (p := 4723)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨4734, 4735, .topPrime 4733⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4734) (hi := 4735) (p := 4733)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk067

#print axioms B699LowIndex.I11TerminalData.Chunk067.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk067.witnesses_check
