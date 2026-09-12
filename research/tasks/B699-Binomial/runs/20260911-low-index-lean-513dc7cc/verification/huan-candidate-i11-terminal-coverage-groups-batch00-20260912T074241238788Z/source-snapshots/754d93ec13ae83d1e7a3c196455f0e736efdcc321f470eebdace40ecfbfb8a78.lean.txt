import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk064
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4439, 4439, .largeDivisor 23305992797704443226956767713541⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨4440, 4440, .largeDivisor 194698968958018604515105081373⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4441, 4442, .topPrime 4441⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4441) (hi := 4442) (p := 4441)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨4448, 4457, .topPrime 4447⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4448) (hi := 4457) (p := 4447)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨4458, 4467, .topPrime 4457⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4458) (hi := 4467) (p := 4457)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨4468, 4473, .topPrime 4463⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4468) (hi := 4473) (p := 4463)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨4474, 4474, .largeDivisor 352936402940830125236256687913⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4475, 4475, .largeDivisor 2037923100851890077977095068917⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨4476, 4476, .largeDivisor 851226558362547591361093461037⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨4477, 4477, .largeDivisor 11946524457019202402895346160071⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨4478, 4478, .largeDivisor 17963914210386832894615634689321⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨4479, 4479, .largeDivisor 24010853998305766796473717628609⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4480, 4480, .largeDivisor 5372757663527806398852924061⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨4481, 4490, .topPrime 4481⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4481) (hi := 4490) (p := 4481)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨4496, 4503, .topPrime 4493⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4496) (hi := 4503) (p := 4493)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨4504, 4504, .largeDivisor 45586866443708490607626989173⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk064

#print axioms B699LowIndex.I11TerminalData.Chunk064.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk064.witnesses_check
