import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data25
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data24
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups25 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row25) row25.sorted
theorem groups25_0 : B677Finite.allTree 10 0 groups25 = true := by decide +kernel
theorem groups25_1024 : B677Finite.allTree 10 1024 groups25 = true := by decide +kernel
theorem groups25_checked : B677Finite.allTree 11 0 groups25 = true :=
  (B677Finite.allTree_join groups25_0 groups25_1024)
def cover25 : ℕ → Bool := B677Finite.coverPointCheck 2000 25 (B677Finite.modValues 64 row25) row25.sorted
theorem cover25_0 : B677Finite.allTree 10 0 cover25 = true := by decide +kernel
theorem cover25_1024 : B677Finite.allTree 10 1024 cover25 = true := by decide +kernel
theorem cover25_checked : B677Finite.allTree 11 0 cover25 = true :=
  (B677Finite.allTree_join cover25_0 cover25_1024)
def step25 : ℕ → Bool := B677Finite.nextPointCheck 2000 24 64 18446744073709551557 row24 row25 transition25
theorem step25_0 : B677Finite.allTree 10 0 step25 = true := by decide +kernel
theorem step25_1024 : B677Finite.allTree 10 1024 step25 = true := by decide +kernel
theorem step25_checked : B677Finite.allTree 11 0 step25 = true :=
  (B677Finite.allTree_join step25_0 step25_1024)
theorem sorted_checked25 : B677Finite.sortedFunctionCheck 11 2000 25 (B677Finite.modValues 64 row25) row25.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups25_checked cover25_checked
theorem step_checked25 : B677Finite.witnessedModNextCheck 11 2000 24 64 18446744073709551557 row24 row25 transition25 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step25_checked
end B677FiniteWitnessGenerated
