import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data28
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data27
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups28 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row28) row28.sorted
theorem groups28_0 : B677Finite.allTree 8 0 groups28 = true := by decide +kernel
theorem groups28_256 : B677Finite.allTree 8 256 groups28 = true := by decide +kernel
theorem groups28_512 : B677Finite.allTree 8 512 groups28 = true := by decide +kernel
theorem groups28_768 : B677Finite.allTree 8 768 groups28 = true := by decide +kernel
theorem groups28_1024 : B677Finite.allTree 8 1024 groups28 = true := by decide +kernel
theorem groups28_1280 : B677Finite.allTree 8 1280 groups28 = true := by decide +kernel
theorem groups28_1536 : B677Finite.allTree 8 1536 groups28 = true := by decide +kernel
theorem groups28_1792 : B677Finite.allTree 8 1792 groups28 = true := by decide +kernel
theorem groups28_checked : B677Finite.allTree 11 0 groups28 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups28_0 groups28_256) (B677Finite.allTree_join groups28_512 groups28_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups28_1024 groups28_1280) (B677Finite.allTree_join groups28_1536 groups28_1792)))
def cover28 : ℕ → Bool := B677Finite.coverPointCheck 2000 28 (B677Finite.modValues 64 row28) row28.sorted
theorem cover28_0 : B677Finite.allTree 8 0 cover28 = true := by decide +kernel
theorem cover28_256 : B677Finite.allTree 8 256 cover28 = true := by decide +kernel
theorem cover28_512 : B677Finite.allTree 8 512 cover28 = true := by decide +kernel
theorem cover28_768 : B677Finite.allTree 8 768 cover28 = true := by decide +kernel
theorem cover28_1024 : B677Finite.allTree 8 1024 cover28 = true := by decide +kernel
theorem cover28_1280 : B677Finite.allTree 8 1280 cover28 = true := by decide +kernel
theorem cover28_1536 : B677Finite.allTree 8 1536 cover28 = true := by decide +kernel
theorem cover28_1792 : B677Finite.allTree 8 1792 cover28 = true := by decide +kernel
theorem cover28_checked : B677Finite.allTree 11 0 cover28 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover28_0 cover28_256) (B677Finite.allTree_join cover28_512 cover28_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover28_1024 cover28_1280) (B677Finite.allTree_join cover28_1536 cover28_1792)))
def step28 : ℕ → Bool := B677Finite.nextPointCheck 2000 27 64 18446744073709551557 row27 row28 transition28
theorem step28_0 : B677Finite.allTree 8 0 step28 = true := by decide +kernel
theorem step28_256 : B677Finite.allTree 8 256 step28 = true := by decide +kernel
theorem step28_512 : B677Finite.allTree 8 512 step28 = true := by decide +kernel
theorem step28_768 : B677Finite.allTree 8 768 step28 = true := by decide +kernel
theorem step28_1024 : B677Finite.allTree 8 1024 step28 = true := by decide +kernel
theorem step28_1280 : B677Finite.allTree 8 1280 step28 = true := by decide +kernel
theorem step28_1536 : B677Finite.allTree 8 1536 step28 = true := by decide +kernel
theorem step28_1792 : B677Finite.allTree 8 1792 step28 = true := by decide +kernel
theorem step28_checked : B677Finite.allTree 11 0 step28 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step28_0 step28_256) (B677Finite.allTree_join step28_512 step28_768)) (B677Finite.allTree_join (B677Finite.allTree_join step28_1024 step28_1280) (B677Finite.allTree_join step28_1536 step28_1792)))
theorem sorted_checked28 : B677Finite.sortedFunctionCheck 11 2000 28 (B677Finite.modValues 64 row28) row28.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups28_checked cover28_checked
theorem step_checked28 : B677Finite.witnessedModNextCheck 11 2000 27 64 18446744073709551557 row27 row28 transition28 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step28_checked
end B677FiniteWitnessGenerated
