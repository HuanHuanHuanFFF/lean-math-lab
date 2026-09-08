import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data15
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data14
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups15 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row15) row15.sorted
theorem groups15_0 : B677Finite.allTree 10 0 groups15 = true := by decide +kernel
theorem groups15_1024 : B677Finite.allTree 10 1024 groups15 = true := by decide +kernel
theorem groups15_checked : B677Finite.allTree 11 0 groups15 = true :=
  (B677Finite.allTree_join groups15_0 groups15_1024)
def cover15 : ℕ → Bool := B677Finite.coverPointCheck 2000 15 (B677Finite.modValues 64 row15) row15.sorted
theorem cover15_0 : B677Finite.allTree 10 0 cover15 = true := by decide +kernel
theorem cover15_1024 : B677Finite.allTree 10 1024 cover15 = true := by decide +kernel
theorem cover15_checked : B677Finite.allTree 11 0 cover15 = true :=
  (B677Finite.allTree_join cover15_0 cover15_1024)
def step15 : ℕ → Bool := B677Finite.nextPointCheck 2000 14 64 18446744073709551557 row14 row15 transition15
theorem step15_0 : B677Finite.allTree 10 0 step15 = true := by decide +kernel
theorem step15_1024 : B677Finite.allTree 10 1024 step15 = true := by decide +kernel
theorem step15_checked : B677Finite.allTree 11 0 step15 = true :=
  (B677Finite.allTree_join step15_0 step15_1024)
theorem sorted_checked15 : B677Finite.sortedFunctionCheck 11 2000 15 (B677Finite.modValues 64 row15) row15.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups15_checked cover15_checked
theorem step_checked15 : B677Finite.witnessedModNextCheck 11 2000 14 64 18446744073709551557 row14 row15 transition15 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step15_checked
end B677FiniteWitnessGenerated
