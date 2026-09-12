import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk207
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨30784, 30790, .topPrime 30781⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 30784) (hi := 30790) (p := 30781)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨30870, 30871, .topPrime 30869⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 30870) (hi := 30871) (p := 30869)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨30875, 30880, .topPrime 30871⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 30875) (hi := 30880) (p := 30871)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨31104, 31104, .largeDivisor 605578764394456282395269405242819249⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨31105, 31105, .largeDivisor 1696220393200320816200347127427095249⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨31106, 31106, .largeDivisor 38178459877633270122089723405026935467⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨31107, 31107, .largeDivisor 101845240666627058887560674552797605829⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨31108, 31108, .largeDivisor 3638616663363754137829369695731361227⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨31109, 31109, .largeDivisor 21839422299938843811254845044280709321⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨31110, 31110, .largeDivisor 728238236761200714887014833625489423⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨31111, 31111, .largeDivisor 72849581298642171835530284530297753823⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨31112, 31112, .largeDivisor 191297786408115736845629491248026984887⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨31113, 31113, .largeDivisor 42525654145254716884788190550088694409⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨31114, 31114, .largeDivisor 21270346961313301950829498131618487571⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨31428, 31428, .largeDivisor 57011616592713148841987665585100000501⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨31429, 31429, .largeDivisor 114063154745202212423122435653071991581⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk207

#print axioms B699LowIndex.I11TerminalData.Chunk207.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk207.witnesses_check
