import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data23
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data22
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash23 : ℕ → Bool := B677Finite.hashPointCheck 2000 23 64 row23 lookup23
theorem hash23_0 : B677Finite.allTree 8 0 hash23 = true := by decide +kernel
theorem hash23_256 : B677Finite.allTree 8 256 hash23 = true := by decide +kernel
theorem hash23_512 : B677Finite.allTree 8 512 hash23 = true := by decide +kernel
theorem hash23_768 : B677Finite.allTree 8 768 hash23 = true := by decide +kernel
theorem hash23_1024 : B677Finite.allTree 8 1024 hash23 = true := by decide +kernel
theorem hash23_1280 : B677Finite.allTree 8 1280 hash23 = true := by decide +kernel
theorem hash23_1536 : B677Finite.allTree 8 1536 hash23 = true := by decide +kernel
theorem hash23_1792 : B677Finite.allTree 8 1792 hash23 = true := by decide +kernel
theorem hash23_checked : B677Finite.allTree 11 0 hash23 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash23_0 hash23_256) (B677Finite.allTree_join hash23_512 hash23_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash23_1024 hash23_1280) (B677Finite.allTree_join hash23_1536 hash23_1792)))
def step23 : ℕ → Bool := B677Finite.nextPointCheck 2000 22 64 18446744073709551557 row22 row23 transition23
theorem step23_0 : B677Finite.allTree 8 0 step23 = true := by decide +kernel
theorem step23_256 : B677Finite.allTree 8 256 step23 = true := by decide +kernel
theorem step23_512 : B677Finite.allTree 8 512 step23 = true := by decide +kernel
theorem step23_768 : B677Finite.allTree 8 768 step23 = true := by decide +kernel
theorem step23_1024 : B677Finite.allTree 8 1024 step23 = true := by decide +kernel
theorem step23_1280 : B677Finite.allTree 8 1280 step23 = true := by decide +kernel
theorem step23_1536 : B677Finite.allTree 8 1536 step23 = true := by decide +kernel
theorem step23_1792 : B677Finite.allTree 8 1792 step23 = true := by decide +kernel
theorem step23_checked : B677Finite.allTree 11 0 step23 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step23_0 step23_256) (B677Finite.allTree_join step23_512 step23_768)) (B677Finite.allTree_join (B677Finite.allTree_join step23_1024 step23_1280) (B677Finite.allTree_join step23_1536 step23_1792)))
theorem hash_checked23 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 23 64 row23 lookup23) = true := hash23_checked
theorem step_checked23 : B677Finite.witnessedModNextCheck 11 2000 22 64 18446744073709551557 row22 row23 transition23 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step23_checked
end B677FiniteHashGenerated
