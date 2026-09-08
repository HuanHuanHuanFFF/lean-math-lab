import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data22
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data21
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups22 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row22) row22.sorted
theorem groups22_0 : B677Finite.allTree 10 0 groups22 = true := by decide +kernel
theorem groups22_1024 : B677Finite.allTree 10 1024 groups22 = true := by decide +kernel
theorem groups22_checked : B677Finite.allTree 11 0 groups22 = true :=
  (B677Finite.allTree_join groups22_0 groups22_1024)
def cover22 : ℕ → Bool := B677Finite.coverPointCheck 2000 22 (B677Finite.modValues 64 row22) row22.sorted
theorem cover22_0 : B677Finite.allTree 10 0 cover22 = true := by decide +kernel
theorem cover22_1024 : B677Finite.allTree 10 1024 cover22 = true := by decide +kernel
theorem cover22_checked : B677Finite.allTree 11 0 cover22 = true :=
  (B677Finite.allTree_join cover22_0 cover22_1024)
def step22 : ℕ → Bool := B677Finite.nextPointCheck 2000 21 64 18446744073709551557 row21 row22 transition22
theorem step22_0 : B677Finite.allTree 10 0 step22 = true := by decide +kernel
theorem step22_1024 : B677Finite.allTree 10 1024 step22 = true := by decide +kernel
theorem step22_checked : B677Finite.allTree 11 0 step22 = true :=
  (B677Finite.allTree_join step22_0 step22_1024)
theorem sorted_checked22 : B677Finite.sortedFunctionCheck 11 2000 22 (B677Finite.modValues 64 row22) row22.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups22_checked cover22_checked
theorem step_checked22 : B677Finite.witnessedModNextCheck 11 2000 21 64 18446744073709551557 row21 row22 transition22 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step22_checked
end B677FiniteWitnessGenerated
