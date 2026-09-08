import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data33
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data32
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups33 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row33) row33.sorted
theorem groups33_0 : B677Finite.allTree 10 0 groups33 = true := by decide +kernel
theorem groups33_1024 : B677Finite.allTree 10 1024 groups33 = true := by decide +kernel
theorem groups33_checked : B677Finite.allTree 11 0 groups33 = true :=
  (B677Finite.allTree_join groups33_0 groups33_1024)
def cover33 : ℕ → Bool := B677Finite.coverPointCheck 2000 33 (B677Finite.modValues 64 row33) row33.sorted
theorem cover33_0 : B677Finite.allTree 10 0 cover33 = true := by decide +kernel
theorem cover33_1024 : B677Finite.allTree 10 1024 cover33 = true := by decide +kernel
theorem cover33_checked : B677Finite.allTree 11 0 cover33 = true :=
  (B677Finite.allTree_join cover33_0 cover33_1024)
def step33 : ℕ → Bool := B677Finite.nextPointCheck 2000 32 64 18446744073709551557 row32 row33 transition33
theorem step33_0 : B677Finite.allTree 10 0 step33 = true := by decide +kernel
theorem step33_1024 : B677Finite.allTree 10 1024 step33 = true := by decide +kernel
theorem step33_checked : B677Finite.allTree 11 0 step33 = true :=
  (B677Finite.allTree_join step33_0 step33_1024)
theorem sorted_checked33 : B677Finite.sortedFunctionCheck 11 2000 33 (B677Finite.modValues 64 row33) row33.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups33_checked cover33_checked
theorem step_checked33 : B677Finite.witnessedModNextCheck 11 2000 32 64 18446744073709551557 row32 row33 transition33 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step33_checked
end B677FiniteWitnessGenerated
