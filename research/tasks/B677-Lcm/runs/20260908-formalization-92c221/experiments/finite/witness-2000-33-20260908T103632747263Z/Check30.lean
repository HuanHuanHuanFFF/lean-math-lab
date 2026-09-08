import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data30
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data29
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups30 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row30) row30.sorted
theorem groups30_0 : B677Finite.allTree 10 0 groups30 = true := by decide +kernel
theorem groups30_1024 : B677Finite.allTree 10 1024 groups30 = true := by decide +kernel
theorem groups30_checked : B677Finite.allTree 11 0 groups30 = true :=
  (B677Finite.allTree_join groups30_0 groups30_1024)
def cover30 : ℕ → Bool := B677Finite.coverPointCheck 2000 30 (B677Finite.modValues 64 row30) row30.sorted
theorem cover30_0 : B677Finite.allTree 10 0 cover30 = true := by decide +kernel
theorem cover30_1024 : B677Finite.allTree 10 1024 cover30 = true := by decide +kernel
theorem cover30_checked : B677Finite.allTree 11 0 cover30 = true :=
  (B677Finite.allTree_join cover30_0 cover30_1024)
def step30 : ℕ → Bool := B677Finite.nextPointCheck 2000 29 64 18446744073709551557 row29 row30 transition30
theorem step30_0 : B677Finite.allTree 10 0 step30 = true := by decide +kernel
theorem step30_1024 : B677Finite.allTree 10 1024 step30 = true := by decide +kernel
theorem step30_checked : B677Finite.allTree 11 0 step30 = true :=
  (B677Finite.allTree_join step30_0 step30_1024)
theorem sorted_checked30 : B677Finite.sortedFunctionCheck 11 2000 30 (B677Finite.modValues 64 row30) row30.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups30_checked cover30_checked
theorem step_checked30 : B677Finite.witnessedModNextCheck 11 2000 29 64 18446744073709551557 row29 row30 transition30 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step30_checked
end B677FiniteWitnessGenerated
