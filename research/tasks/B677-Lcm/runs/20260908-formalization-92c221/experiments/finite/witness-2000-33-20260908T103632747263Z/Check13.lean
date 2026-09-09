import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data13
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data12
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups13 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row13) row13.sorted
theorem groups13_0 : B677Finite.allTree 10 0 groups13 = true := by decide +kernel
theorem groups13_1024 : B677Finite.allTree 10 1024 groups13 = true := by decide +kernel
theorem groups13_checked : B677Finite.allTree 11 0 groups13 = true :=
  (B677Finite.allTree_join groups13_0 groups13_1024)
def cover13 : ℕ → Bool := B677Finite.coverPointCheck 2000 13 (B677Finite.modValues 64 row13) row13.sorted
theorem cover13_0 : B677Finite.allTree 10 0 cover13 = true := by decide +kernel
theorem cover13_1024 : B677Finite.allTree 10 1024 cover13 = true := by decide +kernel
theorem cover13_checked : B677Finite.allTree 11 0 cover13 = true :=
  (B677Finite.allTree_join cover13_0 cover13_1024)
def step13 : ℕ → Bool := B677Finite.nextPointCheck 2000 12 64 18446744073709551557 row12 row13 transition13
theorem step13_0 : B677Finite.allTree 10 0 step13 = true := by decide +kernel
theorem step13_1024 : B677Finite.allTree 10 1024 step13 = true := by decide +kernel
theorem step13_checked : B677Finite.allTree 11 0 step13 = true :=
  (B677Finite.allTree_join step13_0 step13_1024)
theorem sorted_checked13 : B677Finite.sortedFunctionCheck 11 2000 13 (B677Finite.modValues 64 row13) row13.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups13_checked cover13_checked
theorem step_checked13 : B677Finite.witnessedModNextCheck 11 2000 12 64 18446744073709551557 row12 row13 transition13 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step13_checked
end B677FiniteWitnessGenerated
