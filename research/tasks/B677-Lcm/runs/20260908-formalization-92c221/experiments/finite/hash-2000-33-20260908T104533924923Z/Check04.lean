import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data04
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data03
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash4 : ℕ → Bool := B677Finite.hashPointCheck 2000 4 64 row4 lookup4
theorem hash4_0 : B677Finite.allTree 8 0 hash4 = true := by decide +kernel
theorem hash4_256 : B677Finite.allTree 8 256 hash4 = true := by decide +kernel
theorem hash4_512 : B677Finite.allTree 8 512 hash4 = true := by decide +kernel
theorem hash4_768 : B677Finite.allTree 8 768 hash4 = true := by decide +kernel
theorem hash4_1024 : B677Finite.allTree 8 1024 hash4 = true := by decide +kernel
theorem hash4_1280 : B677Finite.allTree 8 1280 hash4 = true := by decide +kernel
theorem hash4_1536 : B677Finite.allTree 8 1536 hash4 = true := by decide +kernel
theorem hash4_1792 : B677Finite.allTree 8 1792 hash4 = true := by decide +kernel
theorem hash4_checked : B677Finite.allTree 11 0 hash4 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash4_0 hash4_256) (B677Finite.allTree_join hash4_512 hash4_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash4_1024 hash4_1280) (B677Finite.allTree_join hash4_1536 hash4_1792)))
def step4 : ℕ → Bool := B677Finite.nextPointCheck 2000 3 64 18446744073709551557 row3 row4 transition4
theorem step4_0 : B677Finite.allTree 8 0 step4 = true := by decide +kernel
theorem step4_256 : B677Finite.allTree 8 256 step4 = true := by decide +kernel
theorem step4_512 : B677Finite.allTree 8 512 step4 = true := by decide +kernel
theorem step4_768 : B677Finite.allTree 8 768 step4 = true := by decide +kernel
theorem step4_1024 : B677Finite.allTree 8 1024 step4 = true := by decide +kernel
theorem step4_1280 : B677Finite.allTree 8 1280 step4 = true := by decide +kernel
theorem step4_1536 : B677Finite.allTree 8 1536 step4 = true := by decide +kernel
theorem step4_1792 : B677Finite.allTree 8 1792 step4 = true := by decide +kernel
theorem step4_checked : B677Finite.allTree 11 0 step4 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step4_0 step4_256) (B677Finite.allTree_join step4_512 step4_768)) (B677Finite.allTree_join (B677Finite.allTree_join step4_1024 step4_1280) (B677Finite.allTree_join step4_1536 step4_1792)))
theorem hash_checked4 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 4 64 row4 lookup4) = true := hash4_checked
theorem step_checked4 : B677Finite.witnessedModNextCheck 11 2000 3 64 18446744073709551557 row3 row4 transition4 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step4_checked
end B677FiniteHashGenerated
