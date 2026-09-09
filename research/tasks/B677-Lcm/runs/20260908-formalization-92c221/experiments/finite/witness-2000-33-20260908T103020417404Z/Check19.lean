import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data19
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data18
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups19 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row19) row19.sorted
theorem groups19_0 : B677Finite.allTree 10 0 groups19 = true := by decide +kernel
theorem groups19_1024 : B677Finite.allTree 10 1024 groups19 = true := by decide +kernel
theorem groups19_checked : B677Finite.allTree 11 0 groups19 = true :=
  (B677Finite.allTree_join groups19_0 groups19_1024)
def cover19 : ℕ → Bool := B677Finite.coverPointCheck 2000 19 (B677Finite.modValues 64 row19) row19.sorted
theorem cover19_0 : B677Finite.allTree 10 0 cover19 = true := by decide +kernel
theorem cover19_1024 : B677Finite.allTree 10 1024 cover19 = true := by decide +kernel
theorem cover19_checked : B677Finite.allTree 11 0 cover19 = true :=
  (B677Finite.allTree_join cover19_0 cover19_1024)
def step19 : ℕ → Bool := B677Finite.nextPointCheck 2000 18 64 18446744073709551557 row18 row19 transition19
theorem step19_0 : B677Finite.allTree 10 0 step19 = true := by decide +kernel
theorem step19_1024 : B677Finite.allTree 10 1024 step19 = true := by decide +kernel
theorem step19_checked : B677Finite.allTree 11 0 step19 = true :=
  (B677Finite.allTree_join step19_0 step19_1024)
theorem sorted_checked19 : B677Finite.sortedFunctionCheck 11 2000 19 (B677Finite.modValues 64 row19) row19.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups19_checked cover19_checked
theorem step_checked19 : B677Finite.witnessedModNextCheck 11 2000 18 64 18446744073709551557 row18 row19 transition19 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step19_checked
end B677FiniteWitnessGenerated
