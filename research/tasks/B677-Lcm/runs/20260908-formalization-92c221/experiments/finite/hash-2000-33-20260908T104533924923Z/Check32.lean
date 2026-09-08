import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data32
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data31
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash32 : ℕ → Bool := B677Finite.hashPointCheck 2000 32 64 row32 lookup32
theorem hash32_0 : B677Finite.allTree 8 0 hash32 = true := by decide +kernel
theorem hash32_256 : B677Finite.allTree 8 256 hash32 = true := by decide +kernel
theorem hash32_512 : B677Finite.allTree 8 512 hash32 = true := by decide +kernel
theorem hash32_768 : B677Finite.allTree 8 768 hash32 = true := by decide +kernel
theorem hash32_1024 : B677Finite.allTree 8 1024 hash32 = true := by decide +kernel
theorem hash32_1280 : B677Finite.allTree 8 1280 hash32 = true := by decide +kernel
theorem hash32_1536 : B677Finite.allTree 8 1536 hash32 = true := by decide +kernel
theorem hash32_1792 : B677Finite.allTree 8 1792 hash32 = true := by decide +kernel
theorem hash32_checked : B677Finite.allTree 11 0 hash32 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash32_0 hash32_256) (B677Finite.allTree_join hash32_512 hash32_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash32_1024 hash32_1280) (B677Finite.allTree_join hash32_1536 hash32_1792)))
def step32 : ℕ → Bool := B677Finite.nextPointCheck 2000 31 64 18446744073709551557 row31 row32 transition32
theorem step32_0 : B677Finite.allTree 8 0 step32 = true := by decide +kernel
theorem step32_256 : B677Finite.allTree 8 256 step32 = true := by decide +kernel
theorem step32_512 : B677Finite.allTree 8 512 step32 = true := by decide +kernel
theorem step32_768 : B677Finite.allTree 8 768 step32 = true := by decide +kernel
theorem step32_1024 : B677Finite.allTree 8 1024 step32 = true := by decide +kernel
theorem step32_1280 : B677Finite.allTree 8 1280 step32 = true := by decide +kernel
theorem step32_1536 : B677Finite.allTree 8 1536 step32 = true := by decide +kernel
theorem step32_1792 : B677Finite.allTree 8 1792 step32 = true := by decide +kernel
theorem step32_checked : B677Finite.allTree 11 0 step32 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step32_0 step32_256) (B677Finite.allTree_join step32_512 step32_768)) (B677Finite.allTree_join (B677Finite.allTree_join step32_1024 step32_1280) (B677Finite.allTree_join step32_1536 step32_1792)))
theorem hash_checked32 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 32 64 row32 lookup32) = true := hash32_checked
theorem step_checked32 : B677Finite.witnessedModNextCheck 11 2000 31 64 18446744073709551557 row31 row32 transition32 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step32_checked
end B677FiniteHashGenerated
