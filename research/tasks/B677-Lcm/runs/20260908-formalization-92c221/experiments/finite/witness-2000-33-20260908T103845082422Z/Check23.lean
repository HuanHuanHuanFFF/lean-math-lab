import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data23
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data22
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups23 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row23) row23.sorted
theorem groups23_0 : B677Finite.allTree 8 0 groups23 = true := by decide +kernel
theorem groups23_256 : B677Finite.allTree 8 256 groups23 = true := by decide +kernel
theorem groups23_512 : B677Finite.allTree 8 512 groups23 = true := by decide +kernel
theorem groups23_768 : B677Finite.allTree 8 768 groups23 = true := by decide +kernel
theorem groups23_1024 : B677Finite.allTree 8 1024 groups23 = true := by decide +kernel
theorem groups23_1280 : B677Finite.allTree 8 1280 groups23 = true := by decide +kernel
theorem groups23_1536 : B677Finite.allTree 8 1536 groups23 = true := by decide +kernel
theorem groups23_1792 : B677Finite.allTree 8 1792 groups23 = true := by decide +kernel
theorem groups23_checked : B677Finite.allTree 11 0 groups23 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups23_0 groups23_256) (B677Finite.allTree_join groups23_512 groups23_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups23_1024 groups23_1280) (B677Finite.allTree_join groups23_1536 groups23_1792)))
def cover23 : ℕ → Bool := B677Finite.coverPointCheck 2000 23 (B677Finite.modValues 64 row23) row23.sorted
theorem cover23_0 : B677Finite.allTree 8 0 cover23 = true := by decide +kernel
theorem cover23_256 : B677Finite.allTree 8 256 cover23 = true := by decide +kernel
theorem cover23_512 : B677Finite.allTree 8 512 cover23 = true := by decide +kernel
theorem cover23_768 : B677Finite.allTree 8 768 cover23 = true := by decide +kernel
theorem cover23_1024 : B677Finite.allTree 8 1024 cover23 = true := by decide +kernel
theorem cover23_1280 : B677Finite.allTree 8 1280 cover23 = true := by decide +kernel
theorem cover23_1536 : B677Finite.allTree 8 1536 cover23 = true := by decide +kernel
theorem cover23_1792 : B677Finite.allTree 8 1792 cover23 = true := by decide +kernel
theorem cover23_checked : B677Finite.allTree 11 0 cover23 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover23_0 cover23_256) (B677Finite.allTree_join cover23_512 cover23_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover23_1024 cover23_1280) (B677Finite.allTree_join cover23_1536 cover23_1792)))
def step23 : ℕ → Bool := B677Finite.nextPointCheck 2000 22 64 18446744073709551557 row22 row23 transition23
theorem step23_0 : B677Finite.allTree 8 0 step23 = true := by decide +kernel
theorem step23_256 : B677Finite.allTree 8 256 step23 = true := by decide +kernel
theorem step23_512 : B677Finite.allTree 8 512 step23 = true := by decide +kernel
theorem step23_768 : B677Finite.allTree 8 768 step23 = true := by decide +kernel
theorem step23_1024 : B677Finite.allTree 8 1024 step23 = true := by decide +kernel
theorem step23_1280 : B677Finite.allTree 8 1280 step23 = true := by decide +kernel
theorem step23_1536 : B677Finite.allTree 8 1536 step23 = true := by decide +kernel
theorem step23_1792 : B677Finite.allTree 8 1792 step23 = true := by decide +kernel
theorem step23_checked : B677Finite.allTree 11 0 step23 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step23_0 step23_256) (B677Finite.allTree_join step23_512 step23_768)) (B677Finite.allTree_join (B677Finite.allTree_join step23_1024 step23_1280) (B677Finite.allTree_join step23_1536 step23_1792)))
theorem sorted_checked23 : B677Finite.sortedFunctionCheck 11 2000 23 (B677Finite.modValues 64 row23) row23.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups23_checked cover23_checked
theorem step_checked23 : B677Finite.witnessedModNextCheck 11 2000 22 64 18446744073709551557 row22 row23 transition23 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step23_checked
end B677FiniteWitnessGenerated
