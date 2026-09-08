import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data09
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data08
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash9 : ℕ → Bool := B677Finite.hashPointCheck 2000 9 64 row9 lookup9
theorem hash9_0 : B677Finite.allTree 8 0 hash9 = true := by decide +kernel
theorem hash9_256 : B677Finite.allTree 8 256 hash9 = true := by decide +kernel
theorem hash9_512 : B677Finite.allTree 8 512 hash9 = true := by decide +kernel
theorem hash9_768 : B677Finite.allTree 8 768 hash9 = true := by decide +kernel
theorem hash9_1024 : B677Finite.allTree 8 1024 hash9 = true := by decide +kernel
theorem hash9_1280 : B677Finite.allTree 8 1280 hash9 = true := by decide +kernel
theorem hash9_1536 : B677Finite.allTree 8 1536 hash9 = true := by decide +kernel
theorem hash9_1792 : B677Finite.allTree 8 1792 hash9 = true := by decide +kernel
theorem hash9_checked : B677Finite.allTree 11 0 hash9 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash9_0 hash9_256) (B677Finite.allTree_join hash9_512 hash9_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash9_1024 hash9_1280) (B677Finite.allTree_join hash9_1536 hash9_1792)))
def step9 : ℕ → Bool := B677Finite.nextPointCheck 2000 8 64 18446744073709551557 row8 row9 transition9
theorem step9_0 : B677Finite.allTree 8 0 step9 = true := by decide +kernel
theorem step9_256 : B677Finite.allTree 8 256 step9 = true := by decide +kernel
theorem step9_512 : B677Finite.allTree 8 512 step9 = true := by decide +kernel
theorem step9_768 : B677Finite.allTree 8 768 step9 = true := by decide +kernel
theorem step9_1024 : B677Finite.allTree 8 1024 step9 = true := by decide +kernel
theorem step9_1280 : B677Finite.allTree 8 1280 step9 = true := by decide +kernel
theorem step9_1536 : B677Finite.allTree 8 1536 step9 = true := by decide +kernel
theorem step9_1792 : B677Finite.allTree 8 1792 step9 = true := by decide +kernel
theorem step9_checked : B677Finite.allTree 11 0 step9 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step9_0 step9_256) (B677Finite.allTree_join step9_512 step9_768)) (B677Finite.allTree_join (B677Finite.allTree_join step9_1024 step9_1280) (B677Finite.allTree_join step9_1536 step9_1792)))
theorem hash_checked9 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 9 64 row9 lookup9) = true := hash9_checked
theorem step_checked9 : B677Finite.witnessedModNextCheck 11 2000 8 64 18446744073709551557 row8 row9 transition9 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step9_checked
end B677FiniteHashGenerated
