import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk063
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4387, 4387, .largeDivisor 23881296322877284299527203816001⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨4388, 4388, .largeDivisor 17955984966549952622742524048083⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4389, 4389, .largeDivisor 1714390524444467838352301291023⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4390, 4390, .largeDivisor 171869705464974053673592205243⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨4391, 4394, .topPrime 4391⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4391) (hi := 4394) (p := 4391)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨4400, 4407, .topPrime 4397⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4400) (hi := 4407) (p := 4397)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨4408, 4408, .largeDivisor 419513647245980223165145104851⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4409, 4419, .topPrime 4409⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4409) (hi := 4419) (p := 4409)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨4420, 4420, .largeDivisor 4410849822399295878062720611⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨4421, 4431, .topPrime 4421⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4421) (hi := 4431) (p := 4421)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨4432, 4433, .topPrime 4423⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4432) (hi := 4433) (p := 4423)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨4434, 4434, .largeDivisor 63940350258904173638516234003⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4435, 4435, .largeDivisor 717912540248708886295745564059⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨4436, 4436, .largeDivisor 13494322154844375506813251365109⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨4437, 4437, .largeDivisor 3006191062963523327997710313149⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨4438, 4438, .largeDivisor 215261478870439777496108915579⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk063

#print axioms B699LowIndex.I11TerminalData.Chunk063.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk063.witnesses_check
