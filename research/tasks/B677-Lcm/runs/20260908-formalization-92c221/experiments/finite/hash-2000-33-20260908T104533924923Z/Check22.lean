import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data22
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data21
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash22 : ℕ → Bool := B677Finite.hashPointCheck 2000 22 64 row22 lookup22
theorem hash22_0 : B677Finite.allTree 8 0 hash22 = true := by decide +kernel
theorem hash22_256 : B677Finite.allTree 8 256 hash22 = true := by decide +kernel
theorem hash22_512 : B677Finite.allTree 8 512 hash22 = true := by decide +kernel
theorem hash22_768 : B677Finite.allTree 8 768 hash22 = true := by decide +kernel
theorem hash22_1024 : B677Finite.allTree 8 1024 hash22 = true := by decide +kernel
theorem hash22_1280 : B677Finite.allTree 8 1280 hash22 = true := by decide +kernel
theorem hash22_1536 : B677Finite.allTree 8 1536 hash22 = true := by decide +kernel
theorem hash22_1792 : B677Finite.allTree 8 1792 hash22 = true := by decide +kernel
theorem hash22_checked : B677Finite.allTree 11 0 hash22 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash22_0 hash22_256) (B677Finite.allTree_join hash22_512 hash22_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash22_1024 hash22_1280) (B677Finite.allTree_join hash22_1536 hash22_1792)))
def step22 : ℕ → Bool := B677Finite.nextPointCheck 2000 21 64 18446744073709551557 row21 row22 transition22
theorem step22_0 : B677Finite.allTree 8 0 step22 = true := by decide +kernel
theorem step22_256 : B677Finite.allTree 8 256 step22 = true := by decide +kernel
theorem step22_512 : B677Finite.allTree 8 512 step22 = true := by decide +kernel
theorem step22_768 : B677Finite.allTree 8 768 step22 = true := by decide +kernel
theorem step22_1024 : B677Finite.allTree 8 1024 step22 = true := by decide +kernel
theorem step22_1280 : B677Finite.allTree 8 1280 step22 = true := by decide +kernel
theorem step22_1536 : B677Finite.allTree 8 1536 step22 = true := by decide +kernel
theorem step22_1792 : B677Finite.allTree 8 1792 step22 = true := by decide +kernel
theorem step22_checked : B677Finite.allTree 11 0 step22 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step22_0 step22_256) (B677Finite.allTree_join step22_512 step22_768)) (B677Finite.allTree_join (B677Finite.allTree_join step22_1024 step22_1280) (B677Finite.allTree_join step22_1536 step22_1792)))
theorem hash_checked22 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 22 64 row22 lookup22) = true := hash22_checked
theorem step_checked22 : B677Finite.witnessedModNextCheck 11 2000 21 64 18446744073709551557 row21 row22 transition22 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step22_checked
end B677FiniteHashGenerated
