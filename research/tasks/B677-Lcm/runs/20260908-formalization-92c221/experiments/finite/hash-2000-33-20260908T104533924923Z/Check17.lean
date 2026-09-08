import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data17
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data16
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash17 : ℕ → Bool := B677Finite.hashPointCheck 2000 17 64 row17 lookup17
theorem hash17_0 : B677Finite.allTree 8 0 hash17 = true := by decide +kernel
theorem hash17_256 : B677Finite.allTree 8 256 hash17 = true := by decide +kernel
theorem hash17_512 : B677Finite.allTree 8 512 hash17 = true := by decide +kernel
theorem hash17_768 : B677Finite.allTree 8 768 hash17 = true := by decide +kernel
theorem hash17_1024 : B677Finite.allTree 8 1024 hash17 = true := by decide +kernel
theorem hash17_1280 : B677Finite.allTree 8 1280 hash17 = true := by decide +kernel
theorem hash17_1536 : B677Finite.allTree 8 1536 hash17 = true := by decide +kernel
theorem hash17_1792 : B677Finite.allTree 8 1792 hash17 = true := by decide +kernel
theorem hash17_checked : B677Finite.allTree 11 0 hash17 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash17_0 hash17_256) (B677Finite.allTree_join hash17_512 hash17_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash17_1024 hash17_1280) (B677Finite.allTree_join hash17_1536 hash17_1792)))
def step17 : ℕ → Bool := B677Finite.nextPointCheck 2000 16 64 18446744073709551557 row16 row17 transition17
theorem step17_0 : B677Finite.allTree 8 0 step17 = true := by decide +kernel
theorem step17_256 : B677Finite.allTree 8 256 step17 = true := by decide +kernel
theorem step17_512 : B677Finite.allTree 8 512 step17 = true := by decide +kernel
theorem step17_768 : B677Finite.allTree 8 768 step17 = true := by decide +kernel
theorem step17_1024 : B677Finite.allTree 8 1024 step17 = true := by decide +kernel
theorem step17_1280 : B677Finite.allTree 8 1280 step17 = true := by decide +kernel
theorem step17_1536 : B677Finite.allTree 8 1536 step17 = true := by decide +kernel
theorem step17_1792 : B677Finite.allTree 8 1792 step17 = true := by decide +kernel
theorem step17_checked : B677Finite.allTree 11 0 step17 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step17_0 step17_256) (B677Finite.allTree_join step17_512 step17_768)) (B677Finite.allTree_join (B677Finite.allTree_join step17_1024 step17_1280) (B677Finite.allTree_join step17_1536 step17_1792)))
theorem hash_checked17 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 17 64 row17 lookup17) = true := hash17_checked
theorem step_checked17 : B677Finite.witnessedModNextCheck 11 2000 16 64 18446744073709551557 row16 row17 transition17 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step17_checked
end B677FiniteHashGenerated
