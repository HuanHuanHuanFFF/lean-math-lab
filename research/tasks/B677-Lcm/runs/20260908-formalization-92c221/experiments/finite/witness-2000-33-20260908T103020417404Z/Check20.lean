import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data20
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data19
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups20 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row20) row20.sorted
theorem groups20_0 : B677Finite.allTree 10 0 groups20 = true := by decide +kernel
theorem groups20_1024 : B677Finite.allTree 10 1024 groups20 = true := by decide +kernel
theorem groups20_checked : B677Finite.allTree 11 0 groups20 = true :=
  (B677Finite.allTree_join groups20_0 groups20_1024)
def cover20 : ℕ → Bool := B677Finite.coverPointCheck 2000 20 (B677Finite.modValues 64 row20) row20.sorted
theorem cover20_0 : B677Finite.allTree 10 0 cover20 = true := by decide +kernel
theorem cover20_1024 : B677Finite.allTree 10 1024 cover20 = true := by decide +kernel
theorem cover20_checked : B677Finite.allTree 11 0 cover20 = true :=
  (B677Finite.allTree_join cover20_0 cover20_1024)
def step20 : ℕ → Bool := B677Finite.nextPointCheck 2000 19 64 18446744073709551557 row19 row20 transition20
theorem step20_0 : B677Finite.allTree 10 0 step20 = true := by decide +kernel
theorem step20_1024 : B677Finite.allTree 10 1024 step20 = true := by decide +kernel
theorem step20_checked : B677Finite.allTree 11 0 step20 = true :=
  (B677Finite.allTree_join step20_0 step20_1024)
theorem sorted_checked20 : B677Finite.sortedFunctionCheck 11 2000 20 (B677Finite.modValues 64 row20) row20.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups20_checked cover20_checked
theorem step_checked20 : B677Finite.witnessedModNextCheck 11 2000 19 64 18446744073709551557 row19 row20 transition20 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step20_checked
end B677FiniteWitnessGenerated
