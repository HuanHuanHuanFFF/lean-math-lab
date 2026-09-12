import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.UpperHeight.I11SmallPart

/-! Closed H/M and positive-exponent cutoff data for the five exact CRT stages.
These numerical obligations do not certify the exponent grids or original theorem. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 10000
set_option exponentiation.threshold 1024

namespace B699LowIndex.I11CrtStageMetadata
open B699LowIndex.UpperHeight

namespace Stage00
def H : ℕ := 649037107316853453566312041152512
def M : ℕ := 118703030
def upper : ℕ := 1458309064184540963
theorem cap_positive : 1 ≤ M := by decide +kernel
theorem cofactor_certificate :
    (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33 := by
  decide +kernel
def exponentMax2 : ℕ := 108
theorem cutoff_2 : H ≤ (2 : ℕ) ^ (exponentMax2 + 1) := by
  decide +kernel
def exponentMax3 : ℕ := 68
theorem cutoff_3 : H ≤ (3 : ℕ) ^ (exponentMax3 + 1) := by
  decide +kernel
def exponentMax5 : ℕ := 46
theorem cutoff_5 : H ≤ (5 : ℕ) ^ (exponentMax5 + 1) := by
  decide +kernel
def exponentMax7 : ℕ := 38
theorem cutoff_7 : H ≤ (7 : ℕ) ^ (exponentMax7 + 1) := by
  decide +kernel
end Stage00

namespace Stage01
def H : ℕ := 1458309064184540964
def M : ℕ := 92731
def upper : ℕ := 304531636234
theorem cap_positive : 1 ≤ M := by decide +kernel
theorem cofactor_certificate :
    (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33 := by
  decide +kernel
def exponentMax2 : ℕ := 60
theorem cutoff_2 : H ≤ (2 : ℕ) ^ (exponentMax2 + 1) := by
  decide +kernel
def exponentMax3 : ℕ := 38
theorem cutoff_3 : H ≤ (3 : ℕ) ^ (exponentMax3 + 1) := by
  decide +kernel
def exponentMax5 : ℕ := 25
theorem cutoff_5 : H ≤ (5 : ℕ) ^ (exponentMax5 + 1) := by
  decide +kernel
def exponentMax7 : ℕ := 21
theorem cutoff_7 : H ≤ (7 : ℕ) ^ (exponentMax7 + 1) := by
  decide +kernel
end Stage01

namespace Stage02
def H : ℕ := 304531636235
def M : ℕ := 3550
def upper : ℕ := 207734385
theorem cap_positive : 1 ≤ M := by decide +kernel
theorem cofactor_certificate :
    (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33 := by
  decide +kernel
def exponentMax2 : ℕ := 38
theorem cutoff_2 : H ≤ (2 : ℕ) ^ (exponentMax2 + 1) := by
  decide +kernel
def exponentMax3 : ℕ := 24
theorem cutoff_3 : H ≤ (3 : ℕ) ^ (exponentMax3 + 1) := by
  decide +kernel
def exponentMax5 : ℕ := 16
theorem cutoff_5 : H ≤ (5 : ℕ) ^ (exponentMax5 + 1) := by
  decide +kernel
def exponentMax7 : ℕ := 13
theorem cutoff_7 : H ≤ (7 : ℕ) ^ (exponentMax7 + 1) := by
  decide +kernel
end Stage02

namespace Stage03
def H : ℕ := 207734386
def M : ℕ := 757
def upper : ℕ := 29294602
theorem cap_positive : 1 ≤ M := by decide +kernel
theorem cofactor_certificate :
    (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33 := by
  decide +kernel
def exponentMax2 : ℕ := 27
theorem cutoff_2 : H ≤ (2 : ℕ) ^ (exponentMax2 + 1) := by
  decide +kernel
def exponentMax3 : ℕ := 17
theorem cutoff_3 : H ≤ (3 : ℕ) ^ (exponentMax3 + 1) := by
  decide +kernel
def exponentMax5 : ℕ := 11
theorem cutoff_5 : H ≤ (5 : ℕ) ^ (exponentMax5 + 1) := by
  decide +kernel
def exponentMax7 : ℕ := 9
theorem cutoff_7 : H ≤ (7 : ℕ) ^ (exponentMax7 + 1) := by
  decide +kernel
end Stage03

namespace Stage04
def H : ℕ := 29294603
def M : ℕ := 500
def upper : ℕ := 29294602
theorem cap_positive : 1 ≤ M := by decide +kernel
theorem cofactor_certificate :
    (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33 := by
  decide +kernel
def exponentMax2 : ℕ := 24
theorem cutoff_2 : H ≤ (2 : ℕ) ^ (exponentMax2 + 1) := by
  decide +kernel
def exponentMax3 : ℕ := 15
theorem cutoff_3 : H ≤ (3 : ℕ) ^ (exponentMax3 + 1) := by
  decide +kernel
def exponentMax5 : ℕ := 10
theorem cutoff_5 : H ≤ (5 : ℕ) ^ (exponentMax5 + 1) := by
  decide +kernel
def exponentMax7 : ℕ := 8
theorem cutoff_7 : H ≤ (7 : ℕ) ^ (exponentMax7 + 1) := by
  decide +kernel
end Stage04

theorem initial_height : Stage00.H = (2 : ℕ) ^ 109 := by decide +kernel
theorem next_height_00 : Stage01.H = Stage00.upper + 1 := by decide +kernel
theorem next_height_01 : Stage02.H = Stage01.upper + 1 := by decide +kernel
theorem next_height_02 : Stage03.H = Stage02.upper + 1 := by decide +kernel
theorem next_height_03 : Stage04.H = Stage03.upper + 1 := by decide +kernel

end B699LowIndex.I11CrtStageMetadata

#print axioms B699LowIndex.I11CrtStageMetadata.Stage00.cap_positive
#print axioms B699LowIndex.I11CrtStageMetadata.Stage00.cofactor_certificate
#print axioms B699LowIndex.I11CrtStageMetadata.Stage00.cutoff_2
#print axioms B699LowIndex.I11CrtStageMetadata.Stage00.cutoff_3
#print axioms B699LowIndex.I11CrtStageMetadata.Stage00.cutoff_5
#print axioms B699LowIndex.I11CrtStageMetadata.Stage00.cutoff_7
#print axioms B699LowIndex.I11CrtStageMetadata.Stage01.cap_positive
#print axioms B699LowIndex.I11CrtStageMetadata.Stage01.cofactor_certificate
#print axioms B699LowIndex.I11CrtStageMetadata.Stage01.cutoff_2
#print axioms B699LowIndex.I11CrtStageMetadata.Stage01.cutoff_3
#print axioms B699LowIndex.I11CrtStageMetadata.Stage01.cutoff_5
#print axioms B699LowIndex.I11CrtStageMetadata.Stage01.cutoff_7
#print axioms B699LowIndex.I11CrtStageMetadata.Stage02.cap_positive
#print axioms B699LowIndex.I11CrtStageMetadata.Stage02.cofactor_certificate
#print axioms B699LowIndex.I11CrtStageMetadata.Stage02.cutoff_2
#print axioms B699LowIndex.I11CrtStageMetadata.Stage02.cutoff_3
#print axioms B699LowIndex.I11CrtStageMetadata.Stage02.cutoff_5
#print axioms B699LowIndex.I11CrtStageMetadata.Stage02.cutoff_7
#print axioms B699LowIndex.I11CrtStageMetadata.Stage03.cap_positive
#print axioms B699LowIndex.I11CrtStageMetadata.Stage03.cofactor_certificate
#print axioms B699LowIndex.I11CrtStageMetadata.Stage03.cutoff_2
#print axioms B699LowIndex.I11CrtStageMetadata.Stage03.cutoff_3
#print axioms B699LowIndex.I11CrtStageMetadata.Stage03.cutoff_5
#print axioms B699LowIndex.I11CrtStageMetadata.Stage03.cutoff_7
#print axioms B699LowIndex.I11CrtStageMetadata.Stage04.cap_positive
#print axioms B699LowIndex.I11CrtStageMetadata.Stage04.cofactor_certificate
#print axioms B699LowIndex.I11CrtStageMetadata.Stage04.cutoff_2
#print axioms B699LowIndex.I11CrtStageMetadata.Stage04.cutoff_3
#print axioms B699LowIndex.I11CrtStageMetadata.Stage04.cutoff_5
#print axioms B699LowIndex.I11CrtStageMetadata.Stage04.cutoff_7
#print axioms B699LowIndex.I11CrtStageMetadata.initial_height
#print axioms B699LowIndex.I11CrtStageMetadata.next_height_00
#print axioms B699LowIndex.I11CrtStageMetadata.next_height_01
#print axioms B699LowIndex.I11CrtStageMetadata.next_height_02
#print axioms B699LowIndex.I11CrtStageMetadata.next_height_03
