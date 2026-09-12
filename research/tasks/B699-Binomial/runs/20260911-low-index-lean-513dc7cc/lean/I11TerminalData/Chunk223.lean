import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk223
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨50307, 50307, .largeDivisor 2241117046311377598745383392178070290983⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨50308, 50308, .largeDivisor 560401795165878602290806348756856075903⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨50309, 50309, .largeDivisor 480449445527516344347372686212039200467⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨50310, 50310, .largeDivisor 5339494623151188621844993570300203047⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨50311, 50311, .topPrime 50311⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 50311) (hi := 50311) (p := 50311)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨51456, 51459, .topPrime 51449⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 51456) (hi := 51459) (p := 51449)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨51460, 51460, .largeDivisor 50931014587695337748316059279370599359⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨51759, 51759, .topPrime 51749⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 51759) (hi := 51759) (p := 51749)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨51760, 51760, .largeDivisor 17517178327961480032081967341879903213⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨52002, 52002, .largeDivisor 968075378404167858425482398662409738409⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨52003, 52003, .largeDivisor 1106605937246432223456363862080788113039⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨52004, 52004, .largeDivisor 2490390131580554844583033853368933054807⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨52005, 52005, .largeDivisor 332122267422771229225271314752859595377⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨52006, 52006, .largeDivisor 830481327030899151220764496347591889469⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨52007, 52007, .largeDivisor 69775189620187354050950402522696625841057⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨52008, 52008, .largeDivisor 2907914608668692352028184746556216477827⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk223

#print axioms B699LowIndex.I11TerminalData.Chunk223.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk223.witnesses_check
