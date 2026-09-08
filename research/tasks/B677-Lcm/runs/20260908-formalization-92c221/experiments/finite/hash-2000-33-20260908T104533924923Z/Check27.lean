import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data27
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data26
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash27 : ℕ → Bool := B677Finite.hashPointCheck 2000 27 64 row27 lookup27
theorem hash27_0 : B677Finite.allTree 8 0 hash27 = true := by decide +kernel
theorem hash27_256 : B677Finite.allTree 8 256 hash27 = true := by decide +kernel
theorem hash27_512 : B677Finite.allTree 8 512 hash27 = true := by decide +kernel
theorem hash27_768 : B677Finite.allTree 8 768 hash27 = true := by decide +kernel
theorem hash27_1024 : B677Finite.allTree 8 1024 hash27 = true := by decide +kernel
theorem hash27_1280 : B677Finite.allTree 8 1280 hash27 = true := by decide +kernel
theorem hash27_1536 : B677Finite.allTree 8 1536 hash27 = true := by decide +kernel
theorem hash27_1792 : B677Finite.allTree 8 1792 hash27 = true := by decide +kernel
theorem hash27_checked : B677Finite.allTree 11 0 hash27 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash27_0 hash27_256) (B677Finite.allTree_join hash27_512 hash27_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash27_1024 hash27_1280) (B677Finite.allTree_join hash27_1536 hash27_1792)))
def step27 : ℕ → Bool := B677Finite.nextPointCheck 2000 26 64 18446744073709551557 row26 row27 transition27
theorem step27_0 : B677Finite.allTree 8 0 step27 = true := by decide +kernel
theorem step27_256 : B677Finite.allTree 8 256 step27 = true := by decide +kernel
theorem step27_512 : B677Finite.allTree 8 512 step27 = true := by decide +kernel
theorem step27_768 : B677Finite.allTree 8 768 step27 = true := by decide +kernel
theorem step27_1024 : B677Finite.allTree 8 1024 step27 = true := by decide +kernel
theorem step27_1280 : B677Finite.allTree 8 1280 step27 = true := by decide +kernel
theorem step27_1536 : B677Finite.allTree 8 1536 step27 = true := by decide +kernel
theorem step27_1792 : B677Finite.allTree 8 1792 step27 = true := by decide +kernel
theorem step27_checked : B677Finite.allTree 11 0 step27 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step27_0 step27_256) (B677Finite.allTree_join step27_512 step27_768)) (B677Finite.allTree_join (B677Finite.allTree_join step27_1024 step27_1280) (B677Finite.allTree_join step27_1536 step27_1792)))
theorem hash_checked27 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 27 64 row27 lookup27) = true := hash27_checked
theorem step_checked27 : B677Finite.witnessedModNextCheck 11 2000 26 64 18446744073709551557 row26 row27 transition27 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step27_checked
end B677FiniteHashGenerated
