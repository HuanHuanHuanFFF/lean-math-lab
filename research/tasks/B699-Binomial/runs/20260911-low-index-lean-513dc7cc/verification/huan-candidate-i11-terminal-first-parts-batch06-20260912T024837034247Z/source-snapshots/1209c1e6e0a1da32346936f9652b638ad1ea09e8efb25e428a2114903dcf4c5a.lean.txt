import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk048
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3444, 3444, .largeDivisor 118655237951581427493790131649⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨3445, 3445, .largeDivisor 47614128682958417905195923533⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨3446, 3446, .largeDivisor 358249535898416393234290725971⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨3447, 3447, .largeDivisor 159731748834800324340783874327⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3448, 3448, .largeDivisor 140212594191036537252297046507⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3449, 3459, .topPrime 3449⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3449) (hi := 3459) (p := 3449)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨3460, 3467, .topPrime 3457⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3460) (hi := 3467) (p := 3457)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨3468, 3477, .topPrime 3467⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3468) (hi := 3477) (p := 3467)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨3478, 3479, .topPrime 3469⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3478) (hi := 3479) (p := 3469)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨3480, 3480, .largeDivisor 380161275440025741140830819⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3481, 3481, .largeDivisor 3813663976388269754787412337⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨3482, 3482, .largeDivisor 5738624877175434436547005081⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨3483, 3483, .largeDivisor 7960028055436892928113587693⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨3484, 3484, .largeDivisor 1996309944222727826198368811⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨3485, 3485, .largeDivisor 7209471663850991165079083219⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨3486, 3486, .largeDivisor 4304936317263541487061610843⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk048

#print axioms B699LowIndex.I11TerminalData.Chunk048.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk048.witnesses_check
