import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data09
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103845082422Z».Data08
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
def groups9 : ℕ → Bool := B677Finite.groupPointCheck 2000 (B677Finite.modValues 64 row9) row9.sorted
theorem groups9_0 : B677Finite.allTree 8 0 groups9 = true := by decide +kernel
theorem groups9_256 : B677Finite.allTree 8 256 groups9 = true := by decide +kernel
theorem groups9_512 : B677Finite.allTree 8 512 groups9 = true := by decide +kernel
theorem groups9_768 : B677Finite.allTree 8 768 groups9 = true := by decide +kernel
theorem groups9_1024 : B677Finite.allTree 8 1024 groups9 = true := by decide +kernel
theorem groups9_1280 : B677Finite.allTree 8 1280 groups9 = true := by decide +kernel
theorem groups9_1536 : B677Finite.allTree 8 1536 groups9 = true := by decide +kernel
theorem groups9_1792 : B677Finite.allTree 8 1792 groups9 = true := by decide +kernel
theorem groups9_checked : B677Finite.allTree 11 0 groups9 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join groups9_0 groups9_256) (B677Finite.allTree_join groups9_512 groups9_768)) (B677Finite.allTree_join (B677Finite.allTree_join groups9_1024 groups9_1280) (B677Finite.allTree_join groups9_1536 groups9_1792)))
def cover9 : ℕ → Bool := B677Finite.coverPointCheck 2000 9 (B677Finite.modValues 64 row9) row9.sorted
theorem cover9_0 : B677Finite.allTree 8 0 cover9 = true := by decide +kernel
theorem cover9_256 : B677Finite.allTree 8 256 cover9 = true := by decide +kernel
theorem cover9_512 : B677Finite.allTree 8 512 cover9 = true := by decide +kernel
theorem cover9_768 : B677Finite.allTree 8 768 cover9 = true := by decide +kernel
theorem cover9_1024 : B677Finite.allTree 8 1024 cover9 = true := by decide +kernel
theorem cover9_1280 : B677Finite.allTree 8 1280 cover9 = true := by decide +kernel
theorem cover9_1536 : B677Finite.allTree 8 1536 cover9 = true := by decide +kernel
theorem cover9_1792 : B677Finite.allTree 8 1792 cover9 = true := by decide +kernel
theorem cover9_checked : B677Finite.allTree 11 0 cover9 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join cover9_0 cover9_256) (B677Finite.allTree_join cover9_512 cover9_768)) (B677Finite.allTree_join (B677Finite.allTree_join cover9_1024 cover9_1280) (B677Finite.allTree_join cover9_1536 cover9_1792)))
def step9 : ℕ → Bool := B677Finite.nextPointCheck 2000 8 64 18446744073709551557 row8 row9 transition9
theorem step9_0 : B677Finite.allTree 8 0 step9 = true := by decide +kernel
theorem step9_256 : B677Finite.allTree 8 256 step9 = true := by decide +kernel
theorem step9_512 : B677Finite.allTree 8 512 step9 = true := by decide +kernel
theorem step9_768 : B677Finite.allTree 8 768 step9 = true := by decide +kernel
theorem step9_1024 : B677Finite.allTree 8 1024 step9 = true := by decide +kernel
theorem step9_1280 : B677Finite.allTree 8 1280 step9 = true := by decide +kernel
theorem step9_1536 : B677Finite.allTree 8 1536 step9 = true := by decide +kernel
theorem step9_1792 : B677Finite.allTree 8 1792 step9 = true := by decide +kernel
theorem step9_checked : B677Finite.allTree 11 0 step9 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step9_0 step9_256) (B677Finite.allTree_join step9_512 step9_768)) (B677Finite.allTree_join (B677Finite.allTree_join step9_1024 step9_1280) (B677Finite.allTree_join step9_1536 step9_1792)))
theorem sorted_checked9 : B677Finite.sortedFunctionCheck 11 2000 9 (B677Finite.modValues 64 row9) row9.sorted = true :=
  B677Finite.sortedFunctionCheck_of_parts (by decide +kernel) groups9_checked cover9_checked
theorem step_checked9 : B677Finite.witnessedModNextCheck 11 2000 8 64 18446744073709551557 row8 row9 transition9 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step9_checked
end B677FiniteWitnessGenerated
