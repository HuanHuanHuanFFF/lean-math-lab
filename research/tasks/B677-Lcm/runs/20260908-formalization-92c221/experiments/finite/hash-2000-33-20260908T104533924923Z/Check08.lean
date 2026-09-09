import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data08
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data07
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash8 : ℕ → Bool := B677Finite.hashPointCheck 2000 8 64 row8 lookup8
theorem hash8_0 : B677Finite.allTree 8 0 hash8 = true := by decide +kernel
theorem hash8_256 : B677Finite.allTree 8 256 hash8 = true := by decide +kernel
theorem hash8_512 : B677Finite.allTree 8 512 hash8 = true := by decide +kernel
theorem hash8_768 : B677Finite.allTree 8 768 hash8 = true := by decide +kernel
theorem hash8_1024 : B677Finite.allTree 8 1024 hash8 = true := by decide +kernel
theorem hash8_1280 : B677Finite.allTree 8 1280 hash8 = true := by decide +kernel
theorem hash8_1536 : B677Finite.allTree 8 1536 hash8 = true := by decide +kernel
theorem hash8_1792 : B677Finite.allTree 8 1792 hash8 = true := by decide +kernel
theorem hash8_checked : B677Finite.allTree 11 0 hash8 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash8_0 hash8_256) (B677Finite.allTree_join hash8_512 hash8_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash8_1024 hash8_1280) (B677Finite.allTree_join hash8_1536 hash8_1792)))
def step8 : ℕ → Bool := B677Finite.nextPointCheck 2000 7 64 18446744073709551557 row7 row8 transition8
theorem step8_0 : B677Finite.allTree 8 0 step8 = true := by decide +kernel
theorem step8_256 : B677Finite.allTree 8 256 step8 = true := by decide +kernel
theorem step8_512 : B677Finite.allTree 8 512 step8 = true := by decide +kernel
theorem step8_768 : B677Finite.allTree 8 768 step8 = true := by decide +kernel
theorem step8_1024 : B677Finite.allTree 8 1024 step8 = true := by decide +kernel
theorem step8_1280 : B677Finite.allTree 8 1280 step8 = true := by decide +kernel
theorem step8_1536 : B677Finite.allTree 8 1536 step8 = true := by decide +kernel
theorem step8_1792 : B677Finite.allTree 8 1792 step8 = true := by decide +kernel
theorem step8_checked : B677Finite.allTree 11 0 step8 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step8_0 step8_256) (B677Finite.allTree_join step8_512 step8_768)) (B677Finite.allTree_join (B677Finite.allTree_join step8_1024 step8_1280) (B677Finite.allTree_join step8_1536 step8_1792)))
theorem hash_checked8 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 8 64 row8 lookup8) = true := hash8_checked
theorem step_checked8 : B677Finite.witnessedModNextCheck 11 2000 7 64 18446744073709551557 row7 row8 transition8 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step8_checked
end B677FiniteHashGenerated
