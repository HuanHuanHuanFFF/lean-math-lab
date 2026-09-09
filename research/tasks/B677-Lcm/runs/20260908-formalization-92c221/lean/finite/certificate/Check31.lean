import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part31_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part31_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part31_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part31_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part31_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part31_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part31_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part31_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash31_checked : B677Finite.allTree 17 0 hash31 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash31part_0 hash31part_16384) (B677Finite.allTree_join hash31part_32768 hash31part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash31part_65536 hash31part_81920) (B677Finite.allTree_join hash31part_98304 hash31part_114688)))
theorem step31_checked : B677Finite.allTree 17 0 step31 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step31part_0 step31part_16384) (B677Finite.allTree_join step31part_32768 step31part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step31part_65536 step31part_81920) (B677Finite.allTree_join step31part_98304 step31part_114688)))
theorem hash_checked31 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 31 64 row31 lookup31) = true := hash31_checked
theorem step_checked31 : B677Finite.modNextCheck 17 89693 30 64 18446744073709551557 row30 row31 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step31_checked
end B677FiniteHashGenerated
