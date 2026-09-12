import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk030
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2332, 2332, .largeDivisor 71797328860298809876459793⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨2333, 2343, .topPrime 2333⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2333) (hi := 2343) (p := 2333)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨2344, 2351, .topPrime 2341⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2344) (hi := 2351) (p := 2341)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨2352, 2361, .topPrime 2351⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2352) (hi := 2361) (p := 2351)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨2362, 2367, .topPrime 2357⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2362) (hi := 2367) (p := 2357)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨2368, 2368, .largeDivisor 79693044548525222244666457⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨2369, 2369, .largeDivisor 1441166584240124057233701043⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨2370, 2370, .largeDivisor 337840237848575075731342381⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨2371, 2381, .topPrime 2371⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2371) (hi := 2381) (p := 2371)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨2382, 2391, .topPrime 2381⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2382) (hi := 2391) (p := 2381)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨2392, 2399, .topPrime 2389⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2392) (hi := 2399) (p := 2389)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨2400, 2409, .topPrime 2399⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2400) (hi := 2409) (p := 2399)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨2410, 2410, .largeDivisor 22562196827632449819637⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2411, 2421, .topPrime 2411⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2411) (hi := 2421) (p := 2411)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨2422, 2427, .topPrime 2417⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2422) (hi := 2427) (p := 2417)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨2428, 2433, .topPrime 2423⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2428) (hi := 2433) (p := 2423)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk030

#print axioms B699LowIndex.I11TerminalData.Chunk030.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk030.witnesses_check
