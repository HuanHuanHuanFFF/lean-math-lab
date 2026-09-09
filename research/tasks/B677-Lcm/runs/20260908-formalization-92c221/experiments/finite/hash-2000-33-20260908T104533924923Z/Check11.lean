import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data11
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data10
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash11 : ℕ → Bool := B677Finite.hashPointCheck 2000 11 64 row11 lookup11
theorem hash11_0 : B677Finite.allTree 8 0 hash11 = true := by decide +kernel
theorem hash11_256 : B677Finite.allTree 8 256 hash11 = true := by decide +kernel
theorem hash11_512 : B677Finite.allTree 8 512 hash11 = true := by decide +kernel
theorem hash11_768 : B677Finite.allTree 8 768 hash11 = true := by decide +kernel
theorem hash11_1024 : B677Finite.allTree 8 1024 hash11 = true := by decide +kernel
theorem hash11_1280 : B677Finite.allTree 8 1280 hash11 = true := by decide +kernel
theorem hash11_1536 : B677Finite.allTree 8 1536 hash11 = true := by decide +kernel
theorem hash11_1792 : B677Finite.allTree 8 1792 hash11 = true := by decide +kernel
theorem hash11_checked : B677Finite.allTree 11 0 hash11 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash11_0 hash11_256) (B677Finite.allTree_join hash11_512 hash11_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash11_1024 hash11_1280) (B677Finite.allTree_join hash11_1536 hash11_1792)))
def step11 : ℕ → Bool := B677Finite.nextPointCheck 2000 10 64 18446744073709551557 row10 row11 transition11
theorem step11_0 : B677Finite.allTree 8 0 step11 = true := by decide +kernel
theorem step11_256 : B677Finite.allTree 8 256 step11 = true := by decide +kernel
theorem step11_512 : B677Finite.allTree 8 512 step11 = true := by decide +kernel
theorem step11_768 : B677Finite.allTree 8 768 step11 = true := by decide +kernel
theorem step11_1024 : B677Finite.allTree 8 1024 step11 = true := by decide +kernel
theorem step11_1280 : B677Finite.allTree 8 1280 step11 = true := by decide +kernel
theorem step11_1536 : B677Finite.allTree 8 1536 step11 = true := by decide +kernel
theorem step11_1792 : B677Finite.allTree 8 1792 step11 = true := by decide +kernel
theorem step11_checked : B677Finite.allTree 11 0 step11 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step11_0 step11_256) (B677Finite.allTree_join step11_512 step11_768)) (B677Finite.allTree_join (B677Finite.allTree_join step11_1024 step11_1280) (B677Finite.allTree_join step11_1536 step11_1792)))
theorem hash_checked11 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 11 64 row11 lookup11) = true := hash11_checked
theorem step_checked11 : B677Finite.witnessedModNextCheck 11 2000 10 64 18446744073709551557 row10 row11 transition11 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step11_checked
end B677FiniteHashGenerated
