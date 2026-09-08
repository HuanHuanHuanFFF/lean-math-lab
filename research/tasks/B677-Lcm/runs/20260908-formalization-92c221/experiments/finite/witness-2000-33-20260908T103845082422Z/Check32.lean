import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data32
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data31
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups32 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row32) row32.sorted
theorem groups32_0 : B677Finite.allTree 8 0 groups32 = true := by decide +kernel
theorem groups32_256 : B677Finite.allTree 8 256 groups32 = true := by decide +kernel
theorem groups32_512 : B677Finite.allTree 8 512 groups32 = true := by decide +kernel
theorem groups32_768 : B677Finite.allTree 8 768 groups32 = true := by decide +kernel
theorem groups32_1024 : B677Finite.allTree 8 1024 groups32 = true := by decide +kernel
theorem groups32_1280 : B677Finite.allTree 8 1280 groups32 = true := by decide +kernel
theorem groups32_1536 : B677Finite.allTree 8 1536 groups32 = true := by decide +kernel
theorem groups32_1792 : B677Finite.allTree 8 1792 groups32 = true := by decide +kernel
theorem groups32_checked : B677Finite.allTree 11 0 groups32 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups32_0 groups32_256) (B677Finite.allTree_join groups32_512 groups32_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups32_1024 groups32_1280) (B677Finite.allTree_join groups32_1536 groups32_1792)))
def cover32 : ℕ → Bool := B677Finite.coverPointCheck 2000 32 (B677Finite.modValues 64 row32) row32.sorted
theorem cover32_0 : B677Finite.allTree 8 0 cover32 = true := by decide +kernel
theorem cover32_256 : B677Finite.allTree 8 256 cover32 = true := by decide +kernel
theorem cover32_512 : B677Finite.allTree 8 512 cover32 = true := by decide +kernel
theorem cover32_768 : B677Finite.allTree 8 768 cover32 = true := by decide +kernel
theorem cover32_1024 : B677Finite.allTree 8 1024 cover32 = true := by decide +kernel
theorem cover32_1280 : B677Finite.allTree 8 1280 cover32 = true := by decide +kernel
theorem cover32_1536 : B677Finite.allTree 8 1536 cover32 = true := by decide +kernel
theorem cover32_1792 : B677Finite.allTree 8 1792 cover32 = true := by decide +kernel
theorem cover32_checked : B677Finite.allTree 11 0 cover32 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover32_0 cover32_256) (B677Finite.allTree_join cover32_512 cover32_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover32_1024 cover32_1280) (B677Finite.allTree_join cover32_1536 cover32_1792)))
def step32 : ℕ → Bool := B677Finite.nextPointCheck 2000 31 64 18446744073709551557 row31 row32 transition32
theorem step32_0 : B677Finite.allTree 8 0 step32 = true := by decide +kernel
theorem step32_256 : B677Finite.allTree 8 256 step32 = true := by decide +kernel
theorem step32_512 : B677Finite.allTree 8 512 step32 = true := by decide +kernel
theorem step32_768 : B677Finite.allTree 8 768 step32 = true := by decide +kernel
theorem step32_1024 : B677Finite.allTree 8 1024 step32 = true := by decide +kernel
theorem step32_1280 : B677Finite.allTree 8 1280 step32 = true := by decide +kernel
theorem step32_1536 : B677Finite.allTree 8 1536 step32 = true := by decide +kernel
theorem step32_1792 : B677Finite.allTree 8 1792 step32 = true := by decide +kernel
theorem step32_checked : B677Finite.allTree 11 0 step32 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step32_0 step32_256) (B677Finite.allTree_join step32_512 step32_768)) (B677Finite.allTree_join (B677Finite.allTree_join step32_1024 step32_1280) (B677Finite.allTree_join step32_1536 step32_1792)))
theorem sorted_checked32 : B677Finite.sortedFunctionCheck 11 2000 32 (B677Finite.modValues 64 row32) row32.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups32_checked cover32_checked
theorem step_checked32 : B677Finite.witnessedModNextCheck 11 2000 31 64 18446744073709551557 row31 row32 transition32 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step32_checked
end B677FiniteWitnessGenerated
