import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part45_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part45_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part45_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part45_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part45_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part45_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part45_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part45_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash45_checked : B677Finite.allTree 17 0 hash45 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash45part_0 hash45part_16384) (B677Finite.allTree_join hash45part_32768 hash45part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash45part_65536 hash45part_81920) (B677Finite.allTree_join hash45part_98304 hash45part_114688)))
theorem step45_checked : B677Finite.allTree 17 0 step45 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step45part_0 step45part_16384) (B677Finite.allTree_join step45part_32768 step45part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step45part_65536 step45part_81920) (B677Finite.allTree_join step45part_98304 step45part_114688)))
theorem hash_checked45 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 45 64 row45 lookup45) = true := hash45_checked
theorem step_checked45 : B677Finite.modNextCheck 17 89693 44 64 18446744073709551557 row44 row45 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step45_checked
end B677FiniteHashGenerated
