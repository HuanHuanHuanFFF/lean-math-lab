import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data07
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103020417404Z».Data06
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups7 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row7) row7.sorted
theorem groups7_0 : B677Finite.allTree 10 0 groups7 = true := by decide +kernel
theorem groups7_1024 : B677Finite.allTree 10 1024 groups7 = true := by decide +kernel
theorem groups7_checked : B677Finite.allTree 11 0 groups7 = true :=
  (B677Finite.allTree_join groups7_0 groups7_1024)
def cover7 : ℕ → Bool := B677Finite.coverPointCheck 2000 7 (B677Finite.modValues 64 row7) row7.sorted
theorem cover7_0 : B677Finite.allTree 10 0 cover7 = true := by decide +kernel
theorem cover7_1024 : B677Finite.allTree 10 1024 cover7 = true := by decide +kernel
theorem cover7_checked : B677Finite.allTree 11 0 cover7 = true :=
  (B677Finite.allTree_join cover7_0 cover7_1024)
def step7 : ℕ → Bool := B677Finite.nextPointCheck 2000 6 64 18446744073709551557 row6 row7 transition7
theorem step7_0 : B677Finite.allTree 10 0 step7 = true := by decide +kernel
theorem step7_1024 : B677Finite.allTree 10 1024 step7 = true := by decide +kernel
theorem step7_checked : B677Finite.allTree 11 0 step7 = true :=
  (B677Finite.allTree_join step7_0 step7_1024)
theorem sorted_checked7 : B677Finite.sortedFunctionCheck 11 2000 7 (B677Finite.modValues 64 row7) row7.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups7_checked cover7_checked
theorem step_checked7 : B677Finite.witnessedModNextCheck 11 2000 6 64 18446744073709551557 row6 row7 transition7 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step7_checked
end B677FiniteWitnessGenerated
