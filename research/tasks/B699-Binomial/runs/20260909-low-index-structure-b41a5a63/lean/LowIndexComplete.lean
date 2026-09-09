import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage00
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage01
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage02
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage03
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage04
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage05
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage06
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.Coverage07

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def allFiniteCoverRows : List FiniteCoverRow :=
  coverRows00 ++ coverRows01 ++ coverRows02 ++ coverRows03 ++ coverRows04 ++ coverRows05 ++ coverRows06 ++ coverRows07

theorem allFiniteCoverRows_checked :
    allFiniteCoverRows.all finiteCoverRowCheck = true := by
  simp only [allFiniteCoverRows, List.all_append,
    coverRows00_checked,
    coverRows01_checked,
    coverRows02_checked,
    coverRows03_checked,
    coverRows04_checked,
    coverRows05_checked,
    coverRows06_checked,
    coverRows07_checked,
    Bool.true_and]

theorem allFiniteCoverRows_length : allFiniteCoverRows.length = 151 := by
  decide

theorem allFiniteCoverRows_indices :
    allFiniteCoverRows.map (fun row => row.height.i) = [29, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184] := by
  decide

theorem common_of_low_index_finite_cover {n i j : ℕ}
    (hiIndex : i = 29 ∨ 35 ≤ i ∧ i ≤ 184)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧
      p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  have hilow : 29 ≤ i := by omega
  have hiupper : i ≤ 184 := by omega
  have hmemIndices : i ∈ allFiniteCoverRows.map (fun row => row.height.i) := by
    rw [allFiniteCoverRows_indices]
    interval_cases i <;> simp_all
  obtain ⟨row, hrow, hrowIndex⟩ := List.mem_map.mp hmemIndices
  have hall := List.all_eq_true.mp allFiniteCoverRows_checked
  have hcheck := hall row hrow
  exact common_of_finite_cover_row_checked hcheck hij hjn

#print axioms B699LowIndex.allFiniteCoverRows_checked
#print axioms B699LowIndex.allFiniteCoverRows_indices
#print axioms B699LowIndex.common_of_low_index_finite_cover

end B699LowIndex
