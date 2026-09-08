import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data29
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data28
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups29 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row29) row29.sorted
theorem groups29_0 : B677Finite.allTree 10 0 groups29 = true := by decide +kernel
theorem groups29_1024 : B677Finite.allTree 10 1024 groups29 = true := by decide +kernel
theorem groups29_checked : B677Finite.allTree 11 0 groups29 = true :=
  (B677Finite.allTree_join groups29_0 groups29_1024)
def cover29 : ℕ → Bool := B677Finite.coverPointCheck 2000 29 (B677Finite.modValues 64 row29) row29.sorted
theorem cover29_0 : B677Finite.allTree 10 0 cover29 = true := by decide +kernel
theorem cover29_1024 : B677Finite.allTree 10 1024 cover29 = true := by decide +kernel
theorem cover29_checked : B677Finite.allTree 11 0 cover29 = true :=
  (B677Finite.allTree_join cover29_0 cover29_1024)
def step29 : ℕ → Bool := B677Finite.nextPointCheck 2000 28 64 18446744073709551557 row28 row29 transition29
theorem step29_0 : B677Finite.allTree 10 0 step29 = true := by decide +kernel
theorem step29_1024 : B677Finite.allTree 10 1024 step29 = true := by decide +kernel
theorem step29_checked : B677Finite.allTree 11 0 step29 = true :=
  (B677Finite.allTree_join step29_0 step29_1024)
theorem sorted_checked29 : B677Finite.sortedFunctionCheck 11 2000 29 (B677Finite.modValues 64 row29) row29.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups29_checked cover29_checked
theorem step_checked29 : B677Finite.witnessedModNextCheck 11 2000 28 64 18446744073709551557 row28 row29 transition29 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step29_checked
end B677FiniteWitnessGenerated
