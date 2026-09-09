import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data25
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data24
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash25 : ℕ → Bool := B677Finite.hashPointCheck 2000 25 64 row25 lookup25
theorem hash25_0 : B677Finite.allTree 8 0 hash25 = true := by decide +kernel
theorem hash25_256 : B677Finite.allTree 8 256 hash25 = true := by decide +kernel
theorem hash25_512 : B677Finite.allTree 8 512 hash25 = true := by decide +kernel
theorem hash25_768 : B677Finite.allTree 8 768 hash25 = true := by decide +kernel
theorem hash25_1024 : B677Finite.allTree 8 1024 hash25 = true := by decide +kernel
theorem hash25_1280 : B677Finite.allTree 8 1280 hash25 = true := by decide +kernel
theorem hash25_1536 : B677Finite.allTree 8 1536 hash25 = true := by decide +kernel
theorem hash25_1792 : B677Finite.allTree 8 1792 hash25 = true := by decide +kernel
theorem hash25_checked : B677Finite.allTree 11 0 hash25 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash25_0 hash25_256) (B677Finite.allTree_join hash25_512 hash25_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash25_1024 hash25_1280) (B677Finite.allTree_join hash25_1536 hash25_1792)))
def step25 : ℕ → Bool := B677Finite.nextPointCheck 2000 24 64 18446744073709551557 row24 row25 transition25
theorem step25_0 : B677Finite.allTree 8 0 step25 = true := by decide +kernel
theorem step25_256 : B677Finite.allTree 8 256 step25 = true := by decide +kernel
theorem step25_512 : B677Finite.allTree 8 512 step25 = true := by decide +kernel
theorem step25_768 : B677Finite.allTree 8 768 step25 = true := by decide +kernel
theorem step25_1024 : B677Finite.allTree 8 1024 step25 = true := by decide +kernel
theorem step25_1280 : B677Finite.allTree 8 1280 step25 = true := by decide +kernel
theorem step25_1536 : B677Finite.allTree 8 1536 step25 = true := by decide +kernel
theorem step25_1792 : B677Finite.allTree 8 1792 step25 = true := by decide +kernel
theorem step25_checked : B677Finite.allTree 11 0 step25 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step25_0 step25_256) (B677Finite.allTree_join step25_512 step25_768)) (B677Finite.allTree_join (B677Finite.allTree_join step25_1024 step25_1280) (B677Finite.allTree_join step25_1536 step25_1792)))
theorem hash_checked25 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 25 64 row25 lookup25) = true := hash25_checked
theorem step_checked25 : B677Finite.witnessedModNextCheck 11 2000 24 64 18446744073709551557 row24 row25 transition25 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step25_checked
end B677FiniteHashGenerated
