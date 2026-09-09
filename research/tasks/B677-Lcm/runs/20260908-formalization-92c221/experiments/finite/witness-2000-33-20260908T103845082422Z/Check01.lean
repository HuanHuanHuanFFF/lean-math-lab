import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data01
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups1 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row1) row1.sorted
theorem groups1_0 : B677Finite.allTree 8 0 groups1 = true := by decide +kernel
theorem groups1_256 : B677Finite.allTree 8 256 groups1 = true := by decide +kernel
theorem groups1_512 : B677Finite.allTree 8 512 groups1 = true := by decide +kernel
theorem groups1_768 : B677Finite.allTree 8 768 groups1 = true := by decide +kernel
theorem groups1_1024 : B677Finite.allTree 8 1024 groups1 = true := by decide +kernel
theorem groups1_1280 : B677Finite.allTree 8 1280 groups1 = true := by decide +kernel
theorem groups1_1536 : B677Finite.allTree 8 1536 groups1 = true := by decide +kernel
theorem groups1_1792 : B677Finite.allTree 8 1792 groups1 = true := by decide +kernel
theorem groups1_checked : B677Finite.allTree 11 0 groups1 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups1_0 groups1_256) (B677Finite.allTree_join groups1_512 groups1_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups1_1024 groups1_1280) (B677Finite.allTree_join groups1_1536 groups1_1792)))
def cover1 : ℕ → Bool := B677Finite.coverPointCheck 2000 1 (B677Finite.modValues 64 row1) row1.sorted
theorem cover1_0 : B677Finite.allTree 8 0 cover1 = true := by decide +kernel
theorem cover1_256 : B677Finite.allTree 8 256 cover1 = true := by decide +kernel
theorem cover1_512 : B677Finite.allTree 8 512 cover1 = true := by decide +kernel
theorem cover1_768 : B677Finite.allTree 8 768 cover1 = true := by decide +kernel
theorem cover1_1024 : B677Finite.allTree 8 1024 cover1 = true := by decide +kernel
theorem cover1_1280 : B677Finite.allTree 8 1280 cover1 = true := by decide +kernel
theorem cover1_1536 : B677Finite.allTree 8 1536 cover1 = true := by decide +kernel
theorem cover1_1792 : B677Finite.allTree 8 1792 cover1 = true := by decide +kernel
theorem cover1_checked : B677Finite.allTree 11 0 cover1 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover1_0 cover1_256) (B677Finite.allTree_join cover1_512 cover1_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover1_1024 cover1_1280) (B677Finite.allTree_join cover1_1536 cover1_1792)))
def step1 : ℕ → Bool := B677Finite.initialPointCheck 2000 64 18446744073709551557 row1
theorem step1_0 : B677Finite.allTree 8 0 step1 = true := by decide +kernel
theorem step1_256 : B677Finite.allTree 8 256 step1 = true := by decide +kernel
theorem step1_512 : B677Finite.allTree 8 512 step1 = true := by decide +kernel
theorem step1_768 : B677Finite.allTree 8 768 step1 = true := by decide +kernel
theorem step1_1024 : B677Finite.allTree 8 1024 step1 = true := by decide +kernel
theorem step1_1280 : B677Finite.allTree 8 1280 step1 = true := by decide +kernel
theorem step1_1536 : B677Finite.allTree 8 1536 step1 = true := by decide +kernel
theorem step1_1792 : B677Finite.allTree 8 1792 step1 = true := by decide +kernel
theorem step1_checked : B677Finite.allTree 11 0 step1 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step1_0 step1_256) (B677Finite.allTree_join step1_512 step1_768)) (B677Finite.allTree_join (B677Finite.allTree_join step1_1024 step1_1280) (B677Finite.allTree_join step1_1536 step1_1792)))
theorem sorted_checked1 : B677Finite.sortedFunctionCheck 11 2000 1 (B677Finite.modValues 64 row1) row1.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups1_checked cover1_checked
theorem step_checked1 : B677Finite.modInitialCheck 11 2000 64 18446744073709551557 row1 = true :=
  B677Finite.modInitialCheck_of_parts (by decide +kernel) step1_checked
end B677FiniteWitnessGenerated
