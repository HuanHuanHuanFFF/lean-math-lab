import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data26
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data25
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups26 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row26) row26.sorted
theorem groups26_0 : B677Finite.allTree 8 0 groups26 = true := by decide +kernel
theorem groups26_256 : B677Finite.allTree 8 256 groups26 = true := by decide +kernel
theorem groups26_512 : B677Finite.allTree 8 512 groups26 = true := by decide +kernel
theorem groups26_768 : B677Finite.allTree 8 768 groups26 = true := by decide +kernel
theorem groups26_1024 : B677Finite.allTree 8 1024 groups26 = true := by decide +kernel
theorem groups26_1280 : B677Finite.allTree 8 1280 groups26 = true := by decide +kernel
theorem groups26_1536 : B677Finite.allTree 8 1536 groups26 = true := by decide +kernel
theorem groups26_1792 : B677Finite.allTree 8 1792 groups26 = true := by decide +kernel
theorem groups26_checked : B677Finite.allTree 11 0 groups26 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups26_0 groups26_256) (B677Finite.allTree_join groups26_512 groups26_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups26_1024 groups26_1280) (B677Finite.allTree_join groups26_1536 groups26_1792)))
def cover26 : ℕ → Bool := B677Finite.coverPointCheck 2000 26 (B677Finite.modValues 64 row26) row26.sorted
theorem cover26_0 : B677Finite.allTree 8 0 cover26 = true := by decide +kernel
theorem cover26_256 : B677Finite.allTree 8 256 cover26 = true := by decide +kernel
theorem cover26_512 : B677Finite.allTree 8 512 cover26 = true := by decide +kernel
theorem cover26_768 : B677Finite.allTree 8 768 cover26 = true := by decide +kernel
theorem cover26_1024 : B677Finite.allTree 8 1024 cover26 = true := by decide +kernel
theorem cover26_1280 : B677Finite.allTree 8 1280 cover26 = true := by decide +kernel
theorem cover26_1536 : B677Finite.allTree 8 1536 cover26 = true := by decide +kernel
theorem cover26_1792 : B677Finite.allTree 8 1792 cover26 = true := by decide +kernel
theorem cover26_checked : B677Finite.allTree 11 0 cover26 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover26_0 cover26_256) (B677Finite.allTree_join cover26_512 cover26_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover26_1024 cover26_1280) (B677Finite.allTree_join cover26_1536 cover26_1792)))
def step26 : ℕ → Bool := B677Finite.nextPointCheck 2000 25 64 18446744073709551557 row25 row26 transition26
theorem step26_0 : B677Finite.allTree 8 0 step26 = true := by decide +kernel
theorem step26_256 : B677Finite.allTree 8 256 step26 = true := by decide +kernel
theorem step26_512 : B677Finite.allTree 8 512 step26 = true := by decide +kernel
theorem step26_768 : B677Finite.allTree 8 768 step26 = true := by decide +kernel
theorem step26_1024 : B677Finite.allTree 8 1024 step26 = true := by decide +kernel
theorem step26_1280 : B677Finite.allTree 8 1280 step26 = true := by decide +kernel
theorem step26_1536 : B677Finite.allTree 8 1536 step26 = true := by decide +kernel
theorem step26_1792 : B677Finite.allTree 8 1792 step26 = true := by decide +kernel
theorem step26_checked : B677Finite.allTree 11 0 step26 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step26_0 step26_256) (B677Finite.allTree_join step26_512 step26_768)) (B677Finite.allTree_join (B677Finite.allTree_join step26_1024 step26_1280) (B677Finite.allTree_join step26_1536 step26_1792)))
theorem sorted_checked26 : B677Finite.sortedFunctionCheck 11 2000 26 (B677Finite.modValues 64 row26) row26.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups26_checked cover26_checked
theorem step_checked26 : B677Finite.witnessedModNextCheck 11 2000 25 64 18446744073709551557 row25 row26 transition26 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step26_checked
end B677FiniteWitnessGenerated
