import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data03
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data02
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups3 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row3) row3.sorted
theorem groups3_0 : B677Finite.allTree 8 0 groups3 = true := by decide +kernel
theorem groups3_256 : B677Finite.allTree 8 256 groups3 = true := by decide +kernel
theorem groups3_512 : B677Finite.allTree 8 512 groups3 = true := by decide +kernel
theorem groups3_768 : B677Finite.allTree 8 768 groups3 = true := by decide +kernel
theorem groups3_1024 : B677Finite.allTree 8 1024 groups3 = true := by decide +kernel
theorem groups3_1280 : B677Finite.allTree 8 1280 groups3 = true := by decide +kernel
theorem groups3_1536 : B677Finite.allTree 8 1536 groups3 = true := by decide +kernel
theorem groups3_1792 : B677Finite.allTree 8 1792 groups3 = true := by decide +kernel
theorem groups3_checked : B677Finite.allTree 11 0 groups3 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups3_0 groups3_256) (B677Finite.allTree_join groups3_512 groups3_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups3_1024 groups3_1280) (B677Finite.allTree_join groups3_1536 groups3_1792)))
def cover3 : ℕ → Bool := B677Finite.coverPointCheck 2000 3 (B677Finite.modValues 64 row3) row3.sorted
theorem cover3_0 : B677Finite.allTree 8 0 cover3 = true := by decide +kernel
theorem cover3_256 : B677Finite.allTree 8 256 cover3 = true := by decide +kernel
theorem cover3_512 : B677Finite.allTree 8 512 cover3 = true := by decide +kernel
theorem cover3_768 : B677Finite.allTree 8 768 cover3 = true := by decide +kernel
theorem cover3_1024 : B677Finite.allTree 8 1024 cover3 = true := by decide +kernel
theorem cover3_1280 : B677Finite.allTree 8 1280 cover3 = true := by decide +kernel
theorem cover3_1536 : B677Finite.allTree 8 1536 cover3 = true := by decide +kernel
theorem cover3_1792 : B677Finite.allTree 8 1792 cover3 = true := by decide +kernel
theorem cover3_checked : B677Finite.allTree 11 0 cover3 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover3_0 cover3_256) (B677Finite.allTree_join cover3_512 cover3_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover3_1024 cover3_1280) (B677Finite.allTree_join cover3_1536 cover3_1792)))
def step3 : ℕ → Bool := B677Finite.nextPointCheck 2000 2 64 18446744073709551557 row2 row3 transition3
theorem step3_0 : B677Finite.allTree 8 0 step3 = true := by decide +kernel
theorem step3_256 : B677Finite.allTree 8 256 step3 = true := by decide +kernel
theorem step3_512 : B677Finite.allTree 8 512 step3 = true := by decide +kernel
theorem step3_768 : B677Finite.allTree 8 768 step3 = true := by decide +kernel
theorem step3_1024 : B677Finite.allTree 8 1024 step3 = true := by decide +kernel
theorem step3_1280 : B677Finite.allTree 8 1280 step3 = true := by decide +kernel
theorem step3_1536 : B677Finite.allTree 8 1536 step3 = true := by decide +kernel
theorem step3_1792 : B677Finite.allTree 8 1792 step3 = true := by decide +kernel
theorem step3_checked : B677Finite.allTree 11 0 step3 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step3_0 step3_256) (B677Finite.allTree_join step3_512 step3_768)) (B677Finite.allTree_join (B677Finite.allTree_join step3_1024 step3_1280) (B677Finite.allTree_join step3_1536 step3_1792)))
theorem sorted_checked3 : B677Finite.sortedFunctionCheck 11 2000 3 (B677Finite.modValues 64 row3) row3.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups3_checked cover3_checked
theorem step_checked3 : B677Finite.witnessedModNextCheck 11 2000 2 64 18446744073709551557 row2 row3 transition3 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step3_checked
end B677FiniteWitnessGenerated
