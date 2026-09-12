import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk077
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5461, 5461, .largeDivisor 12678296872303374246556052130193⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨5462, 5462, .largeDivisor 19055822101409199266562783911699⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨5463, 5463, .largeDivisor 8486341904295953011594724750111⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨5464, 5464, .largeDivisor 7440528267823024270756350454847⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨5475, 5481, .topPrime 5471⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5475) (hi := 5481) (p := 5471)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨5482, 5485, .topPrime 5479⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5482) (hi := 5485) (p := 5479)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨5488, 5493, .topPrime 5483⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5488) (hi := 5493) (p := 5483)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨5494, 5494, .largeDivisor 2903098063183319865389037230407⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨5495, 5495, .largeDivisor 997344411203022360757284125107⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨5496, 5496, .largeDivisor 208196782283949061634838709799⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨5497, 5497, .largeDivisor 417228476928497262780425952521⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5498, 5498, .largeDivisor 627097366362186427218912489601⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5504, 5513, .topPrime 5503⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5504) (hi := 5513) (p := 5503)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨5514, 5514, .topPrime 5507⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5514) (hi := 5514) (p := 5507)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨5525, 5530, .topPrime 5521⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5525) (hi := 5530) (p := 5521)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨5535, 5541, .topPrime 5531⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5535) (hi := 5541) (p := 5531)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk077

#print axioms B699LowIndex.I11TerminalData.Chunk077.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk077.witnesses_check
