import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data08
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data07
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups8 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row8) row8.sorted
theorem groups8_0 : B677Finite.allTree 8 0 groups8 = true := by decide +kernel
theorem groups8_256 : B677Finite.allTree 8 256 groups8 = true := by decide +kernel
theorem groups8_512 : B677Finite.allTree 8 512 groups8 = true := by decide +kernel
theorem groups8_768 : B677Finite.allTree 8 768 groups8 = true := by decide +kernel
theorem groups8_1024 : B677Finite.allTree 8 1024 groups8 = true := by decide +kernel
theorem groups8_1280 : B677Finite.allTree 8 1280 groups8 = true := by decide +kernel
theorem groups8_1536 : B677Finite.allTree 8 1536 groups8 = true := by decide +kernel
theorem groups8_1792 : B677Finite.allTree 8 1792 groups8 = true := by decide +kernel
theorem groups8_checked : B677Finite.allTree 11 0 groups8 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups8_0 groups8_256) (B677Finite.allTree_join groups8_512 groups8_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups8_1024 groups8_1280) (B677Finite.allTree_join groups8_1536 groups8_1792)))
def cover8 : ℕ → Bool := B677Finite.coverPointCheck 2000 8 (B677Finite.modValues 64 row8) row8.sorted
theorem cover8_0 : B677Finite.allTree 8 0 cover8 = true := by decide +kernel
theorem cover8_256 : B677Finite.allTree 8 256 cover8 = true := by decide +kernel
theorem cover8_512 : B677Finite.allTree 8 512 cover8 = true := by decide +kernel
theorem cover8_768 : B677Finite.allTree 8 768 cover8 = true := by decide +kernel
theorem cover8_1024 : B677Finite.allTree 8 1024 cover8 = true := by decide +kernel
theorem cover8_1280 : B677Finite.allTree 8 1280 cover8 = true := by decide +kernel
theorem cover8_1536 : B677Finite.allTree 8 1536 cover8 = true := by decide +kernel
theorem cover8_1792 : B677Finite.allTree 8 1792 cover8 = true := by decide +kernel
theorem cover8_checked : B677Finite.allTree 11 0 cover8 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover8_0 cover8_256) (B677Finite.allTree_join cover8_512 cover8_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover8_1024 cover8_1280) (B677Finite.allTree_join cover8_1536 cover8_1792)))
def step8 : ℕ → Bool := B677Finite.nextPointCheck 2000 7 64 18446744073709551557 row7 row8 transition8
theorem step8_0 : B677Finite.allTree 8 0 step8 = true := by decide +kernel
theorem step8_256 : B677Finite.allTree 8 256 step8 = true := by decide +kernel
theorem step8_512 : B677Finite.allTree 8 512 step8 = true := by decide +kernel
theorem step8_768 : B677Finite.allTree 8 768 step8 = true := by decide +kernel
theorem step8_1024 : B677Finite.allTree 8 1024 step8 = true := by decide +kernel
theorem step8_1280 : B677Finite.allTree 8 1280 step8 = true := by decide +kernel
theorem step8_1536 : B677Finite.allTree 8 1536 step8 = true := by decide +kernel
theorem step8_1792 : B677Finite.allTree 8 1792 step8 = true := by decide +kernel
theorem step8_checked : B677Finite.allTree 11 0 step8 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step8_0 step8_256) (B677Finite.allTree_join step8_512 step8_768)) (B677Finite.allTree_join (B677Finite.allTree_join step8_1024 step8_1280) (B677Finite.allTree_join step8_1536 step8_1792)))
theorem sorted_checked8 : B677Finite.sortedFunctionCheck 11 2000 8 (B677Finite.modValues 64 row8) row8.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups8_checked cover8_checked
theorem step_checked8 : B677Finite.witnessedModNextCheck 11 2000 7 64 18446744073709551557 row7 row8 transition8 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step8_checked
end B677FiniteWitnessGenerated
