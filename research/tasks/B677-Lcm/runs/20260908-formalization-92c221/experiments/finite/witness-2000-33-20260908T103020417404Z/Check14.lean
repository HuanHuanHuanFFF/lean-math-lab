import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data14
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data13
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups14 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row14) row14.sorted
theorem groups14_0 : B677Finite.allTree 10 0 groups14 = true := by decide +kernel
theorem groups14_1024 : B677Finite.allTree 10 1024 groups14 = true := by decide +kernel
theorem groups14_checked : B677Finite.allTree 11 0 groups14 = true :=
  (B677Finite.allTree_join groups14_0 groups14_1024)
def cover14 : ℕ → Bool := B677Finite.coverPointCheck 2000 14 (B677Finite.modValues 64 row14) row14.sorted
theorem cover14_0 : B677Finite.allTree 10 0 cover14 = true := by decide +kernel
theorem cover14_1024 : B677Finite.allTree 10 1024 cover14 = true := by decide +kernel
theorem cover14_checked : B677Finite.allTree 11 0 cover14 = true :=
  (B677Finite.allTree_join cover14_0 cover14_1024)
def step14 : ℕ → Bool := B677Finite.nextPointCheck 2000 13 64 18446744073709551557 row13 row14 transition14
theorem step14_0 : B677Finite.allTree 10 0 step14 = true := by decide +kernel
theorem step14_1024 : B677Finite.allTree 10 1024 step14 = true := by decide +kernel
theorem step14_checked : B677Finite.allTree 11 0 step14 = true :=
  (B677Finite.allTree_join step14_0 step14_1024)
theorem sorted_checked14 : B677Finite.sortedFunctionCheck 11 2000 14 (B677Finite.modValues 64 row14) row14.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups14_checked cover14_checked
theorem step_checked14 : B677Finite.witnessedModNextCheck 11 2000 13 64 18446744073709551557 row13 row14 transition14 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step14_checked
end B677FiniteWitnessGenerated
