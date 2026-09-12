import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk032
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2495, 2495, .largeDivisor 16329211084488808054485504461⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨2496, 2496, .largeDivisor 2989855550681049362088895183⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2497, 2497, .largeDivisor 6006170000040692081364417757⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2498, 2498, .largeDivisor 9049102931303768889775823617⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨2499, 2499, .largeDivisor 494645497852617592045623799⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨2500, 2500, .largeDivisor 198732622680842744895791⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨2501, 2501, .largeDivisor 5988316738852863915474377⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨2502, 2502, .largeDivisor 334153362786249732738233⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨2503, 2513, .topPrime 2503⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2503) (hi := 2513) (p := 2503)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨2514, 2514, .largeDivisor 205478305291848328850823661⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2515, 2515, .largeDivisor 330209544925877665852921091⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2516, 2516, .largeDivisor 1243723375798664980966990217⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2517, 2517, .largeDivisor 5829519063101005134253099397⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2518, 2518, .largeDivisor 2927548663918693842849881189⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2519, 2519, .largeDivisor 35284665475651625790138041699⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨2520, 2520, .largeDivisor 14063238531547080825084911⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk032

#print axioms B699LowIndex.I11TerminalData.Chunk032.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk032.witnesses_check
