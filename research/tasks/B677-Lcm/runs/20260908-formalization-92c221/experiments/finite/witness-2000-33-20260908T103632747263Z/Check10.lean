import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data10
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data09
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups10 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row10) row10.sorted
theorem groups10_0 : B677Finite.allTree 10 0 groups10 = true := by decide +kernel
theorem groups10_1024 : B677Finite.allTree 10 1024 groups10 = true := by decide +kernel
theorem groups10_checked : B677Finite.allTree 11 0 groups10 = true :=
  (B677Finite.allTree_join groups10_0 groups10_1024)
def cover10 : ℕ → Bool := B677Finite.coverPointCheck 2000 10 (B677Finite.modValues 64 row10) row10.sorted
theorem cover10_0 : B677Finite.allTree 10 0 cover10 = true := by decide +kernel
theorem cover10_1024 : B677Finite.allTree 10 1024 cover10 = true := by decide +kernel
theorem cover10_checked : B677Finite.allTree 11 0 cover10 = true :=
  (B677Finite.allTree_join cover10_0 cover10_1024)
def step10 : ℕ → Bool := B677Finite.nextPointCheck 2000 9 64 18446744073709551557 row9 row10 transition10
theorem step10_0 : B677Finite.allTree 10 0 step10 = true := by decide +kernel
theorem step10_1024 : B677Finite.allTree 10 1024 step10 = true := by decide +kernel
theorem step10_checked : B677Finite.allTree 11 0 step10 = true :=
  (B677Finite.allTree_join step10_0 step10_1024)
theorem sorted_checked10 : B677Finite.sortedFunctionCheck 11 2000 10 (B677Finite.modValues 64 row10) row10.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups10_checked cover10_checked
theorem step_checked10 : B677Finite.witnessedModNextCheck 11 2000 9 64 18446744073709551557 row9 row10 transition10 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step10_checked
end B677FiniteWitnessGenerated
