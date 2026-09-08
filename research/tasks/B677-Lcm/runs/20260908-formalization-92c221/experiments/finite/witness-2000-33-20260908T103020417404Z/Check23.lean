import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data23
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data22
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups23 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row23) row23.sorted
theorem groups23_0 : B677Finite.allTree 10 0 groups23 = true := by decide +kernel
theorem groups23_1024 : B677Finite.allTree 10 1024 groups23 = true := by decide +kernel
theorem groups23_checked : B677Finite.allTree 11 0 groups23 = true :=
  (B677Finite.allTree_join groups23_0 groups23_1024)
def cover23 : ℕ → Bool := B677Finite.coverPointCheck 2000 23 (B677Finite.modValues 64 row23) row23.sorted
theorem cover23_0 : B677Finite.allTree 10 0 cover23 = true := by decide +kernel
theorem cover23_1024 : B677Finite.allTree 10 1024 cover23 = true := by decide +kernel
theorem cover23_checked : B677Finite.allTree 11 0 cover23 = true :=
  (B677Finite.allTree_join cover23_0 cover23_1024)
def step23 : ℕ → Bool := B677Finite.nextPointCheck 2000 22 64 18446744073709551557 row22 row23 transition23
theorem step23_0 : B677Finite.allTree 10 0 step23 = true := by decide +kernel
theorem step23_1024 : B677Finite.allTree 10 1024 step23 = true := by decide +kernel
theorem step23_checked : B677Finite.allTree 11 0 step23 = true :=
  (B677Finite.allTree_join step23_0 step23_1024)
theorem sorted_checked23 : B677Finite.sortedFunctionCheck 11 2000 23 (B677Finite.modValues 64 row23) row23.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups23_checked cover23_checked
theorem step_checked23 : B677Finite.witnessedModNextCheck 11 2000 22 64 18446744073709551557 row22 row23 transition23 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step23_checked
end B677FiniteWitnessGenerated
