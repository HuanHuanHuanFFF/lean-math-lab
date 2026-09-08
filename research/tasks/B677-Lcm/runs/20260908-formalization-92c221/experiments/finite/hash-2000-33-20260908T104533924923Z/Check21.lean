import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data21
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data20
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash21 : ℕ → Bool := B677Finite.hashPointCheck 2000 21 64 row21 lookup21
theorem hash21_0 : B677Finite.allTree 8 0 hash21 = true := by decide +kernel
theorem hash21_256 : B677Finite.allTree 8 256 hash21 = true := by decide +kernel
theorem hash21_512 : B677Finite.allTree 8 512 hash21 = true := by decide +kernel
theorem hash21_768 : B677Finite.allTree 8 768 hash21 = true := by decide +kernel
theorem hash21_1024 : B677Finite.allTree 8 1024 hash21 = true := by decide +kernel
theorem hash21_1280 : B677Finite.allTree 8 1280 hash21 = true := by decide +kernel
theorem hash21_1536 : B677Finite.allTree 8 1536 hash21 = true := by decide +kernel
theorem hash21_1792 : B677Finite.allTree 8 1792 hash21 = true := by decide +kernel
theorem hash21_checked : B677Finite.allTree 11 0 hash21 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash21_0 hash21_256) (B677Finite.allTree_join hash21_512 hash21_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash21_1024 hash21_1280) (B677Finite.allTree_join hash21_1536 hash21_1792)))
def step21 : ℕ → Bool := B677Finite.nextPointCheck 2000 20 64 18446744073709551557 row20 row21 transition21
theorem step21_0 : B677Finite.allTree 8 0 step21 = true := by decide +kernel
theorem step21_256 : B677Finite.allTree 8 256 step21 = true := by decide +kernel
theorem step21_512 : B677Finite.allTree 8 512 step21 = true := by decide +kernel
theorem step21_768 : B677Finite.allTree 8 768 step21 = true := by decide +kernel
theorem step21_1024 : B677Finite.allTree 8 1024 step21 = true := by decide +kernel
theorem step21_1280 : B677Finite.allTree 8 1280 step21 = true := by decide +kernel
theorem step21_1536 : B677Finite.allTree 8 1536 step21 = true := by decide +kernel
theorem step21_1792 : B677Finite.allTree 8 1792 step21 = true := by decide +kernel
theorem step21_checked : B677Finite.allTree 11 0 step21 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step21_0 step21_256) (B677Finite.allTree_join step21_512 step21_768)) (B677Finite.allTree_join (B677Finite.allTree_join step21_1024 step21_1280) (B677Finite.allTree_join step21_1536 step21_1792)))
theorem hash_checked21 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 21 64 row21 lookup21) = true := hash21_checked
theorem step_checked21 : B677Finite.witnessedModNextCheck 11 2000 20 64 18446744073709551557 row20 row21 transition21 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step21_checked
end B677FiniteHashGenerated
