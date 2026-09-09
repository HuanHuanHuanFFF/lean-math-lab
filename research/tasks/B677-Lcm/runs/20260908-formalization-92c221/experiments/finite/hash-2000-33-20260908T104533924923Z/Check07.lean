import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data07
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data06
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash7 : ℕ → Bool := B677Finite.hashPointCheck 2000 7 64 row7 lookup7
theorem hash7_0 : B677Finite.allTree 8 0 hash7 = true := by decide +kernel
theorem hash7_256 : B677Finite.allTree 8 256 hash7 = true := by decide +kernel
theorem hash7_512 : B677Finite.allTree 8 512 hash7 = true := by decide +kernel
theorem hash7_768 : B677Finite.allTree 8 768 hash7 = true := by decide +kernel
theorem hash7_1024 : B677Finite.allTree 8 1024 hash7 = true := by decide +kernel
theorem hash7_1280 : B677Finite.allTree 8 1280 hash7 = true := by decide +kernel
theorem hash7_1536 : B677Finite.allTree 8 1536 hash7 = true := by decide +kernel
theorem hash7_1792 : B677Finite.allTree 8 1792 hash7 = true := by decide +kernel
theorem hash7_checked : B677Finite.allTree 11 0 hash7 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash7_0 hash7_256) (B677Finite.allTree_join hash7_512 hash7_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash7_1024 hash7_1280) (B677Finite.allTree_join hash7_1536 hash7_1792)))
def step7 : ℕ → Bool := B677Finite.nextPointCheck 2000 6 64 18446744073709551557 row6 row7 transition7
theorem step7_0 : B677Finite.allTree 8 0 step7 = true := by decide +kernel
theorem step7_256 : B677Finite.allTree 8 256 step7 = true := by decide +kernel
theorem step7_512 : B677Finite.allTree 8 512 step7 = true := by decide +kernel
theorem step7_768 : B677Finite.allTree 8 768 step7 = true := by decide +kernel
theorem step7_1024 : B677Finite.allTree 8 1024 step7 = true := by decide +kernel
theorem step7_1280 : B677Finite.allTree 8 1280 step7 = true := by decide +kernel
theorem step7_1536 : B677Finite.allTree 8 1536 step7 = true := by decide +kernel
theorem step7_1792 : B677Finite.allTree 8 1792 step7 = true := by decide +kernel
theorem step7_checked : B677Finite.allTree 11 0 step7 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step7_0 step7_256) (B677Finite.allTree_join step7_512 step7_768)) (B677Finite.allTree_join (B677Finite.allTree_join step7_1024 step7_1280) (B677Finite.allTree_join step7_1536 step7_1792)))
theorem hash_checked7 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 7 64 row7 lookup7) = true := hash7_checked
theorem step_checked7 : B677Finite.witnessedModNextCheck 11 2000 6 64 18446744073709551557 row6 row7 transition7 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step7_checked
end B677FiniteHashGenerated
