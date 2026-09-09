import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104617036909Z».Data02
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104617036909Z».Data01
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash2 : ℕ → Bool := B677Finite.hashPointCheck 1500 2 64 row2 lookup2
theorem hash2_0 : B677Finite.allTree 8 0 hash2 = true := by decide +kernel
theorem hash2_256 : B677Finite.allTree 8 256 hash2 = true := by decide +kernel
theorem hash2_512 : B677Finite.allTree 8 512 hash2 = true := by decide +kernel
theorem hash2_768 : B677Finite.allTree 8 768 hash2 = true := by decide +kernel
theorem hash2_1024 : B677Finite.allTree 8 1024 hash2 = true := by decide +kernel
theorem hash2_1280 : B677Finite.allTree 8 1280 hash2 = true := by decide +kernel
theorem hash2_1536 : B677Finite.allTree 8 1536 hash2 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem hash2_1792 : B677Finite.allTree 8 1792 hash2 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem hash2_checked : B677Finite.allTree 11 0 hash2 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash2_0 hash2_256) (B677Finite.allTree_join hash2_512 hash2_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash2_1024 hash2_1280) (B677Finite.allTree_join hash2_1536 hash2_1792)))
def step2 : ℕ → Bool := B677Finite.nextPointCheck 1500 1 64 18446744073709551557 row1 row2 transition2
theorem step2_0 : B677Finite.allTree 8 0 step2 = true := by decide +kernel
theorem step2_256 : B677Finite.allTree 8 256 step2 = true := by decide +kernel
theorem step2_512 : B677Finite.allTree 8 512 step2 = true := by decide +kernel
theorem step2_768 : B677Finite.allTree 8 768 step2 = true := by decide +kernel
theorem step2_1024 : B677Finite.allTree 8 1024 step2 = true := by decide +kernel
theorem step2_1280 : B677Finite.allTree 8 1280 step2 = true := by decide +kernel
theorem step2_1536 : B677Finite.allTree 8 1536 step2 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem step2_1792 : B677Finite.allTree 8 1792 step2 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem step2_checked : B677Finite.allTree 11 0 step2 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step2_0 step2_256) (B677Finite.allTree_join step2_512 step2_768)) (B677Finite.allTree_join (B677Finite.allTree_join step2_1024 step2_1280) (B677Finite.allTree_join step2_1536 step2_1792)))
theorem hash_checked2 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 1500 2 64 row2 lookup2) = true := hash2_checked
theorem step_checked2 : B677Finite.witnessedModNextCheck 11 1500 1 64 18446744073709551557 row1 row2 transition2 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step2_checked
end B677FiniteHashGenerated
