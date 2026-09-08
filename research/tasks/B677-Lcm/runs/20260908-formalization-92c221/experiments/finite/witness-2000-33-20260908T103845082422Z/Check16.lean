import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data16
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data15
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups16 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row16) row16.sorted
theorem groups16_0 : B677Finite.allTree 8 0 groups16 = true := by decide +kernel
theorem groups16_256 : B677Finite.allTree 8 256 groups16 = true := by decide +kernel
theorem groups16_512 : B677Finite.allTree 8 512 groups16 = true := by decide +kernel
theorem groups16_768 : B677Finite.allTree 8 768 groups16 = true := by decide +kernel
theorem groups16_1024 : B677Finite.allTree 8 1024 groups16 = true := by decide +kernel
theorem groups16_1280 : B677Finite.allTree 8 1280 groups16 = true := by decide +kernel
theorem groups16_1536 : B677Finite.allTree 8 1536 groups16 = true := by decide +kernel
theorem groups16_1792 : B677Finite.allTree 8 1792 groups16 = true := by decide +kernel
theorem groups16_checked : B677Finite.allTree 11 0 groups16 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups16_0 groups16_256) (B677Finite.allTree_join groups16_512 groups16_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups16_1024 groups16_1280) (B677Finite.allTree_join groups16_1536 groups16_1792)))
def cover16 : ℕ → Bool := B677Finite.coverPointCheck 2000 16 (B677Finite.modValues 64 row16) row16.sorted
theorem cover16_0 : B677Finite.allTree 8 0 cover16 = true := by decide +kernel
theorem cover16_256 : B677Finite.allTree 8 256 cover16 = true := by decide +kernel
theorem cover16_512 : B677Finite.allTree 8 512 cover16 = true := by decide +kernel
theorem cover16_768 : B677Finite.allTree 8 768 cover16 = true := by decide +kernel
theorem cover16_1024 : B677Finite.allTree 8 1024 cover16 = true := by decide +kernel
theorem cover16_1280 : B677Finite.allTree 8 1280 cover16 = true := by decide +kernel
theorem cover16_1536 : B677Finite.allTree 8 1536 cover16 = true := by decide +kernel
theorem cover16_1792 : B677Finite.allTree 8 1792 cover16 = true := by decide +kernel
theorem cover16_checked : B677Finite.allTree 11 0 cover16 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover16_0 cover16_256) (B677Finite.allTree_join cover16_512 cover16_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover16_1024 cover16_1280) (B677Finite.allTree_join cover16_1536 cover16_1792)))
def step16 : ℕ → Bool := B677Finite.nextPointCheck 2000 15 64 18446744073709551557 row15 row16 transition16
theorem step16_0 : B677Finite.allTree 8 0 step16 = true := by decide +kernel
theorem step16_256 : B677Finite.allTree 8 256 step16 = true := by decide +kernel
theorem step16_512 : B677Finite.allTree 8 512 step16 = true := by decide +kernel
theorem step16_768 : B677Finite.allTree 8 768 step16 = true := by decide +kernel
theorem step16_1024 : B677Finite.allTree 8 1024 step16 = true := by decide +kernel
theorem step16_1280 : B677Finite.allTree 8 1280 step16 = true := by decide +kernel
theorem step16_1536 : B677Finite.allTree 8 1536 step16 = true := by decide +kernel
theorem step16_1792 : B677Finite.allTree 8 1792 step16 = true := by decide +kernel
theorem step16_checked : B677Finite.allTree 11 0 step16 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step16_0 step16_256) (B677Finite.allTree_join step16_512 step16_768)) (B677Finite.allTree_join (B677Finite.allTree_join step16_1024 step16_1280) (B677Finite.allTree_join step16_1536 step16_1792)))
theorem sorted_checked16 : B677Finite.sortedFunctionCheck 11 2000 16 (B677Finite.modValues 64 row16) row16.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups16_checked cover16_checked
theorem step_checked16 : B677Finite.witnessedModNextCheck 11 2000 15 64 18446744073709551557 row15 row16 transition16 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step16_checked
end B677FiniteWitnessGenerated
