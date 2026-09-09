import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part55_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part55_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part55_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part55_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part55_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part55_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part55_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part55_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash55_checked : B677Finite.allTree 17 0 hash55 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash55part_0 hash55part_16384) (B677Finite.allTree_join hash55part_32768 hash55part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash55part_65536 hash55part_81920) (B677Finite.allTree_join hash55part_98304 hash55part_114688)))
theorem step55_checked : B677Finite.allTree 17 0 step55 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step55part_0 step55part_16384) (B677Finite.allTree_join step55part_32768 step55part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step55part_65536 step55part_81920) (B677Finite.allTree_join step55part_98304 step55part_114688)))
theorem hash_checked55 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 55 64 row55 lookup55) = true := hash55_checked
theorem step_checked55 : B677Finite.modNextCheck 17 89693 54 64 18446744073709551557 row54 row55 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step55_checked
end B677FiniteHashGenerated
