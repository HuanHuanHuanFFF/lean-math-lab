import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data04
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data03
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups4 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row4) row4.sorted
theorem groups4_0 : B677Finite.allTree 8 0 groups4 = true := by decide +kernel
theorem groups4_256 : B677Finite.allTree 8 256 groups4 = true := by decide +kernel
theorem groups4_512 : B677Finite.allTree 8 512 groups4 = true := by decide +kernel
theorem groups4_768 : B677Finite.allTree 8 768 groups4 = true := by decide +kernel
theorem groups4_1024 : B677Finite.allTree 8 1024 groups4 = true := by decide +kernel
theorem groups4_1280 : B677Finite.allTree 8 1280 groups4 = true := by decide +kernel
theorem groups4_1536 : B677Finite.allTree 8 1536 groups4 = true := by decide +kernel
theorem groups4_1792 : B677Finite.allTree 8 1792 groups4 = true := by decide +kernel
theorem groups4_checked : B677Finite.allTree 11 0 groups4 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups4_0 groups4_256) (B677Finite.allTree_join groups4_512 groups4_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups4_1024 groups4_1280) (B677Finite.allTree_join groups4_1536 groups4_1792)))
def cover4 : ℕ → Bool := B677Finite.coverPointCheck 2000 4 (B677Finite.modValues 64 row4) row4.sorted
theorem cover4_0 : B677Finite.allTree 8 0 cover4 = true := by decide +kernel
theorem cover4_256 : B677Finite.allTree 8 256 cover4 = true := by decide +kernel
theorem cover4_512 : B677Finite.allTree 8 512 cover4 = true := by decide +kernel
theorem cover4_768 : B677Finite.allTree 8 768 cover4 = true := by decide +kernel
theorem cover4_1024 : B677Finite.allTree 8 1024 cover4 = true := by decide +kernel
theorem cover4_1280 : B677Finite.allTree 8 1280 cover4 = true := by decide +kernel
theorem cover4_1536 : B677Finite.allTree 8 1536 cover4 = true := by decide +kernel
theorem cover4_1792 : B677Finite.allTree 8 1792 cover4 = true := by decide +kernel
theorem cover4_checked : B677Finite.allTree 11 0 cover4 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover4_0 cover4_256) (B677Finite.allTree_join cover4_512 cover4_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover4_1024 cover4_1280) (B677Finite.allTree_join cover4_1536 cover4_1792)))
def step4 : ℕ → Bool := B677Finite.nextPointCheck 2000 3 64 18446744073709551557 row3 row4 transition4
theorem step4_0 : B677Finite.allTree 8 0 step4 = true := by decide +kernel
theorem step4_256 : B677Finite.allTree 8 256 step4 = true := by decide +kernel
theorem step4_512 : B677Finite.allTree 8 512 step4 = true := by decide +kernel
theorem step4_768 : B677Finite.allTree 8 768 step4 = true := by decide +kernel
theorem step4_1024 : B677Finite.allTree 8 1024 step4 = true := by decide +kernel
theorem step4_1280 : B677Finite.allTree 8 1280 step4 = true := by decide +kernel
theorem step4_1536 : B677Finite.allTree 8 1536 step4 = true := by decide +kernel
theorem step4_1792 : B677Finite.allTree 8 1792 step4 = true := by decide +kernel
theorem step4_checked : B677Finite.allTree 11 0 step4 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step4_0 step4_256) (B677Finite.allTree_join step4_512 step4_768)) (B677Finite.allTree_join (B677Finite.allTree_join step4_1024 step4_1280) (B677Finite.allTree_join step4_1536 step4_1792)))
theorem sorted_checked4 : B677Finite.sortedFunctionCheck 11 2000 4 (B677Finite.modValues 64 row4) row4.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups4_checked cover4_checked
theorem step_checked4 : B677Finite.witnessedModNextCheck 11 2000 3 64 18446744073709551557 row3 row4 transition4 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step4_checked
end B677FiniteWitnessGenerated
