import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part02_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part02_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part02_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part02_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part02_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part02_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part02_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part02_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash2_checked : B677Finite.allTree 17 0 hash2 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash2part_0 hash2part_16384) (B677Finite.allTree_join hash2part_32768 hash2part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash2part_65536 hash2part_81920) (B677Finite.allTree_join hash2part_98304 hash2part_114688)))
theorem step2_checked : B677Finite.allTree 17 0 step2 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step2part_0 step2part_16384) (B677Finite.allTree_join step2part_32768 step2part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step2part_65536 step2part_81920) (B677Finite.allTree_join step2part_98304 step2part_114688)))
theorem hash_checked2 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 2 64 row2 lookup2) = true := hash2_checked
theorem step_checked2 : B677Finite.modNextCheck 17 89693 1 64 18446744073709551557 row1 row2 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step2_checked
end B677FiniteHashGenerated
