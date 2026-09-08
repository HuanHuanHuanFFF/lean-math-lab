import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data07
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data06
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups7 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row7) row7.sorted
theorem groups7_0 : B677Finite.allTree 8 0 groups7 = true := by decide +kernel
theorem groups7_256 : B677Finite.allTree 8 256 groups7 = true := by decide +kernel
theorem groups7_512 : B677Finite.allTree 8 512 groups7 = true := by decide +kernel
theorem groups7_768 : B677Finite.allTree 8 768 groups7 = true := by decide +kernel
theorem groups7_1024 : B677Finite.allTree 8 1024 groups7 = true := by decide +kernel
theorem groups7_1280 : B677Finite.allTree 8 1280 groups7 = true := by decide +kernel
theorem groups7_1536 : B677Finite.allTree 8 1536 groups7 = true := by decide +kernel
theorem groups7_1792 : B677Finite.allTree 8 1792 groups7 = true := by decide +kernel
theorem groups7_checked : B677Finite.allTree 11 0 groups7 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups7_0 groups7_256) (B677Finite.allTree_join groups7_512 groups7_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups7_1024 groups7_1280) (B677Finite.allTree_join groups7_1536 groups7_1792)))
def cover7 : ℕ → Bool := B677Finite.coverPointCheck 2000 7 (B677Finite.modValues 64 row7) row7.sorted
theorem cover7_0 : B677Finite.allTree 8 0 cover7 = true := by decide +kernel
theorem cover7_256 : B677Finite.allTree 8 256 cover7 = true := by decide +kernel
theorem cover7_512 : B677Finite.allTree 8 512 cover7 = true := by decide +kernel
theorem cover7_768 : B677Finite.allTree 8 768 cover7 = true := by decide +kernel
theorem cover7_1024 : B677Finite.allTree 8 1024 cover7 = true := by decide +kernel
theorem cover7_1280 : B677Finite.allTree 8 1280 cover7 = true := by decide +kernel
theorem cover7_1536 : B677Finite.allTree 8 1536 cover7 = true := by decide +kernel
theorem cover7_1792 : B677Finite.allTree 8 1792 cover7 = true := by decide +kernel
theorem cover7_checked : B677Finite.allTree 11 0 cover7 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover7_0 cover7_256) (B677Finite.allTree_join cover7_512 cover7_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover7_1024 cover7_1280) (B677Finite.allTree_join cover7_1536 cover7_1792)))
def step7 : ℕ → Bool := B677Finite.nextPointCheck 2000 6 64 18446744073709551557 row6 row7 transition7
theorem step7_0 : B677Finite.allTree 8 0 step7 = true := by decide +kernel
theorem step7_256 : B677Finite.allTree 8 256 step7 = true := by decide +kernel
theorem step7_512 : B677Finite.allTree 8 512 step7 = true := by decide +kernel
theorem step7_768 : B677Finite.allTree 8 768 step7 = true := by decide +kernel
theorem step7_1024 : B677Finite.allTree 8 1024 step7 = true := by decide +kernel
theorem step7_1280 : B677Finite.allTree 8 1280 step7 = true := by decide +kernel
theorem step7_1536 : B677Finite.allTree 8 1536 step7 = true := by decide +kernel
theorem step7_1792 : B677Finite.allTree 8 1792 step7 = true := by decide +kernel
theorem step7_checked : B677Finite.allTree 11 0 step7 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step7_0 step7_256) (B677Finite.allTree_join step7_512 step7_768)) (B677Finite.allTree_join (B677Finite.allTree_join step7_1024 step7_1280) (B677Finite.allTree_join step7_1536 step7_1792)))
theorem sorted_checked7 : B677Finite.sortedFunctionCheck 11 2000 7 (B677Finite.modValues 64 row7) row7.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups7_checked cover7_checked
theorem step_checked7 : B677Finite.witnessedModNextCheck 11 2000 6 64 18446744073709551557 row6 row7 transition7 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step7_checked
end B677FiniteWitnessGenerated
