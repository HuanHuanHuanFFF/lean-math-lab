import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104617036909Z».Data03
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104617036909Z».Data02
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash3 : ℕ → Bool := B677Finite.hashPointCheck 1500 3 64 row3 lookup3
theorem hash3_0 : B677Finite.allTree 8 0 hash3 = true := by decide +kernel
theorem hash3_256 : B677Finite.allTree 8 256 hash3 = true := by decide +kernel
theorem hash3_512 : B677Finite.allTree 8 512 hash3 = true := by decide +kernel
theorem hash3_768 : B677Finite.allTree 8 768 hash3 = true := by decide +kernel
theorem hash3_1024 : B677Finite.allTree 8 1024 hash3 = true := by decide +kernel
theorem hash3_1280 : B677Finite.allTree 8 1280 hash3 = true := by decide +kernel
theorem hash3_1536 : B677Finite.allTree 8 1536 hash3 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem hash3_1792 : B677Finite.allTree 8 1792 hash3 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem hash3_checked : B677Finite.allTree 11 0 hash3 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash3_0 hash3_256) (B677Finite.allTree_join hash3_512 hash3_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash3_1024 hash3_1280) (B677Finite.allTree_join hash3_1536 hash3_1792)))
def step3 : ℕ → Bool := B677Finite.nextPointCheck 1500 2 64 18446744073709551557 row2 row3 transition3
theorem step3_0 : B677Finite.allTree 8 0 step3 = true := by decide +kernel
theorem step3_256 : B677Finite.allTree 8 256 step3 = true := by decide +kernel
theorem step3_512 : B677Finite.allTree 8 512 step3 = true := by decide +kernel
theorem step3_768 : B677Finite.allTree 8 768 step3 = true := by decide +kernel
theorem step3_1024 : B677Finite.allTree 8 1024 step3 = true := by decide +kernel
theorem step3_1280 : B677Finite.allTree 8 1280 step3 = true := by decide +kernel
theorem step3_1536 : B677Finite.allTree 8 1536 step3 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem step3_1792 : B677Finite.allTree 8 1792 step3 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem step3_checked : B677Finite.allTree 11 0 step3 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step3_0 step3_256) (B677Finite.allTree_join step3_512 step3_768)) (B677Finite.allTree_join (B677Finite.allTree_join step3_1024 step3_1280) (B677Finite.allTree_join step3_1536 step3_1792)))
theorem hash_checked3 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 1500 3 64 row3 lookup3) = true := hash3_checked
theorem step_checked3 : B677Finite.witnessedModNextCheck 11 1500 2 64 18446744073709551557 row2 row3 transition3 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step3_checked
end B677FiniteHashGenerated
