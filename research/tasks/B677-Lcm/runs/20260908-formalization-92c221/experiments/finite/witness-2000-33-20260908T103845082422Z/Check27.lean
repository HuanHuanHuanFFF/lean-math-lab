import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data27
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data26
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups27 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row27) row27.sorted
theorem groups27_0 : B677Finite.allTree 8 0 groups27 = true := by decide +kernel
theorem groups27_256 : B677Finite.allTree 8 256 groups27 = true := by decide +kernel
theorem groups27_512 : B677Finite.allTree 8 512 groups27 = true := by decide +kernel
theorem groups27_768 : B677Finite.allTree 8 768 groups27 = true := by decide +kernel
theorem groups27_1024 : B677Finite.allTree 8 1024 groups27 = true := by decide +kernel
theorem groups27_1280 : B677Finite.allTree 8 1280 groups27 = true := by decide +kernel
theorem groups27_1536 : B677Finite.allTree 8 1536 groups27 = true := by decide +kernel
theorem groups27_1792 : B677Finite.allTree 8 1792 groups27 = true := by decide +kernel
theorem groups27_checked : B677Finite.allTree 11 0 groups27 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups27_0 groups27_256) (B677Finite.allTree_join groups27_512 groups27_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups27_1024 groups27_1280) (B677Finite.allTree_join groups27_1536 groups27_1792)))
def cover27 : ℕ → Bool := B677Finite.coverPointCheck 2000 27 (B677Finite.modValues 64 row27) row27.sorted
theorem cover27_0 : B677Finite.allTree 8 0 cover27 = true := by decide +kernel
theorem cover27_256 : B677Finite.allTree 8 256 cover27 = true := by decide +kernel
theorem cover27_512 : B677Finite.allTree 8 512 cover27 = true := by decide +kernel
theorem cover27_768 : B677Finite.allTree 8 768 cover27 = true := by decide +kernel
theorem cover27_1024 : B677Finite.allTree 8 1024 cover27 = true := by decide +kernel
theorem cover27_1280 : B677Finite.allTree 8 1280 cover27 = true := by decide +kernel
theorem cover27_1536 : B677Finite.allTree 8 1536 cover27 = true := by decide +kernel
theorem cover27_1792 : B677Finite.allTree 8 1792 cover27 = true := by decide +kernel
theorem cover27_checked : B677Finite.allTree 11 0 cover27 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover27_0 cover27_256) (B677Finite.allTree_join cover27_512 cover27_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover27_1024 cover27_1280) (B677Finite.allTree_join cover27_1536 cover27_1792)))
def step27 : ℕ → Bool := B677Finite.nextPointCheck 2000 26 64 18446744073709551557 row26 row27 transition27
theorem step27_0 : B677Finite.allTree 8 0 step27 = true := by decide +kernel
theorem step27_256 : B677Finite.allTree 8 256 step27 = true := by decide +kernel
theorem step27_512 : B677Finite.allTree 8 512 step27 = true := by decide +kernel
theorem step27_768 : B677Finite.allTree 8 768 step27 = true := by decide +kernel
theorem step27_1024 : B677Finite.allTree 8 1024 step27 = true := by decide +kernel
theorem step27_1280 : B677Finite.allTree 8 1280 step27 = true := by decide +kernel
theorem step27_1536 : B677Finite.allTree 8 1536 step27 = true := by decide +kernel
theorem step27_1792 : B677Finite.allTree 8 1792 step27 = true := by decide +kernel
theorem step27_checked : B677Finite.allTree 11 0 step27 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step27_0 step27_256) (B677Finite.allTree_join step27_512 step27_768)) (B677Finite.allTree_join (B677Finite.allTree_join step27_1024 step27_1280) (B677Finite.allTree_join step27_1536 step27_1792)))
theorem sorted_checked27 : B677Finite.sortedFunctionCheck 11 2000 27 (B677Finite.modValues 64 row27) row27.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups27_checked cover27_checked
theorem step_checked27 : B677Finite.witnessedModNextCheck 11 2000 26 64 18446744073709551557 row26 row27 transition27 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step27_checked
end B677FiniteWitnessGenerated
