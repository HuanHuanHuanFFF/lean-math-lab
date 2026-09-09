import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part05_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part05_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part05_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part05_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part05_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part05_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part05_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part05_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash5_checked : B677Finite.allTree 17 0 hash5 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash5part_0 hash5part_16384) (B677Finite.allTree_join hash5part_32768 hash5part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash5part_65536 hash5part_81920) (B677Finite.allTree_join hash5part_98304 hash5part_114688)))
theorem step5_checked : B677Finite.allTree 17 0 step5 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step5part_0 step5part_16384) (B677Finite.allTree_join step5part_32768 step5part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step5part_65536 step5part_81920) (B677Finite.allTree_join step5part_98304 step5part_114688)))
theorem hash_checked5 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 5 64 row5 lookup5) = true := hash5_checked
theorem step_checked5 : B677Finite.modNextCheck 17 89693 4 64 18446744073709551557 row4 row5 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step5_checked
end B677FiniteHashGenerated
