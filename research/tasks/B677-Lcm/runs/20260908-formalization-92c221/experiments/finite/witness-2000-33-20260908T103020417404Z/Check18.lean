import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data18
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data17
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups18 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row18) row18.sorted
theorem groups18_0 : B677Finite.allTree 10 0 groups18 = true := by decide +kernel
theorem groups18_1024 : B677Finite.allTree 10 1024 groups18 = true := by decide +kernel
theorem groups18_checked : B677Finite.allTree 11 0 groups18 = true :=
  (B677Finite.allTree_join groups18_0 groups18_1024)
def cover18 : ℕ → Bool := B677Finite.coverPointCheck 2000 18 (B677Finite.modValues 64 row18) row18.sorted
theorem cover18_0 : B677Finite.allTree 10 0 cover18 = true := by decide +kernel
theorem cover18_1024 : B677Finite.allTree 10 1024 cover18 = true := by decide +kernel
theorem cover18_checked : B677Finite.allTree 11 0 cover18 = true :=
  (B677Finite.allTree_join cover18_0 cover18_1024)
def step18 : ℕ → Bool := B677Finite.nextPointCheck 2000 17 64 18446744073709551557 row17 row18 transition18
theorem step18_0 : B677Finite.allTree 10 0 step18 = true := by decide +kernel
theorem step18_1024 : B677Finite.allTree 10 1024 step18 = true := by decide +kernel
theorem step18_checked : B677Finite.allTree 11 0 step18 = true :=
  (B677Finite.allTree_join step18_0 step18_1024)
theorem sorted_checked18 : B677Finite.sortedFunctionCheck 11 2000 18 (B677Finite.modValues 64 row18) row18.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups18_checked cover18_checked
theorem step_checked18 : B677Finite.witnessedModNextCheck 11 2000 17 64 18446744073709551557 row17 row18 transition18 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step18_checked
end B677FiniteWitnessGenerated
