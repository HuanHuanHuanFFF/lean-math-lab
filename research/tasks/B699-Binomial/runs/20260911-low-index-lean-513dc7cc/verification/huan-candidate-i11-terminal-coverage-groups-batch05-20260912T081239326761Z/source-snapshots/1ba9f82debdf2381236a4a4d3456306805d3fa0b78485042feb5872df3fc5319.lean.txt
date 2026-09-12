import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk192
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨22844, 22844, .largeDivisor 4175152378087946725659493341507460471⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨22848, 22848, .largeDivisor 610050434370743009327956203706082321⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨22849, 22849, .largeDivisor 1220688534454602593934186119492098691⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨22850, 22850, .largeDivisor 73276587448542412377239334901863799⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨22851, 22851, .largeDivisor 325830570108317311779002926997954791⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨22852, 22852, .largeDivisor 570478102062156543730751983432214441⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨22883, 22885, .topPrime 22877⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22883) (hi := 22885) (p := 22877)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨22932, 22932, .largeDivisor 145185313610513014849056226305240271⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨22933, 22933, .largeDivisor 290509972692600555757211974335404863⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨22981, 22983, .topPrime 22973⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22981) (hi := 22983) (p := 22973)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨22984, 22984, .largeDivisor 23922138775365170484680920898325331⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨22985, 22985, .largeDivisor 201042179068288279192099073801830981⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨22986, 22986, .largeDivisor 279358936529057815591197516044546423⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨23004, 23010, .topPrime 23003⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23004) (hi := 23010) (p := 23003)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨23040, 23040, .topPrime 23039⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23040) (hi := 23040) (p := 23039)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨23085, 23089, .topPrime 23081⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23085) (hi := 23089) (p := 23081)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk192

#print axioms B699LowIndex.I11TerminalData.Chunk192.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk192.witnesses_check
