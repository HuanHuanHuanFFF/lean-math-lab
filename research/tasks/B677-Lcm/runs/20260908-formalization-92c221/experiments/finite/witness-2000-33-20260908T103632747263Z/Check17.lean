import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data17
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data16
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups17 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row17) row17.sorted
theorem groups17_0 : B677Finite.allTree 10 0 groups17 = true := by decide +kernel
theorem groups17_1024 : B677Finite.allTree 10 1024 groups17 = true := by decide +kernel
theorem groups17_checked : B677Finite.allTree 11 0 groups17 = true :=
  (B677Finite.allTree_join groups17_0 groups17_1024)
def cover17 : ℕ → Bool := B677Finite.coverPointCheck 2000 17 (B677Finite.modValues 64 row17) row17.sorted
theorem cover17_0 : B677Finite.allTree 10 0 cover17 = true := by decide +kernel
theorem cover17_1024 : B677Finite.allTree 10 1024 cover17 = true := by decide +kernel
theorem cover17_checked : B677Finite.allTree 11 0 cover17 = true :=
  (B677Finite.allTree_join cover17_0 cover17_1024)
def step17 : ℕ → Bool := B677Finite.nextPointCheck 2000 16 64 18446744073709551557 row16 row17 transition17
theorem step17_0 : B677Finite.allTree 10 0 step17 = true := by decide +kernel
theorem step17_1024 : B677Finite.allTree 10 1024 step17 = true := by decide +kernel
theorem step17_checked : B677Finite.allTree 11 0 step17 = true :=
  (B677Finite.allTree_join step17_0 step17_1024)
theorem sorted_checked17 : B677Finite.sortedFunctionCheck 11 2000 17 (B677Finite.modValues 64 row17) row17.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups17_checked cover17_checked
theorem step_checked17 : B677Finite.witnessedModNextCheck 11 2000 16 64 18446744073709551557 row16 row17 transition17 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step17_checked
end B677FiniteWitnessGenerated
