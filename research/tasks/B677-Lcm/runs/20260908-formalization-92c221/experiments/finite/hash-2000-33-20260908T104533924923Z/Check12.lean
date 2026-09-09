import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data12
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data11
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash12 : ℕ → Bool := B677Finite.hashPointCheck 2000 12 64 row12 lookup12
theorem hash12_0 : B677Finite.allTree 8 0 hash12 = true := by decide +kernel
theorem hash12_256 : B677Finite.allTree 8 256 hash12 = true := by decide +kernel
theorem hash12_512 : B677Finite.allTree 8 512 hash12 = true := by decide +kernel
theorem hash12_768 : B677Finite.allTree 8 768 hash12 = true := by decide +kernel
theorem hash12_1024 : B677Finite.allTree 8 1024 hash12 = true := by decide +kernel
theorem hash12_1280 : B677Finite.allTree 8 1280 hash12 = true := by decide +kernel
theorem hash12_1536 : B677Finite.allTree 8 1536 hash12 = true := by decide +kernel
theorem hash12_1792 : B677Finite.allTree 8 1792 hash12 = true := by decide +kernel
theorem hash12_checked : B677Finite.allTree 11 0 hash12 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash12_0 hash12_256) (B677Finite.allTree_join hash12_512 hash12_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash12_1024 hash12_1280) (B677Finite.allTree_join hash12_1536 hash12_1792)))
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
theorem hash_checked12 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 12 64 row12 lookup12) = true := hash12_checked
theorem step_checked12 : B677Finite.witnessedModNextCheck 11 2000 11 64 18446744073709551557 row11 row12 transition12 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step12_checked
end B677FiniteHashGenerated
