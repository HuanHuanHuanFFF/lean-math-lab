import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data06
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Data05
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups6 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row6) row6.sorted
theorem groups6_0 : B677Finite.allTree 10 0 groups6 = true := by decide +kernel
theorem groups6_1024 : B677Finite.allTree 10 1024 groups6 = true := by decide +kernel
theorem groups6_checked : B677Finite.allTree 11 0 groups6 = true :=
  (B677Finite.allTree_join groups6_0 groups6_1024)
def cover6 : ℕ → Bool := B677Finite.coverPointCheck 2000 6 (B677Finite.modValues 64 row6) row6.sorted
theorem cover6_0 : B677Finite.allTree 10 0 cover6 = true := by decide +kernel
theorem cover6_1024 : B677Finite.allTree 10 1024 cover6 = true := by decide +kernel
theorem cover6_checked : B677Finite.allTree 11 0 cover6 = true :=
  (B677Finite.allTree_join cover6_0 cover6_1024)
def step6 : ℕ → Bool := B677Finite.nextPointCheck 2000 5 64 18446744073709551557 row5 row6 transition6
theorem step6_0 : B677Finite.allTree 10 0 step6 = true := by decide +kernel
theorem step6_1024 : B677Finite.allTree 10 1024 step6 = true := by decide +kernel
theorem step6_checked : B677Finite.allTree 11 0 step6 = true :=
  (B677Finite.allTree_join step6_0 step6_1024)
theorem sorted_checked6 : B677Finite.sortedFunctionCheck 11 2000 6 (B677Finite.modValues 64 row6) row6.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups6_checked cover6_checked
theorem step_checked6 : B677Finite.witnessedModNextCheck 11 2000 5 64 18446744073709551557 row5 row6 transition6 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step6_checked
end B677FiniteWitnessGenerated
