import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk232
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨68608, 68608, .largeDivisor 27897761836079733118821183884607896003⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨68609, 68609, .largeDivisor 502240236633847916439045553696946506657⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨68610, 68610, .largeDivisor 16744025731885452920539616923058888041⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨69376, 69381, .topPrime 69371⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 69376) (hi := 69381) (p := 69371)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨69382, 69385, .topPrime 69379⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 69382) (hi := 69385) (p := 69379)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨69632, 69633, .topPrime 69623⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 69632) (hi := 69633) (p := 69623)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨69634, 69634, .largeDivisor 4926950212726407573426882090209342099⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨69635, 69635, .largeDivisor 70959292257125830687814050538102903219⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨69636, 69636, .largeDivisor 105610867650192663626926118305363207843⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨69637, 69637, .largeDivisor 211255105579997889207717062603928926107⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨69638, 69638, .largeDivisor 316932720978497414982269826481373660137⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨69639, 69639, .largeDivisor 422643721036011977594268368019309862283⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨70658, 70666, .topPrime 70657⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 70658) (hi := 70666) (p := 70657)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨71685, 71685, .largeDivisor 2067311865288685582856179006963356849547⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨71686, 71686, .largeDivisor 25845364209118366706073953312377955897563⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨71687, 71687, .largeDivisor 2713049281620160040969089021741332387037⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk232

#print axioms B699LowIndex.I11TerminalData.Chunk232.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk232.witnesses_check
