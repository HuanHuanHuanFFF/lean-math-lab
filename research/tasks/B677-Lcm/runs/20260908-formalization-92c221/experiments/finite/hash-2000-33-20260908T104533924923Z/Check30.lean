import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data30
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data29
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash30 : ℕ → Bool := B677Finite.hashPointCheck 2000 30 64 row30 lookup30
theorem hash30_0 : B677Finite.allTree 8 0 hash30 = true := by decide +kernel
theorem hash30_256 : B677Finite.allTree 8 256 hash30 = true := by decide +kernel
theorem hash30_512 : B677Finite.allTree 8 512 hash30 = true := by decide +kernel
theorem hash30_768 : B677Finite.allTree 8 768 hash30 = true := by decide +kernel
theorem hash30_1024 : B677Finite.allTree 8 1024 hash30 = true := by decide +kernel
theorem hash30_1280 : B677Finite.allTree 8 1280 hash30 = true := by decide +kernel
theorem hash30_1536 : B677Finite.allTree 8 1536 hash30 = true := by decide +kernel
theorem hash30_1792 : B677Finite.allTree 8 1792 hash30 = true := by decide +kernel
theorem hash30_checked : B677Finite.allTree 11 0 hash30 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash30_0 hash30_256) (B677Finite.allTree_join hash30_512 hash30_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash30_1024 hash30_1280) (B677Finite.allTree_join hash30_1536 hash30_1792)))
def step30 : ℕ → Bool := B677Finite.nextPointCheck 2000 29 64 18446744073709551557 row29 row30 transition30
theorem step30_0 : B677Finite.allTree 8 0 step30 = true := by decide +kernel
theorem step30_256 : B677Finite.allTree 8 256 step30 = true := by decide +kernel
theorem step30_512 : B677Finite.allTree 8 512 step30 = true := by decide +kernel
theorem step30_768 : B677Finite.allTree 8 768 step30 = true := by decide +kernel
theorem step30_1024 : B677Finite.allTree 8 1024 step30 = true := by decide +kernel
theorem step30_1280 : B677Finite.allTree 8 1280 step30 = true := by decide +kernel
theorem step30_1536 : B677Finite.allTree 8 1536 step30 = true := by decide +kernel
theorem step30_1792 : B677Finite.allTree 8 1792 step30 = true := by decide +kernel
theorem step30_checked : B677Finite.allTree 11 0 step30 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step30_0 step30_256) (B677Finite.allTree_join step30_512 step30_768)) (B677Finite.allTree_join (B677Finite.allTree_join step30_1024 step30_1280) (B677Finite.allTree_join step30_1536 step30_1792)))
theorem hash_checked30 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 30 64 row30 lookup30) = true := hash30_checked
theorem step_checked30 : B677Finite.witnessedModNextCheck 11 2000 29 64 18446744073709551557 row29 row30 transition30 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step30_checked
end B677FiniteHashGenerated
