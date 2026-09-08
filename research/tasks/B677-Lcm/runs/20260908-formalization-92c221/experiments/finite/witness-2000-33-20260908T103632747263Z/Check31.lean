import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data31
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data30
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups31 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row31) row31.sorted
theorem groups31_0 : B677Finite.allTree 10 0 groups31 = true := by decide +kernel
theorem groups31_1024 : B677Finite.allTree 10 1024 groups31 = true := by decide +kernel
theorem groups31_checked : B677Finite.allTree 11 0 groups31 = true :=
  (B677Finite.allTree_join groups31_0 groups31_1024)
def cover31 : ℕ → Bool := B677Finite.coverPointCheck 2000 31 (B677Finite.modValues 64 row31) row31.sorted
theorem cover31_0 : B677Finite.allTree 10 0 cover31 = true := by decide +kernel
theorem cover31_1024 : B677Finite.allTree 10 1024 cover31 = true := by decide +kernel
theorem cover31_checked : B677Finite.allTree 11 0 cover31 = true :=
  (B677Finite.allTree_join cover31_0 cover31_1024)
def step31 : ℕ → Bool := B677Finite.nextPointCheck 2000 30 64 18446744073709551557 row30 row31 transition31
theorem step31_0 : B677Finite.allTree 10 0 step31 = true := by decide +kernel
theorem step31_1024 : B677Finite.allTree 10 1024 step31 = true := by decide +kernel
theorem step31_checked : B677Finite.allTree 11 0 step31 = true :=
  (B677Finite.allTree_join step31_0 step31_1024)
theorem sorted_checked31 : B677Finite.sortedFunctionCheck 11 2000 31 (B677Finite.modValues 64 row31) row31.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups31_checked cover31_checked
theorem step_checked31 : B677Finite.witnessedModNextCheck 11 2000 30 64 18446744073709551557 row30 row31 transition31 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step31_checked
end B677FiniteWitnessGenerated
