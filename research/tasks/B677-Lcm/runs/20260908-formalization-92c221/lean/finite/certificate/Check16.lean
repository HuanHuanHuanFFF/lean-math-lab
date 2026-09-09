import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part16_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part16_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part16_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part16_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part16_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part16_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part16_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part16_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash16_checked : B677Finite.allTree 17 0 hash16 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash16part_0 hash16part_16384) (B677Finite.allTree_join hash16part_32768 hash16part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash16part_65536 hash16part_81920) (B677Finite.allTree_join hash16part_98304 hash16part_114688)))
theorem step16_checked : B677Finite.allTree 17 0 step16 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step16part_0 step16part_16384) (B677Finite.allTree_join step16part_32768 step16part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step16part_65536 step16part_81920) (B677Finite.allTree_join step16part_98304 step16part_114688)))
theorem hash_checked16 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 16 64 row16 lookup16) = true := hash16_checked
theorem step_checked16 : B677Finite.modNextCheck 17 89693 15 64 18446744073709551557 row15 row16 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step16_checked
end B677FiniteHashGenerated
