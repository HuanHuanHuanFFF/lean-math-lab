import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk236
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨89188, 89188, .largeDivisor 159973485881698328131182368805625308149191⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨89189, 89190, .topPrime 89189⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 89189) (hi := 89190) (p := 89189)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨89866, 89866, .largeDivisor 32600942002056056249703949214594935114673⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨90625, 90629, .topPrime 90619⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 90625) (hi := 90629) (p := 90619)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨90630, 90630, .largeDivisor 1683224167197924259200363044618871736081⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨90631, 90634, .topPrime 90631⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 90631) (hi := 90634) (p := 90631)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨90882, 90882, .largeDivisor 8034406324458212191871488955677879897297⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨90883, 90883, .largeDivisor 64283031075423514273603004732711749159789⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨90884, 90884, .largeDivisor 144654327925591528950236096913136936977277⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨90885, 90885, .largeDivisor 135027048667564177154441613186981466822573⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨90886, 90886, .largeDivisor 8440212066850232327963260286184317464674257⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨90887, 90890, .topPrime 90887⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 90887) (hi := 90890) (p := 90887)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨95013, 95019, .topPrime 95009⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 95013) (hi := 95019) (p := 95009)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨95020, 95020, .largeDivisor 256891091676291737340984657529671432397781⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨95021, 95021, .topPrime 95021⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 95021) (hi := 95021) (p := 95021)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨95744, 95747, .topPrime 95737⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 95744) (hi := 95747) (p := 95737)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk236

#print axioms B699LowIndex.I11TerminalData.Chunk236.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk236.witnesses_check
