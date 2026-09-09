import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data21
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data20
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups21 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row21) row21.sorted
theorem groups21_0 : B677Finite.allTree 10 0 groups21 = true := by decide +kernel
theorem groups21_1024 : B677Finite.allTree 10 1024 groups21 = true := by decide +kernel
theorem groups21_checked : B677Finite.allTree 11 0 groups21 = true :=
  (B677Finite.allTree_join groups21_0 groups21_1024)
def cover21 : ℕ → Bool := B677Finite.coverPointCheck 2000 21 (B677Finite.modValues 64 row21) row21.sorted
theorem cover21_0 : B677Finite.allTree 10 0 cover21 = true := by decide +kernel
theorem cover21_1024 : B677Finite.allTree 10 1024 cover21 = true := by decide +kernel
theorem cover21_checked : B677Finite.allTree 11 0 cover21 = true :=
  (B677Finite.allTree_join cover21_0 cover21_1024)
def step21 : ℕ → Bool := B677Finite.nextPointCheck 2000 20 64 18446744073709551557 row20 row21 transition21
theorem step21_0 : B677Finite.allTree 10 0 step21 = true := by decide +kernel
theorem step21_1024 : B677Finite.allTree 10 1024 step21 = true := by decide +kernel
theorem step21_checked : B677Finite.allTree 11 0 step21 = true :=
  (B677Finite.allTree_join step21_0 step21_1024)
theorem sorted_checked21 : B677Finite.sortedFunctionCheck 11 2000 21 (B677Finite.modValues 64 row21) row21.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups21_checked cover21_checked
theorem step_checked21 : B677Finite.witnessedModNextCheck 11 2000 20 64 18446744073709551557 row20 row21 transition21 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step21_checked
end B677FiniteWitnessGenerated
