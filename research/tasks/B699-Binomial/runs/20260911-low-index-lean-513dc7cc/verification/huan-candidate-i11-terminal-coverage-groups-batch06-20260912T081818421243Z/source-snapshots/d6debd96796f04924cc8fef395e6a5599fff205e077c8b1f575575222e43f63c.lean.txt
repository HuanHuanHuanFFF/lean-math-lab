import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk210
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨32250, 32250, .largeDivisor 476963430789496320489367822799641727⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨32251, 32252, .topPrime 32251⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32251) (hi := 32252) (p := 32251)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨32256, 32260, .topPrime 32251⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32256) (hi := 32260) (p := 32251)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨32384, 32385, .topPrime 32381⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32384) (hi := 32385) (p := 32381)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨32643, 32643, .topPrime 32633⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32643) (hi := 32643) (p := 32633)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨32644, 32644, .largeDivisor 4416604125771624551306405352074678677⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨32645, 32645, .largeDivisor 779351576680079370148095149829610191409⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨32646, 32646, .largeDivisor 649678555035439229810906344449656664847⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨32647, 32650, .topPrime 32647⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32647) (hi := 32650) (p := 32647)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨32896, 32896, .topPrime 32887⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32896) (hi := 32896) (p := 32887)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨33129, 33129, .topPrime 33119⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 33129) (hi := 33129) (p := 33119)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨33130, 33130, .largeDivisor 116398118969146476449323446080526179⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨33131, 33131, .largeDivisor 23952708568737837958028168273875235009⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨33132, 33132, .largeDivisor 1996721969695515552130544748170934569⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨33133, 33133, .largeDivisor 3994770184283649344166495932682058757⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨33134, 33134, .largeDivisor 5994145244364388976071582113644023859⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk210

#print axioms B699LowIndex.I11TerminalData.Chunk210.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk210.witnesses_check
