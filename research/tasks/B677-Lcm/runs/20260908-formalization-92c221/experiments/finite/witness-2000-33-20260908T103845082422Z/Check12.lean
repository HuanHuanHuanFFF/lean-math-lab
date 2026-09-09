import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data12
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data11
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups12 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row12) row12.sorted
theorem groups12_0 : B677Finite.allTree 8 0 groups12 = true := by decide +kernel
theorem groups12_256 : B677Finite.allTree 8 256 groups12 = true := by decide +kernel
theorem groups12_512 : B677Finite.allTree 8 512 groups12 = true := by decide +kernel
theorem groups12_768 : B677Finite.allTree 8 768 groups12 = true := by decide +kernel
theorem groups12_1024 : B677Finite.allTree 8 1024 groups12 = true := by decide +kernel
theorem groups12_1280 : B677Finite.allTree 8 1280 groups12 = true := by decide +kernel
theorem groups12_1536 : B677Finite.allTree 8 1536 groups12 = true := by decide +kernel
theorem groups12_1792 : B677Finite.allTree 8 1792 groups12 = true := by decide +kernel
theorem groups12_checked : B677Finite.allTree 11 0 groups12 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups12_0 groups12_256) (B677Finite.allTree_join groups12_512 groups12_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups12_1024 groups12_1280) (B677Finite.allTree_join groups12_1536 groups12_1792)))
def cover12 : ℕ → Bool := B677Finite.coverPointCheck 2000 12 (B677Finite.modValues 64 row12) row12.sorted
theorem cover12_0 : B677Finite.allTree 8 0 cover12 = true := by decide +kernel
theorem cover12_256 : B677Finite.allTree 8 256 cover12 = true := by decide +kernel
theorem cover12_512 : B677Finite.allTree 8 512 cover12 = true := by decide +kernel
theorem cover12_768 : B677Finite.allTree 8 768 cover12 = true := by decide +kernel
theorem cover12_1024 : B677Finite.allTree 8 1024 cover12 = true := by decide +kernel
theorem cover12_1280 : B677Finite.allTree 8 1280 cover12 = true := by decide +kernel
theorem cover12_1536 : B677Finite.allTree 8 1536 cover12 = true := by decide +kernel
theorem cover12_1792 : B677Finite.allTree 8 1792 cover12 = true := by decide +kernel
theorem cover12_checked : B677Finite.allTree 11 0 cover12 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover12_0 cover12_256) (B677Finite.allTree_join cover12_512 cover12_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover12_1024 cover12_1280) (B677Finite.allTree_join cover12_1536 cover12_1792)))
def step12 : ℕ → Bool := B677Finite.nextPointCheck 2000 11 64 18446744073709551557 row11 row12 transition12
theorem step12_0 : B677Finite.allTree 8 0 step12 = true := by decide +kernel
theorem step12_256 : B677Finite.allTree 8 256 step12 = true := by decide +kernel
theorem step12_512 : B677Finite.allTree 8 512 step12 = true := by decide +kernel
theorem step12_768 : B677Finite.allTree 8 768 step12 = true := by decide +kernel
theorem step12_1024 : B677Finite.allTree 8 1024 step12 = true := by decide +kernel
theorem step12_1280 : B677Finite.allTree 8 1280 step12 = true := by decide +kernel
theorem step12_1536 : B677Finite.allTree 8 1536 step12 = true := by decide +kernel
theorem step12_1792 : B677Finite.allTree 8 1792 step12 = true := by decide +kernel
theorem step12_checked : B677Finite.allTree 11 0 step12 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step12_0 step12_256) (B677Finite.allTree_join step12_512 step12_768)) (B677Finite.allTree_join (B677Finite.allTree_join step12_1024 step12_1280) (B677Finite.allTree_join step12_1536 step12_1792)))
theorem sorted_checked12 : B677Finite.sortedFunctionCheck 11 2000 12 (B677Finite.modValues 64 row12) row12.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups12_checked cover12_checked
theorem step_checked12 : B677Finite.witnessedModNextCheck 11 2000 11 64 18446744073709551557 row11 row12 transition12 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step12_checked
end B677FiniteWitnessGenerated
