import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part54_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part54_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part54_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part54_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part54_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part54_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part54_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part54_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash54_checked : B677Finite.allTree 17 0 hash54 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash54part_0 hash54part_16384) (B677Finite.allTree_join hash54part_32768 hash54part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash54part_65536 hash54part_81920) (B677Finite.allTree_join hash54part_98304 hash54part_114688)))
theorem step54_checked : B677Finite.allTree 17 0 step54 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step54part_0 step54part_16384) (B677Finite.allTree_join step54part_32768 step54part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step54part_65536 step54part_81920) (B677Finite.allTree_join step54part_98304 step54part_114688)))
theorem hash_checked54 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 54 64 row54 lookup54) = true := hash54_checked
theorem step_checked54 : B677Finite.modNextCheck 17 89693 53 64 18446744073709551557 row53 row54 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step54_checked
end B677FiniteHashGenerated
