import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data28
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data27
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups28 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row28) row28.sorted
theorem groups28_0 : B677Finite.allTree 10 0 groups28 = true := by decide +kernel
theorem groups28_1024 : B677Finite.allTree 10 1024 groups28 = true := by decide +kernel
theorem groups28_checked : B677Finite.allTree 11 0 groups28 = true :=
  (B677Finite.allTree_join groups28_0 groups28_1024)
def cover28 : ℕ → Bool := B677Finite.coverPointCheck 2000 28 (B677Finite.modValues 64 row28) row28.sorted
theorem cover28_0 : B677Finite.allTree 10 0 cover28 = true := by decide +kernel
theorem cover28_1024 : B677Finite.allTree 10 1024 cover28 = true := by decide +kernel
theorem cover28_checked : B677Finite.allTree 11 0 cover28 = true :=
  (B677Finite.allTree_join cover28_0 cover28_1024)
def step28 : ℕ → Bool := B677Finite.nextPointCheck 2000 27 64 18446744073709551557 row27 row28 transition28
theorem step28_0 : B677Finite.allTree 10 0 step28 = true := by decide +kernel
theorem step28_1024 : B677Finite.allTree 10 1024 step28 = true := by decide +kernel
theorem step28_checked : B677Finite.allTree 11 0 step28 = true :=
  (B677Finite.allTree_join step28_0 step28_1024)
theorem sorted_checked28 : B677Finite.sortedFunctionCheck 11 2000 28 (B677Finite.modValues 64 row28) row28.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups28_checked cover28_checked
theorem step_checked28 : B677Finite.witnessedModNextCheck 11 2000 27 64 18446744073709551557 row27 row28 transition28 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step28_checked
end B677FiniteWitnessGenerated
