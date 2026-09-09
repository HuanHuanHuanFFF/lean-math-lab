import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data02
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data01
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups2 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row2) row2.sorted
theorem groups2_0 : B677Finite.allTree 8 0 groups2 = true := by decide +kernel
theorem groups2_256 : B677Finite.allTree 8 256 groups2 = true := by decide +kernel
theorem groups2_512 : B677Finite.allTree 8 512 groups2 = true := by decide +kernel
theorem groups2_768 : B677Finite.allTree 8 768 groups2 = true := by decide +kernel
theorem groups2_1024 : B677Finite.allTree 8 1024 groups2 = true := by decide +kernel
theorem groups2_1280 : B677Finite.allTree 8 1280 groups2 = true := by decide +kernel
theorem groups2_1536 : B677Finite.allTree 8 1536 groups2 = true := by decide +kernel
theorem groups2_1792 : B677Finite.allTree 8 1792 groups2 = true := by decide +kernel
theorem groups2_checked : B677Finite.allTree 11 0 groups2 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups2_0 groups2_256) (B677Finite.allTree_join groups2_512 groups2_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups2_1024 groups2_1280) (B677Finite.allTree_join groups2_1536 groups2_1792)))
def cover2 : ℕ → Bool := B677Finite.coverPointCheck 2000 2 (B677Finite.modValues 64 row2) row2.sorted
theorem cover2_0 : B677Finite.allTree 8 0 cover2 = true := by decide +kernel
theorem cover2_256 : B677Finite.allTree 8 256 cover2 = true := by decide +kernel
theorem cover2_512 : B677Finite.allTree 8 512 cover2 = true := by decide +kernel
theorem cover2_768 : B677Finite.allTree 8 768 cover2 = true := by decide +kernel
theorem cover2_1024 : B677Finite.allTree 8 1024 cover2 = true := by decide +kernel
theorem cover2_1280 : B677Finite.allTree 8 1280 cover2 = true := by decide +kernel
theorem cover2_1536 : B677Finite.allTree 8 1536 cover2 = true := by decide +kernel
theorem cover2_1792 : B677Finite.allTree 8 1792 cover2 = true := by decide +kernel
theorem cover2_checked : B677Finite.allTree 11 0 cover2 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover2_0 cover2_256) (B677Finite.allTree_join cover2_512 cover2_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover2_1024 cover2_1280) (B677Finite.allTree_join cover2_1536 cover2_1792)))
def step2 : ℕ → Bool := B677Finite.nextPointCheck 2000 1 64 18446744073709551557 row1 row2 transition2
theorem step2_0 : B677Finite.allTree 8 0 step2 = true := by decide +kernel
theorem step2_256 : B677Finite.allTree 8 256 step2 = true := by decide +kernel
theorem step2_512 : B677Finite.allTree 8 512 step2 = true := by decide +kernel
theorem step2_768 : B677Finite.allTree 8 768 step2 = true := by decide +kernel
theorem step2_1024 : B677Finite.allTree 8 1024 step2 = true := by decide +kernel
theorem step2_1280 : B677Finite.allTree 8 1280 step2 = true := by decide +kernel
theorem step2_1536 : B677Finite.allTree 8 1536 step2 = true := by decide +kernel
theorem step2_1792 : B677Finite.allTree 8 1792 step2 = true := by decide +kernel
theorem step2_checked : B677Finite.allTree 11 0 step2 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step2_0 step2_256) (B677Finite.allTree_join step2_512 step2_768)) (B677Finite.allTree_join (B677Finite.allTree_join step2_1024 step2_1280) (B677Finite.allTree_join step2_1536 step2_1792)))
theorem sorted_checked2 : B677Finite.sortedFunctionCheck 11 2000 2 (B677Finite.modValues 64 row2) row2.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups2_checked cover2_checked
theorem step_checked2 : B677Finite.witnessedModNextCheck 11 2000 1 64 18446744073709551557 row1 row2 transition2 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step2_checked
end B677FiniteWitnessGenerated
