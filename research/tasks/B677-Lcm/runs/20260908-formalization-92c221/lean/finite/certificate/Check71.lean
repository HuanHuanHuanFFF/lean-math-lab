import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part71_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part71_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part71_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part71_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part71_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part71_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part71_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part71_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash71_checked : B677Finite.allTree 17 0 hash71 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash71part_0 hash71part_16384) (B677Finite.allTree_join hash71part_32768 hash71part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash71part_65536 hash71part_81920) (B677Finite.allTree_join hash71part_98304 hash71part_114688)))
theorem step71_checked : B677Finite.allTree 17 0 step71 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step71part_0 step71part_16384) (B677Finite.allTree_join step71part_32768 step71part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step71part_65536 step71part_81920) (B677Finite.allTree_join step71part_98304 step71part_114688)))
theorem hash_checked71 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 71 64 row71 lookup71) = true := hash71_checked
theorem step_checked71 : B677Finite.modNextCheck 17 89693 70 64 18446744073709551557 row70 row71 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step71_checked
end B677FiniteHashGenerated
