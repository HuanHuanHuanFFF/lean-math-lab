import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data29
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data28
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash29 : ℕ → Bool := B677Finite.hashPointCheck 2000 29 64 row29 lookup29
theorem hash29_0 : B677Finite.allTree 8 0 hash29 = true := by decide +kernel
theorem hash29_256 : B677Finite.allTree 8 256 hash29 = true := by decide +kernel
theorem hash29_512 : B677Finite.allTree 8 512 hash29 = true := by decide +kernel
theorem hash29_768 : B677Finite.allTree 8 768 hash29 = true := by decide +kernel
theorem hash29_1024 : B677Finite.allTree 8 1024 hash29 = true := by decide +kernel
theorem hash29_1280 : B677Finite.allTree 8 1280 hash29 = true := by decide +kernel
theorem hash29_1536 : B677Finite.allTree 8 1536 hash29 = true := by decide +kernel
theorem hash29_1792 : B677Finite.allTree 8 1792 hash29 = true := by decide +kernel
theorem hash29_checked : B677Finite.allTree 11 0 hash29 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash29_0 hash29_256) (B677Finite.allTree_join hash29_512 hash29_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash29_1024 hash29_1280) (B677Finite.allTree_join hash29_1536 hash29_1792)))
def step29 : ℕ → Bool := B677Finite.nextPointCheck 2000 28 64 18446744073709551557 row28 row29 transition29
theorem step29_0 : B677Finite.allTree 8 0 step29 = true := by decide +kernel
theorem step29_256 : B677Finite.allTree 8 256 step29 = true := by decide +kernel
theorem step29_512 : B677Finite.allTree 8 512 step29 = true := by decide +kernel
theorem step29_768 : B677Finite.allTree 8 768 step29 = true := by decide +kernel
theorem step29_1024 : B677Finite.allTree 8 1024 step29 = true := by decide +kernel
theorem step29_1280 : B677Finite.allTree 8 1280 step29 = true := by decide +kernel
theorem step29_1536 : B677Finite.allTree 8 1536 step29 = true := by decide +kernel
theorem step29_1792 : B677Finite.allTree 8 1792 step29 = true := by decide +kernel
theorem step29_checked : B677Finite.allTree 11 0 step29 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step29_0 step29_256) (B677Finite.allTree_join step29_512 step29_768)) (B677Finite.allTree_join (B677Finite.allTree_join step29_1024 step29_1280) (B677Finite.allTree_join step29_1536 step29_1792)))
theorem hash_checked29 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 29 64 row29 lookup29) = true := hash29_checked
theorem step_checked29 : B677Finite.witnessedModNextCheck 11 2000 28 64 18446744073709551557 row28 row29 transition29 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step29_checked
end B677FiniteHashGenerated
