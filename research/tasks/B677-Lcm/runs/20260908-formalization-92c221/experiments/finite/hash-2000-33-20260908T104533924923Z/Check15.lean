import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data15
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data14
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash15 : ℕ → Bool := B677Finite.hashPointCheck 2000 15 64 row15 lookup15
theorem hash15_0 : B677Finite.allTree 8 0 hash15 = true := by decide +kernel
theorem hash15_256 : B677Finite.allTree 8 256 hash15 = true := by decide +kernel
theorem hash15_512 : B677Finite.allTree 8 512 hash15 = true := by decide +kernel
theorem hash15_768 : B677Finite.allTree 8 768 hash15 = true := by decide +kernel
theorem hash15_1024 : B677Finite.allTree 8 1024 hash15 = true := by decide +kernel
theorem hash15_1280 : B677Finite.allTree 8 1280 hash15 = true := by decide +kernel
theorem hash15_1536 : B677Finite.allTree 8 1536 hash15 = true := by decide +kernel
theorem hash15_1792 : B677Finite.allTree 8 1792 hash15 = true := by decide +kernel
theorem hash15_checked : B677Finite.allTree 11 0 hash15 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash15_0 hash15_256) (B677Finite.allTree_join hash15_512 hash15_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash15_1024 hash15_1280) (B677Finite.allTree_join hash15_1536 hash15_1792)))
def step15 : ℕ → Bool := B677Finite.nextPointCheck 2000 14 64 18446744073709551557 row14 row15 transition15
theorem step15_0 : B677Finite.allTree 8 0 step15 = true := by decide +kernel
theorem step15_256 : B677Finite.allTree 8 256 step15 = true := by decide +kernel
theorem step15_512 : B677Finite.allTree 8 512 step15 = true := by decide +kernel
theorem step15_768 : B677Finite.allTree 8 768 step15 = true := by decide +kernel
theorem step15_1024 : B677Finite.allTree 8 1024 step15 = true := by decide +kernel
theorem step15_1280 : B677Finite.allTree 8 1280 step15 = true := by decide +kernel
theorem step15_1536 : B677Finite.allTree 8 1536 step15 = true := by decide +kernel
theorem step15_1792 : B677Finite.allTree 8 1792 step15 = true := by decide +kernel
theorem step15_checked : B677Finite.allTree 11 0 step15 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step15_0 step15_256) (B677Finite.allTree_join step15_512 step15_768)) (B677Finite.allTree_join (B677Finite.allTree_join step15_1024 step15_1280) (B677Finite.allTree_join step15_1536 step15_1792)))
theorem hash_checked15 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 15 64 row15 lookup15) = true := hash15_checked
theorem step_checked15 : B677Finite.witnessedModNextCheck 11 2000 14 64 18446744073709551557 row14 row15 transition15 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step15_checked
end B677FiniteHashGenerated
