import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data24
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data23
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash24 : ℕ → Bool := B677Finite.hashPointCheck 2000 24 64 row24 lookup24
theorem hash24_0 : B677Finite.allTree 8 0 hash24 = true := by decide +kernel
theorem hash24_256 : B677Finite.allTree 8 256 hash24 = true := by decide +kernel
theorem hash24_512 : B677Finite.allTree 8 512 hash24 = true := by decide +kernel
theorem hash24_768 : B677Finite.allTree 8 768 hash24 = true := by decide +kernel
theorem hash24_1024 : B677Finite.allTree 8 1024 hash24 = true := by decide +kernel
theorem hash24_1280 : B677Finite.allTree 8 1280 hash24 = true := by decide +kernel
theorem hash24_1536 : B677Finite.allTree 8 1536 hash24 = true := by decide +kernel
theorem hash24_1792 : B677Finite.allTree 8 1792 hash24 = true := by decide +kernel
theorem hash24_checked : B677Finite.allTree 11 0 hash24 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash24_0 hash24_256) (B677Finite.allTree_join hash24_512 hash24_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash24_1024 hash24_1280) (B677Finite.allTree_join hash24_1536 hash24_1792)))
def step24 : ℕ → Bool := B677Finite.nextPointCheck 2000 23 64 18446744073709551557 row23 row24 transition24
theorem step24_0 : B677Finite.allTree 8 0 step24 = true := by decide +kernel
theorem step24_256 : B677Finite.allTree 8 256 step24 = true := by decide +kernel
theorem step24_512 : B677Finite.allTree 8 512 step24 = true := by decide +kernel
theorem step24_768 : B677Finite.allTree 8 768 step24 = true := by decide +kernel
theorem step24_1024 : B677Finite.allTree 8 1024 step24 = true := by decide +kernel
theorem step24_1280 : B677Finite.allTree 8 1280 step24 = true := by decide +kernel
theorem step24_1536 : B677Finite.allTree 8 1536 step24 = true := by decide +kernel
theorem step24_1792 : B677Finite.allTree 8 1792 step24 = true := by decide +kernel
theorem step24_checked : B677Finite.allTree 11 0 step24 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step24_0 step24_256) (B677Finite.allTree_join step24_512 step24_768)) (B677Finite.allTree_join (B677Finite.allTree_join step24_1024 step24_1280) (B677Finite.allTree_join step24_1536 step24_1792)))
theorem hash_checked24 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 24 64 row24 lookup24) = true := hash24_checked
theorem step_checked24 : B677Finite.witnessedModNextCheck 11 2000 23 64 18446744073709551557 row23 row24 transition24 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step24_checked
end B677FiniteHashGenerated
