import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data33
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data32
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash33 : ℕ → Bool := B677Finite.hashPointCheck 2000 33 64 row33 lookup33
theorem hash33_0 : B677Finite.allTree 8 0 hash33 = true := by decide +kernel
theorem hash33_256 : B677Finite.allTree 8 256 hash33 = true := by decide +kernel
theorem hash33_512 : B677Finite.allTree 8 512 hash33 = true := by decide +kernel
theorem hash33_768 : B677Finite.allTree 8 768 hash33 = true := by decide +kernel
theorem hash33_1024 : B677Finite.allTree 8 1024 hash33 = true := by decide +kernel
theorem hash33_1280 : B677Finite.allTree 8 1280 hash33 = true := by decide +kernel
theorem hash33_1536 : B677Finite.allTree 8 1536 hash33 = true := by decide +kernel
theorem hash33_1792 : B677Finite.allTree 8 1792 hash33 = true := by decide +kernel
theorem hash33_checked : B677Finite.allTree 11 0 hash33 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash33_0 hash33_256) (B677Finite.allTree_join hash33_512 hash33_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash33_1024 hash33_1280) (B677Finite.allTree_join hash33_1536 hash33_1792)))
def step33 : ℕ → Bool := B677Finite.nextPointCheck 2000 32 64 18446744073709551557 row32 row33 transition33
theorem step33_0 : B677Finite.allTree 8 0 step33 = true := by decide +kernel
theorem step33_256 : B677Finite.allTree 8 256 step33 = true := by decide +kernel
theorem step33_512 : B677Finite.allTree 8 512 step33 = true := by decide +kernel
theorem step33_768 : B677Finite.allTree 8 768 step33 = true := by decide +kernel
theorem step33_1024 : B677Finite.allTree 8 1024 step33 = true := by decide +kernel
theorem step33_1280 : B677Finite.allTree 8 1280 step33 = true := by decide +kernel
theorem step33_1536 : B677Finite.allTree 8 1536 step33 = true := by decide +kernel
theorem step33_1792 : B677Finite.allTree 8 1792 step33 = true := by decide +kernel
theorem step33_checked : B677Finite.allTree 11 0 step33 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step33_0 step33_256) (B677Finite.allTree_join step33_512 step33_768)) (B677Finite.allTree_join (B677Finite.allTree_join step33_1024 step33_1280) (B677Finite.allTree_join step33_1536 step33_1792)))
theorem hash_checked33 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 33 64 row33 lookup33) = true := hash33_checked
theorem step_checked33 : B677Finite.witnessedModNextCheck 11 2000 32 64 18446744073709551557 row32 row33 transition33 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step33_checked
end B677FiniteHashGenerated
