import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data16
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data15
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash16 : ℕ → Bool := B677Finite.hashPointCheck 2000 16 64 row16 lookup16
theorem hash16_0 : B677Finite.allTree 8 0 hash16 = true := by decide +kernel
theorem hash16_256 : B677Finite.allTree 8 256 hash16 = true := by decide +kernel
theorem hash16_512 : B677Finite.allTree 8 512 hash16 = true := by decide +kernel
theorem hash16_768 : B677Finite.allTree 8 768 hash16 = true := by decide +kernel
theorem hash16_1024 : B677Finite.allTree 8 1024 hash16 = true := by decide +kernel
theorem hash16_1280 : B677Finite.allTree 8 1280 hash16 = true := by decide +kernel
theorem hash16_1536 : B677Finite.allTree 8 1536 hash16 = true := by decide +kernel
theorem hash16_1792 : B677Finite.allTree 8 1792 hash16 = true := by decide +kernel
theorem hash16_checked : B677Finite.allTree 11 0 hash16 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash16_0 hash16_256) (B677Finite.allTree_join hash16_512 hash16_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash16_1024 hash16_1280) (B677Finite.allTree_join hash16_1536 hash16_1792)))
def step16 : ℕ → Bool := B677Finite.nextPointCheck 2000 15 64 18446744073709551557 row15 row16 transition16
theorem step16_0 : B677Finite.allTree 8 0 step16 = true := by decide +kernel
theorem step16_256 : B677Finite.allTree 8 256 step16 = true := by decide +kernel
theorem step16_512 : B677Finite.allTree 8 512 step16 = true := by decide +kernel
theorem step16_768 : B677Finite.allTree 8 768 step16 = true := by decide +kernel
theorem step16_1024 : B677Finite.allTree 8 1024 step16 = true := by decide +kernel
theorem step16_1280 : B677Finite.allTree 8 1280 step16 = true := by decide +kernel
theorem step16_1536 : B677Finite.allTree 8 1536 step16 = true := by decide +kernel
theorem step16_1792 : B677Finite.allTree 8 1792 step16 = true := by decide +kernel
theorem step16_checked : B677Finite.allTree 11 0 step16 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step16_0 step16_256) (B677Finite.allTree_join step16_512 step16_768)) (B677Finite.allTree_join (B677Finite.allTree_join step16_1024 step16_1280) (B677Finite.allTree_join step16_1536 step16_1792)))
theorem hash_checked16 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 16 64 row16 lookup16) = true := hash16_checked
theorem step_checked16 : B677Finite.witnessedModNextCheck 11 2000 15 64 18446744073709551557 row15 row16 transition16 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step16_checked
end B677FiniteHashGenerated
