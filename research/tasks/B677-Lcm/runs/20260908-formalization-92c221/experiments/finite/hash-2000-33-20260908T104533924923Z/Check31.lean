import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data31
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data30
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash31 : ℕ → Bool := B677Finite.hashPointCheck 2000 31 64 row31 lookup31
theorem hash31_0 : B677Finite.allTree 8 0 hash31 = true := by decide +kernel
theorem hash31_256 : B677Finite.allTree 8 256 hash31 = true := by decide +kernel
theorem hash31_512 : B677Finite.allTree 8 512 hash31 = true := by decide +kernel
theorem hash31_768 : B677Finite.allTree 8 768 hash31 = true := by decide +kernel
theorem hash31_1024 : B677Finite.allTree 8 1024 hash31 = true := by decide +kernel
theorem hash31_1280 : B677Finite.allTree 8 1280 hash31 = true := by decide +kernel
theorem hash31_1536 : B677Finite.allTree 8 1536 hash31 = true := by decide +kernel
theorem hash31_1792 : B677Finite.allTree 8 1792 hash31 = true := by decide +kernel
theorem hash31_checked : B677Finite.allTree 11 0 hash31 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash31_0 hash31_256) (B677Finite.allTree_join hash31_512 hash31_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash31_1024 hash31_1280) (B677Finite.allTree_join hash31_1536 hash31_1792)))
def step31 : ℕ → Bool := B677Finite.nextPointCheck 2000 30 64 18446744073709551557 row30 row31 transition31
theorem step31_0 : B677Finite.allTree 8 0 step31 = true := by decide +kernel
theorem step31_256 : B677Finite.allTree 8 256 step31 = true := by decide +kernel
theorem step31_512 : B677Finite.allTree 8 512 step31 = true := by decide +kernel
theorem step31_768 : B677Finite.allTree 8 768 step31 = true := by decide +kernel
theorem step31_1024 : B677Finite.allTree 8 1024 step31 = true := by decide +kernel
theorem step31_1280 : B677Finite.allTree 8 1280 step31 = true := by decide +kernel
theorem step31_1536 : B677Finite.allTree 8 1536 step31 = true := by decide +kernel
theorem step31_1792 : B677Finite.allTree 8 1792 step31 = true := by decide +kernel
theorem step31_checked : B677Finite.allTree 11 0 step31 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step31_0 step31_256) (B677Finite.allTree_join step31_512 step31_768)) (B677Finite.allTree_join (B677Finite.allTree_join step31_1024 step31_1280) (B677Finite.allTree_join step31_1536 step31_1792)))
theorem hash_checked31 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 31 64 row31 lookup31) = true := hash31_checked
theorem step_checked31 : B677Finite.witnessedModNextCheck 11 2000 30 64 18446744073709551557 row30 row31 transition31 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step31_checked
end B677FiniteHashGenerated
