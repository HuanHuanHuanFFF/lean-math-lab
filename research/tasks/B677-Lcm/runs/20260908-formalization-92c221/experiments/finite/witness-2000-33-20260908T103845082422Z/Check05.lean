import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data05
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data04
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups5 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row5) row5.sorted
theorem groups5_0 : B677Finite.allTree 8 0 groups5 = true := by decide +kernel
theorem groups5_256 : B677Finite.allTree 8 256 groups5 = true := by decide +kernel
theorem groups5_512 : B677Finite.allTree 8 512 groups5 = true := by decide +kernel
theorem groups5_768 : B677Finite.allTree 8 768 groups5 = true := by decide +kernel
theorem groups5_1024 : B677Finite.allTree 8 1024 groups5 = true := by decide +kernel
theorem groups5_1280 : B677Finite.allTree 8 1280 groups5 = true := by decide +kernel
theorem groups5_1536 : B677Finite.allTree 8 1536 groups5 = true := by decide +kernel
theorem groups5_1792 : B677Finite.allTree 8 1792 groups5 = true := by decide +kernel
theorem groups5_checked : B677Finite.allTree 11 0 groups5 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups5_0 groups5_256) (B677Finite.allTree_join groups5_512 groups5_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups5_1024 groups5_1280) (B677Finite.allTree_join groups5_1536 groups5_1792)))
def cover5 : ℕ → Bool := B677Finite.coverPointCheck 2000 5 (B677Finite.modValues 64 row5) row5.sorted
theorem cover5_0 : B677Finite.allTree 8 0 cover5 = true := by decide +kernel
theorem cover5_256 : B677Finite.allTree 8 256 cover5 = true := by decide +kernel
theorem cover5_512 : B677Finite.allTree 8 512 cover5 = true := by decide +kernel
theorem cover5_768 : B677Finite.allTree 8 768 cover5 = true := by decide +kernel
theorem cover5_1024 : B677Finite.allTree 8 1024 cover5 = true := by decide +kernel
theorem cover5_1280 : B677Finite.allTree 8 1280 cover5 = true := by decide +kernel
theorem cover5_1536 : B677Finite.allTree 8 1536 cover5 = true := by decide +kernel
theorem cover5_1792 : B677Finite.allTree 8 1792 cover5 = true := by decide +kernel
theorem cover5_checked : B677Finite.allTree 11 0 cover5 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover5_0 cover5_256) (B677Finite.allTree_join cover5_512 cover5_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover5_1024 cover5_1280) (B677Finite.allTree_join cover5_1536 cover5_1792)))
def step5 : ℕ → Bool := B677Finite.nextPointCheck 2000 4 64 18446744073709551557 row4 row5 transition5
theorem step5_0 : B677Finite.allTree 8 0 step5 = true := by decide +kernel
theorem step5_256 : B677Finite.allTree 8 256 step5 = true := by decide +kernel
theorem step5_512 : B677Finite.allTree 8 512 step5 = true := by decide +kernel
theorem step5_768 : B677Finite.allTree 8 768 step5 = true := by decide +kernel
theorem step5_1024 : B677Finite.allTree 8 1024 step5 = true := by decide +kernel
theorem step5_1280 : B677Finite.allTree 8 1280 step5 = true := by decide +kernel
theorem step5_1536 : B677Finite.allTree 8 1536 step5 = true := by decide +kernel
theorem step5_1792 : B677Finite.allTree 8 1792 step5 = true := by decide +kernel
theorem step5_checked : B677Finite.allTree 11 0 step5 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step5_0 step5_256) (B677Finite.allTree_join step5_512 step5_768)) (B677Finite.allTree_join (B677Finite.allTree_join step5_1024 step5_1280) (B677Finite.allTree_join step5_1536 step5_1792)))
theorem sorted_checked5 : B677Finite.sortedFunctionCheck 11 2000 5 (B677Finite.modValues 64 row5) row5.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups5_checked cover5_checked
theorem step_checked5 : B677Finite.witnessedModNextCheck 11 2000 4 64 18446744073709551557 row4 row5 transition5 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step5_checked
end B677FiniteWitnessGenerated
