import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part58_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part58_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part58_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part58_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part58_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part58_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part58_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part58_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash58_checked : B677Finite.allTree 17 0 hash58 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash58part_0 hash58part_16384) (B677Finite.allTree_join hash58part_32768 hash58part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash58part_65536 hash58part_81920) (B677Finite.allTree_join hash58part_98304 hash58part_114688)))
theorem step58_checked : B677Finite.allTree 17 0 step58 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step58part_0 step58part_16384) (B677Finite.allTree_join step58part_32768 step58part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step58part_65536 step58part_81920) (B677Finite.allTree_join step58part_98304 step58part_114688)))
theorem hash_checked58 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 58 64 row58 lookup58) = true := hash58_checked
theorem step_checked58 : B677Finite.modNextCheck 17 89693 57 64 18446744073709551557 row57 row58 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step58_checked
end B677FiniteHashGenerated
