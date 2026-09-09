import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data18
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data17
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups18 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row18) row18.sorted
theorem groups18_0 : B677Finite.allTree 8 0 groups18 = true := by decide +kernel
theorem groups18_256 : B677Finite.allTree 8 256 groups18 = true := by decide +kernel
theorem groups18_512 : B677Finite.allTree 8 512 groups18 = true := by decide +kernel
theorem groups18_768 : B677Finite.allTree 8 768 groups18 = true := by decide +kernel
theorem groups18_1024 : B677Finite.allTree 8 1024 groups18 = true := by decide +kernel
theorem groups18_1280 : B677Finite.allTree 8 1280 groups18 = true := by decide +kernel
theorem groups18_1536 : B677Finite.allTree 8 1536 groups18 = true := by decide +kernel
theorem groups18_1792 : B677Finite.allTree 8 1792 groups18 = true := by decide +kernel
theorem groups18_checked : B677Finite.allTree 11 0 groups18 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups18_0 groups18_256) (B677Finite.allTree_join groups18_512 groups18_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups18_1024 groups18_1280) (B677Finite.allTree_join groups18_1536 groups18_1792)))
def cover18 : ℕ → Bool := B677Finite.coverPointCheck 2000 18 (B677Finite.modValues 64 row18) row18.sorted
theorem cover18_0 : B677Finite.allTree 8 0 cover18 = true := by decide +kernel
theorem cover18_256 : B677Finite.allTree 8 256 cover18 = true := by decide +kernel
theorem cover18_512 : B677Finite.allTree 8 512 cover18 = true := by decide +kernel
theorem cover18_768 : B677Finite.allTree 8 768 cover18 = true := by decide +kernel
theorem cover18_1024 : B677Finite.allTree 8 1024 cover18 = true := by decide +kernel
theorem cover18_1280 : B677Finite.allTree 8 1280 cover18 = true := by decide +kernel
theorem cover18_1536 : B677Finite.allTree 8 1536 cover18 = true := by decide +kernel
theorem cover18_1792 : B677Finite.allTree 8 1792 cover18 = true := by decide +kernel
theorem cover18_checked : B677Finite.allTree 11 0 cover18 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover18_0 cover18_256) (B677Finite.allTree_join cover18_512 cover18_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover18_1024 cover18_1280) (B677Finite.allTree_join cover18_1536 cover18_1792)))
def step18 : ℕ → Bool := B677Finite.nextPointCheck 2000 17 64 18446744073709551557 row17 row18 transition18
theorem step18_0 : B677Finite.allTree 8 0 step18 = true := by decide +kernel
theorem step18_256 : B677Finite.allTree 8 256 step18 = true := by decide +kernel
theorem step18_512 : B677Finite.allTree 8 512 step18 = true := by decide +kernel
theorem step18_768 : B677Finite.allTree 8 768 step18 = true := by decide +kernel
theorem step18_1024 : B677Finite.allTree 8 1024 step18 = true := by decide +kernel
theorem step18_1280 : B677Finite.allTree 8 1280 step18 = true := by decide +kernel
theorem step18_1536 : B677Finite.allTree 8 1536 step18 = true := by decide +kernel
theorem step18_1792 : B677Finite.allTree 8 1792 step18 = true := by decide +kernel
theorem step18_checked : B677Finite.allTree 11 0 step18 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step18_0 step18_256) (B677Finite.allTree_join step18_512 step18_768)) (B677Finite.allTree_join (B677Finite.allTree_join step18_1024 step18_1280) (B677Finite.allTree_join step18_1536 step18_1792)))
theorem sorted_checked18 : B677Finite.sortedFunctionCheck 11 2000 18 (B677Finite.modValues 64 row18) row18.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups18_checked cover18_checked
theorem step_checked18 : B677Finite.witnessedModNextCheck 11 2000 17 64 18446744073709551557 row17 row18 transition18 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step18_checked
end B677FiniteWitnessGenerated
