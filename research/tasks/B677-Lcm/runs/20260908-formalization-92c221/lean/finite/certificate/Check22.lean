import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part22_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part22_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part22_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part22_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part22_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part22_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part22_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part22_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash22_checked : B677Finite.allTree 17 0 hash22 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash22part_0 hash22part_16384) (B677Finite.allTree_join hash22part_32768 hash22part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash22part_65536 hash22part_81920) (B677Finite.allTree_join hash22part_98304 hash22part_114688)))
theorem step22_checked : B677Finite.allTree 17 0 step22 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step22part_0 step22part_16384) (B677Finite.allTree_join step22part_32768 step22part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step22part_65536 step22part_81920) (B677Finite.allTree_join step22part_98304 step22part_114688)))
theorem hash_checked22 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 22 64 row22 lookup22) = true := hash22_checked
theorem step_checked22 : B677Finite.modNextCheck 17 89693 21 64 18446744073709551557 row21 row22 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step22_checked
end B677FiniteHashGenerated
