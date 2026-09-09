import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data19
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-2000-33-20260908T104533924923Z».Data18
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
def hash19 : ℕ → Bool := B677Finite.hashPointCheck 2000 19 64 row19 lookup19
theorem hash19_0 : B677Finite.allTree 8 0 hash19 = true := by decide +kernel
theorem hash19_256 : B677Finite.allTree 8 256 hash19 = true := by decide +kernel
theorem hash19_512 : B677Finite.allTree 8 512 hash19 = true := by decide +kernel
theorem hash19_768 : B677Finite.allTree 8 768 hash19 = true := by decide +kernel
theorem hash19_1024 : B677Finite.allTree 8 1024 hash19 = true := by decide +kernel
theorem hash19_1280 : B677Finite.allTree 8 1280 hash19 = true := by decide +kernel
theorem hash19_1536 : B677Finite.allTree 8 1536 hash19 = true := by decide +kernel
theorem hash19_1792 : B677Finite.allTree 8 1792 hash19 = true := by decide +kernel
theorem hash19_checked : B677Finite.allTree 11 0 hash19 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash19_0 hash19_256) (B677Finite.allTree_join hash19_512 hash19_768)) (B677Finite.allTree_join (B677Finite.allTree_join hash19_1024 hash19_1280) (B677Finite.allTree_join hash19_1536 hash19_1792)))
def step19 : ℕ → Bool := B677Finite.nextPointCheck 2000 18 64 18446744073709551557 row18 row19 transition19
theorem step19_0 : B677Finite.allTree 8 0 step19 = true := by decide +kernel
theorem step19_256 : B677Finite.allTree 8 256 step19 = true := by decide +kernel
theorem step19_512 : B677Finite.allTree 8 512 step19 = true := by decide +kernel
theorem step19_768 : B677Finite.allTree 8 768 step19 = true := by decide +kernel
theorem step19_1024 : B677Finite.allTree 8 1024 step19 = true := by decide +kernel
theorem step19_1280 : B677Finite.allTree 8 1280 step19 = true := by decide +kernel
theorem step19_1536 : B677Finite.allTree 8 1536 step19 = true := by decide +kernel
theorem step19_1792 : B677Finite.allTree 8 1792 step19 = true := by decide +kernel
theorem step19_checked : B677Finite.allTree 11 0 step19 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step19_0 step19_256) (B677Finite.allTree_join step19_512 step19_768)) (B677Finite.allTree_join (B677Finite.allTree_join step19_1024 step19_1280) (B677Finite.allTree_join step19_1536 step19_1792)))
theorem hash_checked19 : B677Finite.allTree 11 0 (B677Finite.hashPointCheck 2000 19 64 row19 lookup19) = true := hash19_checked
theorem step_checked19 : B677Finite.witnessedModNextCheck 11 2000 18 64 18446744073709551557 row18 row19 transition19 = true :=
  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step19_checked
end B677FiniteHashGenerated
