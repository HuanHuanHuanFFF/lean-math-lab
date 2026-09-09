import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data24
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data23
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups24 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row24) row24.sorted
theorem groups24_0 : B677Finite.allTree 8 0 groups24 = true := by decide +kernel
theorem groups24_256 : B677Finite.allTree 8 256 groups24 = true := by decide +kernel
theorem groups24_512 : B677Finite.allTree 8 512 groups24 = true := by decide +kernel
theorem groups24_768 : B677Finite.allTree 8 768 groups24 = true := by decide +kernel
theorem groups24_1024 : B677Finite.allTree 8 1024 groups24 = true := by decide +kernel
theorem groups24_1280 : B677Finite.allTree 8 1280 groups24 = true := by decide +kernel
theorem groups24_1536 : B677Finite.allTree 8 1536 groups24 = true := by decide +kernel
theorem groups24_1792 : B677Finite.allTree 8 1792 groups24 = true := by decide +kernel
theorem groups24_checked : B677Finite.allTree 11 0 groups24 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups24_0 groups24_256) (B677Finite.allTree_join groups24_512 groups24_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups24_1024 groups24_1280) (B677Finite.allTree_join groups24_1536 groups24_1792)))
def cover24 : ℕ → Bool := B677Finite.coverPointCheck 2000 24 (B677Finite.modValues 64 row24) row24.sorted
theorem cover24_0 : B677Finite.allTree 8 0 cover24 = true := by decide +kernel
theorem cover24_256 : B677Finite.allTree 8 256 cover24 = true := by decide +kernel
theorem cover24_512 : B677Finite.allTree 8 512 cover24 = true := by decide +kernel
theorem cover24_768 : B677Finite.allTree 8 768 cover24 = true := by decide +kernel
theorem cover24_1024 : B677Finite.allTree 8 1024 cover24 = true := by decide +kernel
theorem cover24_1280 : B677Finite.allTree 8 1280 cover24 = true := by decide +kernel
theorem cover24_1536 : B677Finite.allTree 8 1536 cover24 = true := by decide +kernel
theorem cover24_1792 : B677Finite.allTree 8 1792 cover24 = true := by decide +kernel
theorem cover24_checked : B677Finite.allTree 11 0 cover24 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover24_0 cover24_256) (B677Finite.allTree_join cover24_512 cover24_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover24_1024 cover24_1280) (B677Finite.allTree_join cover24_1536 cover24_1792)))
def step24 : ℕ → Bool := B677Finite.nextPointCheck 2000 23 64 18446744073709551557 row23 row24 transition24
theorem step24_0 : B677Finite.allTree 8 0 step24 = true := by decide +kernel
theorem step24_256 : B677Finite.allTree 8 256 step24 = true := by decide +kernel
theorem step24_512 : B677Finite.allTree 8 512 step24 = true := by decide +kernel
theorem step24_768 : B677Finite.allTree 8 768 step24 = true := by decide +kernel
theorem step24_1024 : B677Finite.allTree 8 1024 step24 = true := by decide +kernel
theorem step24_1280 : B677Finite.allTree 8 1280 step24 = true := by decide +kernel
theorem step24_1536 : B677Finite.allTree 8 1536 step24 = true := by decide +kernel
theorem step24_1792 : B677Finite.allTree 8 1792 step24 = true := by decide +kernel
theorem step24_checked : B677Finite.allTree 11 0 step24 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step24_0 step24_256) (B677Finite.allTree_join step24_512 step24_768)) (B677Finite.allTree_join (B677Finite.allTree_join step24_1024 step24_1280) (B677Finite.allTree_join step24_1536 step24_1792)))
theorem sorted_checked24 : B677Finite.sortedFunctionCheck 11 2000 24 (B677Finite.modValues 64 row24) row24.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups24_checked cover24_checked
theorem step_checked24 : B677Finite.witnessedModNextCheck 11 2000 23 64 18446744073709551557 row23 row24 transition24 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step24_checked
end B677FiniteWitnessGenerated
