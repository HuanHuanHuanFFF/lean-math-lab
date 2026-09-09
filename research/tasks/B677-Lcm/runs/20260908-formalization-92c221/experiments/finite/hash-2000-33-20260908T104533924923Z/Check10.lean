import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data10
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data09
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash10 : ℕ → Bool := B677Finite.hashPointCheck 2000 10 64 row10 lookup10
theorem hash10_0 : B677Finite.allTree 8 0 hash10 = true := by decide +kernel
theorem hash10_256 : B677Finite.allTree 8 256 hash10 = true := by decide +kernel
theorem hash10_512 : B677Finite.allTree 8 512 hash10 = true := by decide +kernel
theorem hash10_768 : B677Finite.allTree 8 768 hash10 = true := by decide +kernel
theorem hash10_1024 : B677Finite.allTree 8 1024 hash10 = true := by decide +kernel
theorem hash10_1280 : B677Finite.allTree 8 1280 hash10 = true := by decide +kernel
theorem hash10_1536 : B677Finite.allTree 8 1536 hash10 = true := by decide +kernel
theorem hash10_1792 : B677Finite.allTree 8 1792 hash10 = true := by decide +kernel
theorem hash10_checked : B677Finite.allTree 11 0 hash10 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash10_0 hash10_256) (B677Finite.allTree_join hash10_512 hash10_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash10_1024 hash10_1280) (B677Finite.allTree_join hash10_1536 hash10_1792)))
def step10 : ℕ → Bool := B677Finite.nextPointCheck 2000 9 64 18446744073709551557 row9 row10 transition10
theorem step10_0 : B677Finite.allTree 8 0 step10 = true := by decide +kernel
theorem step10_256 : B677Finite.allTree 8 256 step10 = true := by decide +kernel
theorem step10_512 : B677Finite.allTree 8 512 step10 = true := by decide +kernel
theorem step10_768 : B677Finite.allTree 8 768 step10 = true := by decide +kernel
theorem step10_1024 : B677Finite.allTree 8 1024 step10 = true := by decide +kernel
theorem step10_1280 : B677Finite.allTree 8 1280 step10 = true := by decide +kernel
theorem step10_1536 : B677Finite.allTree 8 1536 step10 = true := by decide +kernel
theorem step10_1792 : B677Finite.allTree 8 1792 step10 = true := by decide +kernel
theorem step10_checked : B677Finite.allTree 11 0 step10 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step10_0 step10_256) (B677Finite.allTree_join step10_512 step10_768)) (B677Finite.allTree_join (B677Finite.allTree_join step10_1024 step10_1280) (B677Finite.allTree_join step10_1536 step10_1792)))
theorem hash_checked10 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 10 64 row10 lookup10) = true := hash10_checked
theorem step_checked10 : B677Finite.witnessedModNextCheck 11 2000 9 64 18446744073709551557 row9 row10 transition10 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step10_checked
end B677FiniteHashGenerated
