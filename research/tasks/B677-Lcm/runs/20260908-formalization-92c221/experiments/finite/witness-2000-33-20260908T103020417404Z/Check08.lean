import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data08
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data07
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups8 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row8) row8.sorted
theorem groups8_0 : B677Finite.allTree 10 0 groups8 = true := by decide +kernel
theorem groups8_1024 : B677Finite.allTree 10 1024 groups8 = true := by decide +kernel
theorem groups8_checked : B677Finite.allTree 11 0 groups8 = true :=
  (B677Finite.allTree_join groups8_0 groups8_1024)
def cover8 : ℕ → Bool := B677Finite.coverPointCheck 2000 8 (B677Finite.modValues 64 row8) row8.sorted
theorem cover8_0 : B677Finite.allTree 10 0 cover8 = true := by decide +kernel
theorem cover8_1024 : B677Finite.allTree 10 1024 cover8 = true := by decide +kernel
theorem cover8_checked : B677Finite.allTree 11 0 cover8 = true :=
  (B677Finite.allTree_join cover8_0 cover8_1024)
def step8 : ℕ → Bool := B677Finite.nextPointCheck 2000 7 64 18446744073709551557 row7 row8 transition8
theorem step8_0 : B677Finite.allTree 10 0 step8 = true := by decide +kernel
theorem step8_1024 : B677Finite.allTree 10 1024 step8 = true := by decide +kernel
theorem step8_checked : B677Finite.allTree 11 0 step8 = true :=
  (B677Finite.allTree_join step8_0 step8_1024)
theorem sorted_checked8 : B677Finite.sortedFunctionCheck 11 2000 8 (B677Finite.modValues 64 row8) row8.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups8_checked cover8_checked
theorem step_checked8 : B677Finite.witnessedModNextCheck 11 2000 7 64 18446744073709551557 row7 row8 transition8 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step8_checked
end B677FiniteWitnessGenerated
