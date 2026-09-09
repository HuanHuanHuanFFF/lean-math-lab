import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104617036909Z».Data01
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash1 : ℕ → Bool := B677Finite.hashPointCheck 1500 1 64 row1 lookup1
theorem hash1_0 : B677Finite.allTree 8 0 hash1 = true := by decide +kernel
theorem hash1_256 : B677Finite.allTree 8 256 hash1 = true := by decide +kernel
theorem hash1_512 : B677Finite.allTree 8 512 hash1 = true := by decide +kernel
theorem hash1_768 : B677Finite.allTree 8 768 hash1 = true := by decide +kernel
theorem hash1_1024 : B677Finite.allTree 8 1024 hash1 = true := by decide +kernel
theorem hash1_1280 : B677Finite.allTree 8 1280 hash1 = true := by decide +kernel
theorem hash1_1536 : B677Finite.allTree 8 1536 hash1 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem hash1_1792 : B677Finite.allTree 8 1792 hash1 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem hash1_checked : B677Finite.allTree 11 0 hash1 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash1_0 hash1_256) (B677Finite.allTree_join hash1_512 hash1_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash1_1024 hash1_1280) (B677Finite.allTree_join hash1_1536 hash1_1792)))
def step1 : ℕ → Bool := B677Finite.initialPointCheck 1500 64 18446744073709551557 row1
theorem step1_0 : B677Finite.allTree 8 0 step1 = true := by decide +kernel
theorem step1_256 : B677Finite.allTree 8 256 step1 = true := by decide +kernel
theorem step1_512 : B677Finite.allTree 8 512 step1 = true := by decide +kernel
theorem step1_768 : B677Finite.allTree 8 768 step1 = true := by decide +kernel
theorem step1_1024 : B677Finite.allTree 8 1024 step1 = true := by decide +kernel
theorem step1_1280 : B677Finite.allTree 8 1280 step1 = true := by decide +kernel
theorem step1_1536 : B677Finite.allTree 8 1536 step1 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem step1_1792 : B677Finite.allTree 8 1792 step1 = true := by apply B677Finite.allTree_outside; decide +kernel
theorem step1_checked : B677Finite.allTree 11 0 step1 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step1_0 step1_256) (B677Finite.allTree_join step1_512 step1_768)) (B677Finite.allTree_join (B677Finite.allTree_join step1_1024 step1_1280) (B677Finite.allTree_join step1_1536 step1_1792)))
theorem hash_checked1 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 1500 1 64 row1 lookup1) = true := hash1_checked
theorem step_checked1 : B677Finite.modInitialCheck 11 1500 64 18446744073709551557 row1 = true :=
  B677Finite.modInitialCheck_of_parts (by decide +kernel) step1_checked
end B677FiniteHashGenerated
