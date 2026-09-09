import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data18
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data17
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash18 : ℕ → Bool := B677Finite.hashPointCheck 2000 18 64 row18 lookup18
theorem hash18_0 : B677Finite.allTree 8 0 hash18 = true := by decide +kernel
theorem hash18_256 : B677Finite.allTree 8 256 hash18 = true := by decide +kernel
theorem hash18_512 : B677Finite.allTree 8 512 hash18 = true := by decide +kernel
theorem hash18_768 : B677Finite.allTree 8 768 hash18 = true := by decide +kernel
theorem hash18_1024 : B677Finite.allTree 8 1024 hash18 = true := by decide +kernel
theorem hash18_1280 : B677Finite.allTree 8 1280 hash18 = true := by decide +kernel
theorem hash18_1536 : B677Finite.allTree 8 1536 hash18 = true := by decide +kernel
theorem hash18_1792 : B677Finite.allTree 8 1792 hash18 = true := by decide +kernel
theorem hash18_checked : B677Finite.allTree 11 0 hash18 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash18_0 hash18_256) (B677Finite.allTree_join hash18_512 hash18_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash18_1024 hash18_1280) (B677Finite.allTree_join hash18_1536 hash18_1792)))
def step18 : ℕ → Bool := B677Finite.nextPointCheck 2000 17 64 18446744073709551557 row17 row18 transition18
theorem step18_0 : B677Finite.allTree 8 0 step18 = true := by decide +kernel
theorem step18_256 : B677Finite.allTree 8 256 step18 = true := by decide +kernel
theorem step18_512 : B677Finite.allTree 8 512 step18 = true := by decide +kernel
theorem step18_768 : B677Finite.allTree 8 768 step18 = true := by decide +kernel
theorem step18_1024 : B677Finite.allTree 8 1024 step18 = true := by decide +kernel
theorem step18_1280 : B677Finite.allTree 8 1280 step18 = true := by decide +kernel
theorem step18_1536 : B677Finite.allTree 8 1536 step18 = true := by decide +kernel
theorem step18_1792 : B677Finite.allTree 8 1792 step18 = true := by decide +kernel
theorem step18_checked : B677Finite.allTree 11 0 step18 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step18_0 step18_256) (B677Finite.allTree_join step18_512 step18_768)) (B677Finite.allTree_join (B677Finite.allTree_join step18_1024 step18_1280) (B677Finite.allTree_join step18_1536 step18_1792)))
theorem hash_checked18 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 18 64 row18 lookup18) = true := hash18_checked
theorem step_checked18 : B677Finite.witnessedModNextCheck 11 2000 17 64 18446744073709551557 row17 row18 transition18 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step18_checked
end B677FiniteHashGenerated
