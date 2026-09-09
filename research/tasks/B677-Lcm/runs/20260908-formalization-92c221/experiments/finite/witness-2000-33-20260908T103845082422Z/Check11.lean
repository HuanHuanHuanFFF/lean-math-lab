import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data11
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data10
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups11 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row11) row11.sorted
theorem groups11_0 : B677Finite.allTree 8 0 groups11 = true := by decide +kernel
theorem groups11_256 : B677Finite.allTree 8 256 groups11 = true := by decide +kernel
theorem groups11_512 : B677Finite.allTree 8 512 groups11 = true := by decide +kernel
theorem groups11_768 : B677Finite.allTree 8 768 groups11 = true := by decide +kernel
theorem groups11_1024 : B677Finite.allTree 8 1024 groups11 = true := by decide +kernel
theorem groups11_1280 : B677Finite.allTree 8 1280 groups11 = true := by decide +kernel
theorem groups11_1536 : B677Finite.allTree 8 1536 groups11 = true := by decide +kernel
theorem groups11_1792 : B677Finite.allTree 8 1792 groups11 = true := by decide +kernel
theorem groups11_checked : B677Finite.allTree 11 0 groups11 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups11_0 groups11_256) (B677Finite.allTree_join groups11_512 groups11_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups11_1024 groups11_1280) (B677Finite.allTree_join groups11_1536 groups11_1792)))
def cover11 : ℕ → Bool := B677Finite.coverPointCheck 2000 11 (B677Finite.modValues 64 row11) row11.sorted
theorem cover11_0 : B677Finite.allTree 8 0 cover11 = true := by decide +kernel
theorem cover11_256 : B677Finite.allTree 8 256 cover11 = true := by decide +kernel
theorem cover11_512 : B677Finite.allTree 8 512 cover11 = true := by decide +kernel
theorem cover11_768 : B677Finite.allTree 8 768 cover11 = true := by decide +kernel
theorem cover11_1024 : B677Finite.allTree 8 1024 cover11 = true := by decide +kernel
theorem cover11_1280 : B677Finite.allTree 8 1280 cover11 = true := by decide +kernel
theorem cover11_1536 : B677Finite.allTree 8 1536 cover11 = true := by decide +kernel
theorem cover11_1792 : B677Finite.allTree 8 1792 cover11 = true := by decide +kernel
theorem cover11_checked : B677Finite.allTree 11 0 cover11 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover11_0 cover11_256) (B677Finite.allTree_join cover11_512 cover11_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover11_1024 cover11_1280) (B677Finite.allTree_join cover11_1536 cover11_1792)))
def step11 : ℕ → Bool := B677Finite.nextPointCheck 2000 10 64 18446744073709551557 row10 row11 transition11
theorem step11_0 : B677Finite.allTree 8 0 step11 = true := by decide +kernel
theorem step11_256 : B677Finite.allTree 8 256 step11 = true := by decide +kernel
theorem step11_512 : B677Finite.allTree 8 512 step11 = true := by decide +kernel
theorem step11_768 : B677Finite.allTree 8 768 step11 = true := by decide +kernel
theorem step11_1024 : B677Finite.allTree 8 1024 step11 = true := by decide +kernel
theorem step11_1280 : B677Finite.allTree 8 1280 step11 = true := by decide +kernel
theorem step11_1536 : B677Finite.allTree 8 1536 step11 = true := by decide +kernel
theorem step11_1792 : B677Finite.allTree 8 1792 step11 = true := by decide +kernel
theorem step11_checked : B677Finite.allTree 11 0 step11 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step11_0 step11_256) (B677Finite.allTree_join step11_512 step11_768)) (B677Finite.allTree_join (B677Finite.allTree_join step11_1024 step11_1280) (B677Finite.allTree_join step11_1536 step11_1792)))
theorem sorted_checked11 : B677Finite.sortedFunctionCheck 11 2000 11 (B677Finite.modValues 64 row11) row11.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups11_checked cover11_checked
theorem step_checked11 : B677Finite.witnessedModNextCheck 11 2000 10 64 18446744073709551557 row10 row11 transition11 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step11_checked
end B677FiniteWitnessGenerated
