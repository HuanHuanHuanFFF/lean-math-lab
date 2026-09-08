import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data29
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data28
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups29 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row29) row29.sorted
theorem groups29_0 : B677Finite.allTree 8 0 groups29 = true := by decide +kernel
theorem groups29_256 : B677Finite.allTree 8 256 groups29 = true := by decide +kernel
theorem groups29_512 : B677Finite.allTree 8 512 groups29 = true := by decide +kernel
theorem groups29_768 : B677Finite.allTree 8 768 groups29 = true := by decide +kernel
theorem groups29_1024 : B677Finite.allTree 8 1024 groups29 = true := by decide +kernel
theorem groups29_1280 : B677Finite.allTree 8 1280 groups29 = true := by decide +kernel
theorem groups29_1536 : B677Finite.allTree 8 1536 groups29 = true := by decide +kernel
theorem groups29_1792 : B677Finite.allTree 8 1792 groups29 = true := by decide +kernel
theorem groups29_checked : B677Finite.allTree 11 0 groups29 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups29_0 groups29_256) (B677Finite.allTree_join groups29_512 groups29_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups29_1024 groups29_1280) (B677Finite.allTree_join groups29_1536 groups29_1792)))
def cover29 : ℕ → Bool := B677Finite.coverPointCheck 2000 29 (B677Finite.modValues 64 row29) row29.sorted
theorem cover29_0 : B677Finite.allTree 8 0 cover29 = true := by decide +kernel
theorem cover29_256 : B677Finite.allTree 8 256 cover29 = true := by decide +kernel
theorem cover29_512 : B677Finite.allTree 8 512 cover29 = true := by decide +kernel
theorem cover29_768 : B677Finite.allTree 8 768 cover29 = true := by decide +kernel
theorem cover29_1024 : B677Finite.allTree 8 1024 cover29 = true := by decide +kernel
theorem cover29_1280 : B677Finite.allTree 8 1280 cover29 = true := by decide +kernel
theorem cover29_1536 : B677Finite.allTree 8 1536 cover29 = true := by decide +kernel
theorem cover29_1792 : B677Finite.allTree 8 1792 cover29 = true := by decide +kernel
theorem cover29_checked : B677Finite.allTree 11 0 cover29 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover29_0 cover29_256) (B677Finite.allTree_join cover29_512 cover29_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover29_1024 cover29_1280) (B677Finite.allTree_join cover29_1536 cover29_1792)))
def step29 : ℕ → Bool := B677Finite.nextPointCheck 2000 28 64 18446744073709551557 row28 row29 transition29
theorem step29_0 : B677Finite.allTree 8 0 step29 = true := by decide +kernel
theorem step29_256 : B677Finite.allTree 8 256 step29 = true := by decide +kernel
theorem step29_512 : B677Finite.allTree 8 512 step29 = true := by decide +kernel
theorem step29_768 : B677Finite.allTree 8 768 step29 = true := by decide +kernel
theorem step29_1024 : B677Finite.allTree 8 1024 step29 = true := by decide +kernel
theorem step29_1280 : B677Finite.allTree 8 1280 step29 = true := by decide +kernel
theorem step29_1536 : B677Finite.allTree 8 1536 step29 = true := by decide +kernel
theorem step29_1792 : B677Finite.allTree 8 1792 step29 = true := by decide +kernel
theorem step29_checked : B677Finite.allTree 11 0 step29 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step29_0 step29_256) (B677Finite.allTree_join step29_512 step29_768)) (B677Finite.allTree_join (B677Finite.allTree_join step29_1024 step29_1280) (B677Finite.allTree_join step29_1536 step29_1792)))
theorem sorted_checked29 : B677Finite.sortedFunctionCheck 11 2000 29 (B677Finite.modValues 64 row29) row29.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups29_checked cover29_checked
theorem step_checked29 : B677Finite.witnessedModNextCheck 11 2000 28 64 18446744073709551557 row28 row29 transition29 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step29_checked
end B677FiniteWitnessGenerated
