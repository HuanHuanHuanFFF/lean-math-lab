import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data26
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data25
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash26 : ℕ → Bool := B677Finite.hashPointCheck 2000 26 64 row26 lookup26
theorem hash26_0 : B677Finite.allTree 8 0 hash26 = true := by decide +kernel
theorem hash26_256 : B677Finite.allTree 8 256 hash26 = true := by decide +kernel
theorem hash26_512 : B677Finite.allTree 8 512 hash26 = true := by decide +kernel
theorem hash26_768 : B677Finite.allTree 8 768 hash26 = true := by decide +kernel
theorem hash26_1024 : B677Finite.allTree 8 1024 hash26 = true := by decide +kernel
theorem hash26_1280 : B677Finite.allTree 8 1280 hash26 = true := by decide +kernel
theorem hash26_1536 : B677Finite.allTree 8 1536 hash26 = true := by decide +kernel
theorem hash26_1792 : B677Finite.allTree 8 1792 hash26 = true := by decide +kernel
theorem hash26_checked : B677Finite.allTree 11 0 hash26 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash26_0 hash26_256) (B677Finite.allTree_join hash26_512 hash26_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash26_1024 hash26_1280) (B677Finite.allTree_join hash26_1536 hash26_1792)))
def step26 : ℕ → Bool := B677Finite.nextPointCheck 2000 25 64 18446744073709551557 row25 row26 transition26
theorem step26_0 : B677Finite.allTree 8 0 step26 = true := by decide +kernel
theorem step26_256 : B677Finite.allTree 8 256 step26 = true := by decide +kernel
theorem step26_512 : B677Finite.allTree 8 512 step26 = true := by decide +kernel
theorem step26_768 : B677Finite.allTree 8 768 step26 = true := by decide +kernel
theorem step26_1024 : B677Finite.allTree 8 1024 step26 = true := by decide +kernel
theorem step26_1280 : B677Finite.allTree 8 1280 step26 = true := by decide +kernel
theorem step26_1536 : B677Finite.allTree 8 1536 step26 = true := by decide +kernel
theorem step26_1792 : B677Finite.allTree 8 1792 step26 = true := by decide +kernel
theorem step26_checked : B677Finite.allTree 11 0 step26 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step26_0 step26_256) (B677Finite.allTree_join step26_512 step26_768)) (B677Finite.allTree_join (B677Finite.allTree_join step26_1024 step26_1280) (B677Finite.allTree_join step26_1536 step26_1792)))
theorem hash_checked26 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 26 64 row26 lookup26) = true := hash26_checked
theorem step_checked26 : B677Finite.witnessedModNextCheck 11 2000 25 64 18446744073709551557 row25 row26 transition26 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step26_checked
end B677FiniteHashGenerated
