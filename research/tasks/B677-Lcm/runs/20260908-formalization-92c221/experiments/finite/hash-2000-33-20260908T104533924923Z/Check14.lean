import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data14
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data13
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash14 : ℕ → Bool := B677Finite.hashPointCheck 2000 14 64 row14 lookup14
theorem hash14_0 : B677Finite.allTree 8 0 hash14 = true := by decide +kernel
theorem hash14_256 : B677Finite.allTree 8 256 hash14 = true := by decide +kernel
theorem hash14_512 : B677Finite.allTree 8 512 hash14 = true := by decide +kernel
theorem hash14_768 : B677Finite.allTree 8 768 hash14 = true := by decide +kernel
theorem hash14_1024 : B677Finite.allTree 8 1024 hash14 = true := by decide +kernel
theorem hash14_1280 : B677Finite.allTree 8 1280 hash14 = true := by decide +kernel
theorem hash14_1536 : B677Finite.allTree 8 1536 hash14 = true := by decide +kernel
theorem hash14_1792 : B677Finite.allTree 8 1792 hash14 = true := by decide +kernel
theorem hash14_checked : B677Finite.allTree 11 0 hash14 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash14_0 hash14_256) (B677Finite.allTree_join hash14_512 hash14_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash14_1024 hash14_1280) (B677Finite.allTree_join hash14_1536 hash14_1792)))
def step14 : ℕ → Bool := B677Finite.nextPointCheck 2000 13 64 18446744073709551557 row13 row14 transition14
theorem step14_0 : B677Finite.allTree 8 0 step14 = true := by decide +kernel
theorem step14_256 : B677Finite.allTree 8 256 step14 = true := by decide +kernel
theorem step14_512 : B677Finite.allTree 8 512 step14 = true := by decide +kernel
theorem step14_768 : B677Finite.allTree 8 768 step14 = true := by decide +kernel
theorem step14_1024 : B677Finite.allTree 8 1024 step14 = true := by decide +kernel
theorem step14_1280 : B677Finite.allTree 8 1280 step14 = true := by decide +kernel
theorem step14_1536 : B677Finite.allTree 8 1536 step14 = true := by decide +kernel
theorem step14_1792 : B677Finite.allTree 8 1792 step14 = true := by decide +kernel
theorem step14_checked : B677Finite.allTree 11 0 step14 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step14_0 step14_256) (B677Finite.allTree_join step14_512 step14_768)) (B677Finite.allTree_join (B677Finite.allTree_join step14_1024 step14_1280) (B677Finite.allTree_join step14_1536 step14_1792)))
theorem hash_checked14 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 14 64 row14 lookup14) = true := hash14_checked
theorem step_checked14 : B677Finite.witnessedModNextCheck 11 2000 13 64 18446744073709551557 row13 row14 transition14 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step14_checked
end B677FiniteHashGenerated
