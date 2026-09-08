import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data28
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data27
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash28 : ℕ → Bool := B677Finite.hashPointCheck 2000 28 64 row28 lookup28
theorem hash28_0 : B677Finite.allTree 8 0 hash28 = true := by decide +kernel
theorem hash28_256 : B677Finite.allTree 8 256 hash28 = true := by decide +kernel
theorem hash28_512 : B677Finite.allTree 8 512 hash28 = true := by decide +kernel
theorem hash28_768 : B677Finite.allTree 8 768 hash28 = true := by decide +kernel
theorem hash28_1024 : B677Finite.allTree 8 1024 hash28 = true := by decide +kernel
theorem hash28_1280 : B677Finite.allTree 8 1280 hash28 = true := by decide +kernel
theorem hash28_1536 : B677Finite.allTree 8 1536 hash28 = true := by decide +kernel
theorem hash28_1792 : B677Finite.allTree 8 1792 hash28 = true := by decide +kernel
theorem hash28_checked : B677Finite.allTree 11 0 hash28 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash28_0 hash28_256) (B677Finite.allTree_join hash28_512 hash28_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash28_1024 hash28_1280) (B677Finite.allTree_join hash28_1536 hash28_1792)))
def step28 : ℕ → Bool := B677Finite.nextPointCheck 2000 27 64 18446744073709551557 row27 row28 transition28
theorem step28_0 : B677Finite.allTree 8 0 step28 = true := by decide +kernel
theorem step28_256 : B677Finite.allTree 8 256 step28 = true := by decide +kernel
theorem step28_512 : B677Finite.allTree 8 512 step28 = true := by decide +kernel
theorem step28_768 : B677Finite.allTree 8 768 step28 = true := by decide +kernel
theorem step28_1024 : B677Finite.allTree 8 1024 step28 = true := by decide +kernel
theorem step28_1280 : B677Finite.allTree 8 1280 step28 = true := by decide +kernel
theorem step28_1536 : B677Finite.allTree 8 1536 step28 = true := by decide +kernel
theorem step28_1792 : B677Finite.allTree 8 1792 step28 = true := by decide +kernel
theorem step28_checked : B677Finite.allTree 11 0 step28 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step28_0 step28_256) (B677Finite.allTree_join step28_512 step28_768)) (B677Finite.allTree_join (B677Finite.allTree_join step28_1024 step28_1280) (B677Finite.allTree_join step28_1536 step28_1792)))
theorem hash_checked28 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 28 64 row28 lookup28) = true := hash28_checked
theorem step_checked28 : B677Finite.witnessedModNextCheck 11 2000 27 64 18446744073709551557 row27 row28 transition28 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step28_checked
end B677FiniteHashGenerated
