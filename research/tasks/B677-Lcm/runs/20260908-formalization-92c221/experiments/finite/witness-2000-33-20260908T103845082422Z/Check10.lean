import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data10
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data09
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups10 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row10) row10.sorted
theorem groups10_0 : B677Finite.allTree 8 0 groups10 = true := by decide +kernel
theorem groups10_256 : B677Finite.allTree 8 256 groups10 = true := by decide +kernel
theorem groups10_512 : B677Finite.allTree 8 512 groups10 = true := by decide +kernel
theorem groups10_768 : B677Finite.allTree 8 768 groups10 = true := by decide +kernel
theorem groups10_1024 : B677Finite.allTree 8 1024 groups10 = true := by decide +kernel
theorem groups10_1280 : B677Finite.allTree 8 1280 groups10 = true := by decide +kernel
theorem groups10_1536 : B677Finite.allTree 8 1536 groups10 = true := by decide +kernel
theorem groups10_1792 : B677Finite.allTree 8 1792 groups10 = true := by decide +kernel
theorem groups10_checked : B677Finite.allTree 11 0 groups10 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups10_0 groups10_256) (B677Finite.allTree_join groups10_512 groups10_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups10_1024 groups10_1280) (B677Finite.allTree_join groups10_1536 groups10_1792)))
def cover10 : ℕ → Bool := B677Finite.coverPointCheck 2000 10 (B677Finite.modValues 64 row10) row10.sorted
theorem cover10_0 : B677Finite.allTree 8 0 cover10 = true := by decide +kernel
theorem cover10_256 : B677Finite.allTree 8 256 cover10 = true := by decide +kernel
theorem cover10_512 : B677Finite.allTree 8 512 cover10 = true := by decide +kernel
theorem cover10_768 : B677Finite.allTree 8 768 cover10 = true := by decide +kernel
theorem cover10_1024 : B677Finite.allTree 8 1024 cover10 = true := by decide +kernel
theorem cover10_1280 : B677Finite.allTree 8 1280 cover10 = true := by decide +kernel
theorem cover10_1536 : B677Finite.allTree 8 1536 cover10 = true := by decide +kernel
theorem cover10_1792 : B677Finite.allTree 8 1792 cover10 = true := by decide +kernel
theorem cover10_checked : B677Finite.allTree 11 0 cover10 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover10_0 cover10_256) (B677Finite.allTree_join cover10_512 cover10_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover10_1024 cover10_1280) (B677Finite.allTree_join cover10_1536 cover10_1792)))
def step10 : ℕ → Bool := B677Finite.nextPointCheck 2000 9 64 18446744073709551557 row9 row10 transition10
theorem step10_0 : B677Finite.allTree 8 0 step10 = true := by decide +kernel
theorem step10_256 : B677Finite.allTree 8 256 step10 = true := by decide +kernel
theorem step10_512 : B677Finite.allTree 8 512 step10 = true := by decide +kernel
theorem step10_768 : B677Finite.allTree 8 768 step10 = true := by decide +kernel
theorem step10_1024 : B677Finite.allTree 8 1024 step10 = true := by decide +kernel
theorem step10_1280 : B677Finite.allTree 8 1280 step10 = true := by decide +kernel
theorem step10_1536 : B677Finite.allTree 8 1536 step10 = true := by decide +kernel
theorem step10_1792 : B677Finite.allTree 8 1792 step10 = true := by decide +kernel
theorem step10_checked : B677Finite.allTree 11 0 step10 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step10_0 step10_256) (B677Finite.allTree_join step10_512 step10_768)) (B677Finite.allTree_join (B677Finite.allTree_join step10_1024 step10_1280) (B677Finite.allTree_join step10_1536 step10_1792)))
theorem sorted_checked10 : B677Finite.sortedFunctionCheck 11 2000 10 (B677Finite.modValues 64 row10) row10.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups10_checked cover10_checked
theorem step_checked10 : B677Finite.witnessedModNextCheck 11 2000 9 64 18446744073709551557 row9 row10 transition10 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step10_checked
end B677FiniteWitnessGenerated
