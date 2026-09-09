import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part47_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part47_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part47_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part47_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part47_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part47_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part47_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part47_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash47_checked : B677Finite.allTree 17 0 hash47 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash47part_0 hash47part_16384) (B677Finite.allTree_join hash47part_32768 hash47part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash47part_65536 hash47part_81920) (B677Finite.allTree_join hash47part_98304 hash47part_114688)))
theorem step47_checked : B677Finite.allTree 17 0 step47 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step47part_0 step47part_16384) (B677Finite.allTree_join step47part_32768 step47part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step47part_65536 step47part_81920) (B677Finite.allTree_join step47part_98304 step47part_114688)))
theorem hash_checked47 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 47 64 row47 lookup47) = true := hash47_checked
theorem step_checked47 : B677Finite.modNextCheck 17 89693 46 64 18446744073709551557 row46 row47 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step47_checked
end B677FiniteHashGenerated
