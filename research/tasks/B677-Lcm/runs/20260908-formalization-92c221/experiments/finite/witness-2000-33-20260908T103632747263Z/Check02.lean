import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data02
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data01
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups2 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row2) row2.sorted
theorem groups2_0 : B677Finite.allTree 10 0 groups2 = true := by decide +kernel
theorem groups2_1024 : B677Finite.allTree 10 1024 groups2 = true := by decide +kernel
theorem groups2_checked : B677Finite.allTree 11 0 groups2 = true :=
  (B677Finite.allTree_join groups2_0 groups2_1024)
def cover2 : ℕ → Bool := B677Finite.coverPointCheck 2000 2 (B677Finite.modValues 64 row2) row2.sorted
theorem cover2_0 : B677Finite.allTree 10 0 cover2 = true := by decide +kernel
theorem cover2_1024 : B677Finite.allTree 10 1024 cover2 = true := by decide +kernel
theorem cover2_checked : B677Finite.allTree 11 0 cover2 = true :=
  (B677Finite.allTree_join cover2_0 cover2_1024)
def step2 : ℕ → Bool := B677Finite.nextPointCheck 2000 1 64 18446744073709551557 row1 row2 transition2
theorem step2_0 : B677Finite.allTree 10 0 step2 = true := by decide +kernel
theorem step2_1024 : B677Finite.allTree 10 1024 step2 = true := by decide +kernel
theorem step2_checked : B677Finite.allTree 11 0 step2 = true :=
  (B677Finite.allTree_join step2_0 step2_1024)
theorem sorted_checked2 : B677Finite.sortedFunctionCheck 11 2000 2 (B677Finite.modValues 64 row2) row2.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups2_checked cover2_checked
theorem step_checked2 : B677Finite.witnessedModNextCheck 11 2000 1 64 18446744073709551557 row1 row2 transition2 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step2_checked
end B677FiniteWitnessGenerated
