import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk115
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8329, 8335, .topPrime 8329⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8329) (hi := 8335) (p := 8329)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨8350, 8350, .largeDivisor 126814795579945934465342593772803⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨8351, 8351, .largeDivisor 1088417634006298559835638232884561⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨8352, 8352, .largeDivisor 3784211891401829305267175249209⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨8353, 8360, .topPrime 8353⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8353) (hi := 8360) (p := 8353)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨8375, 8379, .topPrime 8369⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8375) (hi := 8379) (p := 8369)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨8380, 8387, .topPrime 8377⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8380) (hi := 8387) (p := 8377)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨8388, 8389, .topPrime 8387⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8388) (hi := 8389) (p := 8387)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨8400, 8400, .largeDivisor 14510123453489291653168201705907⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨8401, 8401, .largeDivisor 145291474532495279115930944614213⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨8402, 8402, .largeDivisor 218222911873797879001081837084129⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨8403, 8403, .largeDivisor 582690539712590904749313847161721⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨8404, 8404, .largeDivisor 1021044890689035438597421511998979⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨8405, 8405, .largeDivisor 1226859514830785255384035426497701⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨8406, 8406, .largeDivisor 341240853737925380741122420592273⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨8407, 8407, .largeDivisor 195250245516554731905711304016827⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk115

#print axioms B699LowIndex.I11TerminalData.Chunk115.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk115.witnesses_check
