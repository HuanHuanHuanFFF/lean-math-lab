import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part70_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part70_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part70_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part70_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part70_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part70_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part70_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part70_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash70_checked : B677Finite.allTree 17 0 hash70 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash70part_0 hash70part_16384) (B677Finite.allTree_join hash70part_32768 hash70part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash70part_65536 hash70part_81920) (B677Finite.allTree_join hash70part_98304 hash70part_114688)))
theorem step70_checked : B677Finite.allTree 17 0 step70 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step70part_0 step70part_16384) (B677Finite.allTree_join step70part_32768 step70part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step70part_65536 step70part_81920) (B677Finite.allTree_join step70part_98304 step70part_114688)))
theorem hash_checked70 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 70 64 row70 lookup70) = true := hash70_checked
theorem step_checked70 : B677Finite.modNextCheck 17 89693 69 64 18446744073709551557 row69 row70 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step70_checked
end B677FiniteHashGenerated
