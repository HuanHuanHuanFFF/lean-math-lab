import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk205
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨29568, 29575, .topPrime 29567⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29568) (hi := 29575) (p := 29567)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨29632, 29635, .topPrime 29629⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29632) (hi := 29635) (p := 29629)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨29760, 29760, .topPrime 29759⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29760) (hi := 29760) (p := 29759)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨29889, 29891, .topPrime 29881⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29889) (hi := 29891) (p := 29881)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨29892, 29892, .largeDivisor 1117371223906278916026302821515787099⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨29893, 29893, .largeDivisor 2235565089099149697930143246340367027⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨29894, 29894, .largeDivisor 23482074059567807824990759735101522103⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨29895, 29895, .largeDivisor 6264191353328689732995125706338821249⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨29896, 29896, .largeDivisor 3916560663776027025632053666486226369⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨29897, 29897, .largeDivisor 3358287611922788883050492111937898579⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨29898, 29898, .largeDivisor 186640202208443548524337250240199737⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨30132, 30132, .largeDivisor 9565831979801711288473403456856835699⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨30133, 30135, .topPrime 30133⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 30133) (hi := 30135) (p := 30133)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨30213, 30218, .topPrime 30211⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 30213) (hi := 30218) (p := 30211)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨30375, 30377, .topPrime 30367⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 30375) (hi := 30377) (p := 30367)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨30378, 30378, .largeDivisor 7845738732422133536662381329607100539⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk205

#print axioms B699LowIndex.I11TerminalData.Chunk205.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk205.witnesses_check
