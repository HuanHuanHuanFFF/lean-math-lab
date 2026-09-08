import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data13
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data12
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups13 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row13) row13.sorted
theorem groups13_0 : B677Finite.allTree 8 0 groups13 = true := by decide +kernel
theorem groups13_256 : B677Finite.allTree 8 256 groups13 = true := by decide +kernel
theorem groups13_512 : B677Finite.allTree 8 512 groups13 = true := by decide +kernel
theorem groups13_768 : B677Finite.allTree 8 768 groups13 = true := by decide +kernel
theorem groups13_1024 : B677Finite.allTree 8 1024 groups13 = true := by decide +kernel
theorem groups13_1280 : B677Finite.allTree 8 1280 groups13 = true := by decide +kernel
theorem groups13_1536 : B677Finite.allTree 8 1536 groups13 = true := by decide +kernel
theorem groups13_1792 : B677Finite.allTree 8 1792 groups13 = true := by decide +kernel
theorem groups13_checked : B677Finite.allTree 11 0 groups13 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups13_0 groups13_256) (B677Finite.allTree_join groups13_512 groups13_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups13_1024 groups13_1280) (B677Finite.allTree_join groups13_1536 groups13_1792)))
def cover13 : ℕ → Bool := B677Finite.coverPointCheck 2000 13 (B677Finite.modValues 64 row13) row13.sorted
theorem cover13_0 : B677Finite.allTree 8 0 cover13 = true := by decide +kernel
theorem cover13_256 : B677Finite.allTree 8 256 cover13 = true := by decide +kernel
theorem cover13_512 : B677Finite.allTree 8 512 cover13 = true := by decide +kernel
theorem cover13_768 : B677Finite.allTree 8 768 cover13 = true := by decide +kernel
theorem cover13_1024 : B677Finite.allTree 8 1024 cover13 = true := by decide +kernel
theorem cover13_1280 : B677Finite.allTree 8 1280 cover13 = true := by decide +kernel
theorem cover13_1536 : B677Finite.allTree 8 1536 cover13 = true := by decide +kernel
theorem cover13_1792 : B677Finite.allTree 8 1792 cover13 = true := by decide +kernel
theorem cover13_checked : B677Finite.allTree 11 0 cover13 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover13_0 cover13_256) (B677Finite.allTree_join cover13_512 cover13_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover13_1024 cover13_1280) (B677Finite.allTree_join cover13_1536 cover13_1792)))
def step13 : ℕ → Bool := B677Finite.nextPointCheck 2000 12 64 18446744073709551557 row12 row13 transition13
theorem step13_0 : B677Finite.allTree 8 0 step13 = true := by decide +kernel
theorem step13_256 : B677Finite.allTree 8 256 step13 = true := by decide +kernel
theorem step13_512 : B677Finite.allTree 8 512 step13 = true := by decide +kernel
theorem step13_768 : B677Finite.allTree 8 768 step13 = true := by decide +kernel
theorem step13_1024 : B677Finite.allTree 8 1024 step13 = true := by decide +kernel
theorem step13_1280 : B677Finite.allTree 8 1280 step13 = true := by decide +kernel
theorem step13_1536 : B677Finite.allTree 8 1536 step13 = true := by decide +kernel
theorem step13_1792 : B677Finite.allTree 8 1792 step13 = true := by decide +kernel
theorem step13_checked : B677Finite.allTree 11 0 step13 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step13_0 step13_256) (B677Finite.allTree_join step13_512 step13_768)) (B677Finite.allTree_join (B677Finite.allTree_join step13_1024 step13_1280) (B677Finite.allTree_join step13_1536 step13_1792)))
theorem sorted_checked13 : B677Finite.sortedFunctionCheck 11 2000 13 (B677Finite.modValues 64 row13) row13.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups13_checked cover13_checked
theorem step_checked13 : B677Finite.witnessedModNextCheck 11 2000 12 64 18446744073709551557 row12 row13 transition13 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step13_checked
end B677FiniteWitnessGenerated
