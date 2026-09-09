import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data19
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data18
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups19 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row19) row19.sorted
theorem groups19_0 : B677Finite.allTree 8 0 groups19 = true := by decide +kernel
theorem groups19_256 : B677Finite.allTree 8 256 groups19 = true := by decide +kernel
theorem groups19_512 : B677Finite.allTree 8 512 groups19 = true := by decide +kernel
theorem groups19_768 : B677Finite.allTree 8 768 groups19 = true := by decide +kernel
theorem groups19_1024 : B677Finite.allTree 8 1024 groups19 = true := by decide +kernel
theorem groups19_1280 : B677Finite.allTree 8 1280 groups19 = true := by decide +kernel
theorem groups19_1536 : B677Finite.allTree 8 1536 groups19 = true := by decide +kernel
theorem groups19_1792 : B677Finite.allTree 8 1792 groups19 = true := by decide +kernel
theorem groups19_checked : B677Finite.allTree 11 0 groups19 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups19_0 groups19_256) (B677Finite.allTree_join groups19_512 groups19_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups19_1024 groups19_1280) (B677Finite.allTree_join groups19_1536 groups19_1792)))
def cover19 : ℕ → Bool := B677Finite.coverPointCheck 2000 19 (B677Finite.modValues 64 row19) row19.sorted
theorem cover19_0 : B677Finite.allTree 8 0 cover19 = true := by decide +kernel
theorem cover19_256 : B677Finite.allTree 8 256 cover19 = true := by decide +kernel
theorem cover19_512 : B677Finite.allTree 8 512 cover19 = true := by decide +kernel
theorem cover19_768 : B677Finite.allTree 8 768 cover19 = true := by decide +kernel
theorem cover19_1024 : B677Finite.allTree 8 1024 cover19 = true := by decide +kernel
theorem cover19_1280 : B677Finite.allTree 8 1280 cover19 = true := by decide +kernel
theorem cover19_1536 : B677Finite.allTree 8 1536 cover19 = true := by decide +kernel
theorem cover19_1792 : B677Finite.allTree 8 1792 cover19 = true := by decide +kernel
theorem cover19_checked : B677Finite.allTree 11 0 cover19 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover19_0 cover19_256) (B677Finite.allTree_join cover19_512 cover19_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover19_1024 cover19_1280) (B677Finite.allTree_join cover19_1536 cover19_1792)))
def step19 : ℕ → Bool := B677Finite.nextPointCheck 2000 18 64 18446744073709551557 row18 row19 transition19
theorem step19_0 : B677Finite.allTree 8 0 step19 = true := by decide +kernel
theorem step19_256 : B677Finite.allTree 8 256 step19 = true := by decide +kernel
theorem step19_512 : B677Finite.allTree 8 512 step19 = true := by decide +kernel
theorem step19_768 : B677Finite.allTree 8 768 step19 = true := by decide +kernel
theorem step19_1024 : B677Finite.allTree 8 1024 step19 = true := by decide +kernel
theorem step19_1280 : B677Finite.allTree 8 1280 step19 = true := by decide +kernel
theorem step19_1536 : B677Finite.allTree 8 1536 step19 = true := by decide +kernel
theorem step19_1792 : B677Finite.allTree 8 1792 step19 = true := by decide +kernel
theorem step19_checked : B677Finite.allTree 11 0 step19 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step19_0 step19_256) (B677Finite.allTree_join step19_512 step19_768)) (B677Finite.allTree_join (B677Finite.allTree_join step19_1024 step19_1280) (B677Finite.allTree_join step19_1536 step19_1792)))
theorem sorted_checked19 : B677Finite.sortedFunctionCheck 11 2000 19 (B677Finite.modValues 64 row19) row19.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups19_checked cover19_checked
theorem step_checked19 : B677Finite.witnessedModNextCheck 11 2000 18 64 18446744073709551557 row18 row19 transition19 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step19_checked
end B677FiniteWitnessGenerated
