import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part15_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part15_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part15_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part15_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part15_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part15_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part15_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part15_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash15_checked : B677Finite.allTree 17 0 hash15 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash15part_0 hash15part_16384) (B677Finite.allTree_join hash15part_32768 hash15part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash15part_65536 hash15part_81920) (B677Finite.allTree_join hash15part_98304 hash15part_114688)))
theorem step15_checked : B677Finite.allTree 17 0 step15 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step15part_0 step15part_16384) (B677Finite.allTree_join step15part_32768 step15part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step15part_65536 step15part_81920) (B677Finite.allTree_join step15part_98304 step15part_114688)))
theorem hash_checked15 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 15 64 row15 lookup15) = true := hash15_checked
theorem step_checked15 : B677Finite.modNextCheck 17 89693 14 64 18446744073709551557 row14 row15 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step15_checked
end B677FiniteHashGenerated
