import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data13
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data12
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash13 : ℕ → Bool := B677Finite.hashPointCheck 2000 13 64 row13 lookup13
theorem hash13_0 : B677Finite.allTree 8 0 hash13 = true := by decide +kernel
theorem hash13_256 : B677Finite.allTree 8 256 hash13 = true := by decide +kernel
theorem hash13_512 : B677Finite.allTree 8 512 hash13 = true := by decide +kernel
theorem hash13_768 : B677Finite.allTree 8 768 hash13 = true := by decide +kernel
theorem hash13_1024 : B677Finite.allTree 8 1024 hash13 = true := by decide +kernel
theorem hash13_1280 : B677Finite.allTree 8 1280 hash13 = true := by decide +kernel
theorem hash13_1536 : B677Finite.allTree 8 1536 hash13 = true := by decide +kernel
theorem hash13_1792 : B677Finite.allTree 8 1792 hash13 = true := by decide +kernel
theorem hash13_checked : B677Finite.allTree 11 0 hash13 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash13_0 hash13_256) (B677Finite.allTree_join hash13_512 hash13_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash13_1024 hash13_1280) (B677Finite.allTree_join hash13_1536 hash13_1792)))
def step13 : ℕ → Bool := B677Finite.nextPointCheck 2000 12 64 18446744073709551557 row12 row13 transition13
theorem step13_0 : B677Finite.allTree 8 0 step13 = true := by decide +kernel
theorem step13_256 : B677Finite.allTree 8 256 step13 = true := by decide +kernel
theorem step13_512 : B677Finite.allTree 8 512 step13 = true := by decide +kernel
theorem step13_768 : B677Finite.allTree 8 768 step13 = true := by decide +kernel
theorem step13_1024 : B677Finite.allTree 8 1024 step13 = true := by decide +kernel
theorem step13_1280 : B677Finite.allTree 8 1280 step13 = true := by decide +kernel
theorem step13_1536 : B677Finite.allTree 8 1536 step13 = true := by decide +kernel
theorem step13_1792 : B677Finite.allTree 8 1792 step13 = true := by decide +kernel
theorem step13_checked : B677Finite.allTree 11 0 step13 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step13_0 step13_256) (B677Finite.allTree_join step13_512 step13_768)) (B677Finite.allTree_join (B677Finite.allTree_join step13_1024 step13_1280) (B677Finite.allTree_join step13_1536 step13_1792)))
theorem hash_checked13 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 13 64 row13 lookup13) = true := hash13_checked
theorem step_checked13 : B677Finite.witnessedModNextCheck 11 2000 12 64 18446744073709551557 row12 row13 transition13 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step13_checked
end B677FiniteHashGenerated
