import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk179
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨18630, 18630, .largeDivisor 147625784492563735700522754849301⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨18631, 18631, .largeDivisor 144758736362155524201917865557754049⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨18632, 18632, .largeDivisor 162949781047588311196842295255683509⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨18633, 18633, .largeDivisor 108697356898998066893307646421764609⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨18634, 18634, .largeDivisor 7768682920719885466089914481413773⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨18635, 18635, .largeDivisor 298493621087866114764093930641537443⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨18718, 18721, .topPrime 18713⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18718) (hi := 18721) (p := 18713)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨18752, 18759, .topPrime 18749⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18752) (hi := 18759) (p := 18749)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨18760, 18760, .topPrime 18757⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18760) (hi := 18760) (p := 18757)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨18816, 18816, .largeDivisor 138946505177372764379635980006812723⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨18817, 18817, .largeDivisor 278055555452794140947741171518472297⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨18818, 18818, .largeDivisor 417327280468230989340771523818361117⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨18819, 18819, .largeDivisor 123724846655192258430675351808335899⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨18820, 18820, .largeDivisor 43329021474706332409105138091419457⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨18821, 18821, .largeDivisor 3901892407538028144840994277600983733⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨18822, 18822, .largeDivisor 650695682443612476230195048048178511⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk179

#print axioms B699LowIndex.I11TerminalData.Chunk179.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk179.witnesses_check
