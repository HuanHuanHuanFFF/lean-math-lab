import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data20
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data19
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash20 : ℕ → Bool := B677Finite.hashPointCheck 2000 20 64 row20 lookup20
theorem hash20_0 : B677Finite.allTree 8 0 hash20 = true := by decide +kernel
theorem hash20_256 : B677Finite.allTree 8 256 hash20 = true := by decide +kernel
theorem hash20_512 : B677Finite.allTree 8 512 hash20 = true := by decide +kernel
theorem hash20_768 : B677Finite.allTree 8 768 hash20 = true := by decide +kernel
theorem hash20_1024 : B677Finite.allTree 8 1024 hash20 = true := by decide +kernel
theorem hash20_1280 : B677Finite.allTree 8 1280 hash20 = true := by decide +kernel
theorem hash20_1536 : B677Finite.allTree 8 1536 hash20 = true := by decide +kernel
theorem hash20_1792 : B677Finite.allTree 8 1792 hash20 = true := by decide +kernel
theorem hash20_checked : B677Finite.allTree 11 0 hash20 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash20_0 hash20_256) (B677Finite.allTree_join hash20_512 hash20_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash20_1024 hash20_1280) (B677Finite.allTree_join hash20_1536 hash20_1792)))
def step20 : ℕ → Bool := B677Finite.nextPointCheck 2000 19 64 18446744073709551557 row19 row20 transition20
theorem step20_0 : B677Finite.allTree 8 0 step20 = true := by decide +kernel
theorem step20_256 : B677Finite.allTree 8 256 step20 = true := by decide +kernel
theorem step20_512 : B677Finite.allTree 8 512 step20 = true := by decide +kernel
theorem step20_768 : B677Finite.allTree 8 768 step20 = true := by decide +kernel
theorem step20_1024 : B677Finite.allTree 8 1024 step20 = true := by decide +kernel
theorem step20_1280 : B677Finite.allTree 8 1280 step20 = true := by decide +kernel
theorem step20_1536 : B677Finite.allTree 8 1536 step20 = true := by decide +kernel
theorem step20_1792 : B677Finite.allTree 8 1792 step20 = true := by decide +kernel
theorem step20_checked : B677Finite.allTree 11 0 step20 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step20_0 step20_256) (B677Finite.allTree_join step20_512 step20_768)) (B677Finite.allTree_join (B677Finite.allTree_join step20_1024 step20_1280) (B677Finite.allTree_join step20_1536 step20_1792)))
theorem hash_checked20 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 20 64 row20 lookup20) = true := hash20_checked
theorem step_checked20 : B677Finite.witnessedModNextCheck 11 2000 19 64 18446744073709551557 row19 row20 transition20 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step20_checked
end B677FiniteHashGenerated
