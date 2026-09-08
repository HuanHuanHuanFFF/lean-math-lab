import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data06
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data05
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash6 : ℕ → Bool := B677Finite.hashPointCheck 2000 6 64 row6 lookup6
theorem hash6_0 : B677Finite.allTree 8 0 hash6 = true := by decide +kernel
theorem hash6_256 : B677Finite.allTree 8 256 hash6 = true := by decide +kernel
theorem hash6_512 : B677Finite.allTree 8 512 hash6 = true := by decide +kernel
theorem hash6_768 : B677Finite.allTree 8 768 hash6 = true := by decide +kernel
theorem hash6_1024 : B677Finite.allTree 8 1024 hash6 = true := by decide +kernel
theorem hash6_1280 : B677Finite.allTree 8 1280 hash6 = true := by decide +kernel
theorem hash6_1536 : B677Finite.allTree 8 1536 hash6 = true := by decide +kernel
theorem hash6_1792 : B677Finite.allTree 8 1792 hash6 = true := by decide +kernel
theorem hash6_checked : B677Finite.allTree 11 0 hash6 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash6_0 hash6_256) (B677Finite.allTree_join hash6_512 hash6_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash6_1024 hash6_1280) (B677Finite.allTree_join hash6_1536 hash6_1792)))
def step6 : ℕ → Bool := B677Finite.nextPointCheck 2000 5 64 18446744073709551557 row5 row6 transition6
theorem step6_0 : B677Finite.allTree 8 0 step6 = true := by decide +kernel
theorem step6_256 : B677Finite.allTree 8 256 step6 = true := by decide +kernel
theorem step6_512 : B677Finite.allTree 8 512 step6 = true := by decide +kernel
theorem step6_768 : B677Finite.allTree 8 768 step6 = true := by decide +kernel
theorem step6_1024 : B677Finite.allTree 8 1024 step6 = true := by decide +kernel
theorem step6_1280 : B677Finite.allTree 8 1280 step6 = true := by decide +kernel
theorem step6_1536 : B677Finite.allTree 8 1536 step6 = true := by decide +kernel
theorem step6_1792 : B677Finite.allTree 8 1792 step6 = true := by decide +kernel
theorem step6_checked : B677Finite.allTree 11 0 step6 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step6_0 step6_256) (B677Finite.allTree_join step6_512 step6_768)) (B677Finite.allTree_join (B677Finite.allTree_join step6_1024 step6_1280) (B677Finite.allTree_join step6_1536 step6_1792)))
theorem hash_checked6 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 6 64 row6 lookup6) = true := hash6_checked
theorem step_checked6 : B677Finite.witnessedModNextCheck 11 2000 5 64 18446744073709551557 row5 row6 transition6 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step6_checked
end B677FiniteHashGenerated
