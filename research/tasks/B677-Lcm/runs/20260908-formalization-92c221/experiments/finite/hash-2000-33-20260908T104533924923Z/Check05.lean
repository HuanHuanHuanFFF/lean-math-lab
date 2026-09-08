import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data05
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data04
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash5 : ℕ → Bool := B677Finite.hashPointCheck 2000 5 64 row5 lookup5
theorem hash5_0 : B677Finite.allTree 8 0 hash5 = true := by decide +kernel
theorem hash5_256 : B677Finite.allTree 8 256 hash5 = true := by decide +kernel
theorem hash5_512 : B677Finite.allTree 8 512 hash5 = true := by decide +kernel
theorem hash5_768 : B677Finite.allTree 8 768 hash5 = true := by decide +kernel
theorem hash5_1024 : B677Finite.allTree 8 1024 hash5 = true := by decide +kernel
theorem hash5_1280 : B677Finite.allTree 8 1280 hash5 = true := by decide +kernel
theorem hash5_1536 : B677Finite.allTree 8 1536 hash5 = true := by decide +kernel
theorem hash5_1792 : B677Finite.allTree 8 1792 hash5 = true := by decide +kernel
theorem hash5_checked : B677Finite.allTree 11 0 hash5 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash5_0 hash5_256) (B677Finite.allTree_join hash5_512 hash5_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash5_1024 hash5_1280) (B677Finite.allTree_join hash5_1536 hash5_1792)))
def step5 : ℕ → Bool := B677Finite.nextPointCheck 2000 4 64 18446744073709551557 row4 row5 transition5
theorem step5_0 : B677Finite.allTree 8 0 step5 = true := by decide +kernel
theorem step5_256 : B677Finite.allTree 8 256 step5 = true := by decide +kernel
theorem step5_512 : B677Finite.allTree 8 512 step5 = true := by decide +kernel
theorem step5_768 : B677Finite.allTree 8 768 step5 = true := by decide +kernel
theorem step5_1024 : B677Finite.allTree 8 1024 step5 = true := by decide +kernel
theorem step5_1280 : B677Finite.allTree 8 1280 step5 = true := by decide +kernel
theorem step5_1536 : B677Finite.allTree 8 1536 step5 = true := by decide +kernel
theorem step5_1792 : B677Finite.allTree 8 1792 step5 = true := by decide +kernel
theorem step5_checked : B677Finite.allTree 11 0 step5 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step5_0 step5_256) (B677Finite.allTree_join step5_512 step5_768)) (B677Finite.allTree_join (B677Finite.allTree_join step5_1024 step5_1280) (B677Finite.allTree_join step5_1536 step5_1792)))
theorem hash_checked5 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 5 64 row5 lookup5) = true := hash5_checked
theorem step_checked5 : B677Finite.witnessedModNextCheck 11 2000 4 64 18446744073709551557 row4 row5 transition5 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step5_checked
end B677FiniteHashGenerated
