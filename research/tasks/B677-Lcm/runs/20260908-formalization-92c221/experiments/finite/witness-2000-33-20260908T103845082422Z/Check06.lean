import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data06
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data05
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups6 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row6) row6.sorted
theorem groups6_0 : B677Finite.allTree 8 0 groups6 = true := by decide +kernel
theorem groups6_256 : B677Finite.allTree 8 256 groups6 = true := by decide +kernel
theorem groups6_512 : B677Finite.allTree 8 512 groups6 = true := by decide +kernel
theorem groups6_768 : B677Finite.allTree 8 768 groups6 = true := by decide +kernel
theorem groups6_1024 : B677Finite.allTree 8 1024 groups6 = true := by decide +kernel
theorem groups6_1280 : B677Finite.allTree 8 1280 groups6 = true := by decide +kernel
theorem groups6_1536 : B677Finite.allTree 8 1536 groups6 = true := by decide +kernel
theorem groups6_1792 : B677Finite.allTree 8 1792 groups6 = true := by decide +kernel
theorem groups6_checked : B677Finite.allTree 11 0 groups6 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups6_0 groups6_256) (B677Finite.allTree_join groups6_512 groups6_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups6_1024 groups6_1280) (B677Finite.allTree_join groups6_1536 groups6_1792)))
def cover6 : ℕ → Bool := B677Finite.coverPointCheck 2000 6 (B677Finite.modValues 64 row6) row6.sorted
theorem cover6_0 : B677Finite.allTree 8 0 cover6 = true := by decide +kernel
theorem cover6_256 : B677Finite.allTree 8 256 cover6 = true := by decide +kernel
theorem cover6_512 : B677Finite.allTree 8 512 cover6 = true := by decide +kernel
theorem cover6_768 : B677Finite.allTree 8 768 cover6 = true := by decide +kernel
theorem cover6_1024 : B677Finite.allTree 8 1024 cover6 = true := by decide +kernel
theorem cover6_1280 : B677Finite.allTree 8 1280 cover6 = true := by decide +kernel
theorem cover6_1536 : B677Finite.allTree 8 1536 cover6 = true := by decide +kernel
theorem cover6_1792 : B677Finite.allTree 8 1792 cover6 = true := by decide +kernel
theorem cover6_checked : B677Finite.allTree 11 0 cover6 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover6_0 cover6_256) (B677Finite.allTree_join cover6_512 cover6_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover6_1024 cover6_1280) (B677Finite.allTree_join cover6_1536 cover6_1792)))
def step6 : ℕ → Bool := B677Finite.nextPointCheck 2000 5 64 18446744073709551557 row5 row6 transition6
theorem step6_0 : B677Finite.allTree 8 0 step6 = true := by decide +kernel
theorem step6_256 : B677Finite.allTree 8 256 step6 = true := by decide +kernel
theorem step6_512 : B677Finite.allTree 8 512 step6 = true := by decide +kernel
theorem step6_768 : B677Finite.allTree 8 768 step6 = true := by decide +kernel
theorem step6_1024 : B677Finite.allTree 8 1024 step6 = true := by decide +kernel
theorem step6_1280 : B677Finite.allTree 8 1280 step6 = true := by decide +kernel
theorem step6_1536 : B677Finite.allTree 8 1536 step6 = true := by decide +kernel
theorem step6_1792 : B677Finite.allTree 8 1792 step6 = true := by decide +kernel
theorem step6_checked : B677Finite.allTree 11 0 step6 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step6_0 step6_256) (B677Finite.allTree_join step6_512 step6_768)) (B677Finite.allTree_join (B677Finite.allTree_join step6_1024 step6_1280) (B677Finite.allTree_join step6_1536 step6_1792)))
theorem sorted_checked6 : B677Finite.sortedFunctionCheck 11 2000 6 (B677Finite.modValues 64 row6) row6.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups6_checked cover6_checked
theorem step_checked6 : B677Finite.witnessedModNextCheck 11 2000 5 64 18446744073709551557 row5 row6 transition6 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step6_checked
end B677FiniteWitnessGenerated
