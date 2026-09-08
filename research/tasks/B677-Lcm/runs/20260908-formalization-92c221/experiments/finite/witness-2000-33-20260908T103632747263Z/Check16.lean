import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data16
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data15
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups16 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row16) row16.sorted
theorem groups16_0 : B677Finite.allTree 10 0 groups16 = true := by decide +kernel
theorem groups16_1024 : B677Finite.allTree 10 1024 groups16 = true := by decide +kernel
theorem groups16_checked : B677Finite.allTree 11 0 groups16 = true :=
  (B677Finite.allTree_join groups16_0 groups16_1024)
def cover16 : ℕ → Bool := B677Finite.coverPointCheck 2000 16 (B677Finite.modValues 64 row16) row16.sorted
theorem cover16_0 : B677Finite.allTree 10 0 cover16 = true := by decide +kernel
theorem cover16_1024 : B677Finite.allTree 10 1024 cover16 = true := by decide +kernel
theorem cover16_checked : B677Finite.allTree 11 0 cover16 = true :=
  (B677Finite.allTree_join cover16_0 cover16_1024)
def step16 : ℕ → Bool := B677Finite.nextPointCheck 2000 15 64 18446744073709551557 row15 row16 transition16
theorem step16_0 : B677Finite.allTree 10 0 step16 = true := by decide +kernel
theorem step16_1024 : B677Finite.allTree 10 1024 step16 = true := by decide +kernel
theorem step16_checked : B677Finite.allTree 11 0 step16 = true :=
  (B677Finite.allTree_join step16_0 step16_1024)
theorem sorted_checked16 : B677Finite.sortedFunctionCheck 11 2000 16 (B677Finite.modValues 64 row16) row16.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups16_checked cover16_checked
theorem step_checked16 : B677Finite.witnessedModNextCheck 11 2000 15 64 18446744073709551557 row15 row16 transition16 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step16_checked
end B677FiniteWitnessGenerated
