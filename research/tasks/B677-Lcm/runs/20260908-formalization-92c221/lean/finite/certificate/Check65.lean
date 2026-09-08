import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part65_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part65_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part65_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part65_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part65_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part65_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part65_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part65_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash65_checked : B677Finite.allTree 17 0 hash65 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash65part_0 hash65part_16384) (B677Finite.allTree_join hash65part_32768 hash65part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash65part_65536 hash65part_81920) (B677Finite.allTree_join hash65part_98304 hash65part_114688)))
theorem step65_checked : B677Finite.allTree 17 0 step65 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step65part_0 step65part_16384) (B677Finite.allTree_join step65part_32768 step65part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step65part_65536 step65part_81920) (B677Finite.allTree_join step65part_98304 step65part_114688)))
theorem hash_checked65 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 65 64 row65 lookup65) = true := hash65_checked
theorem step_checked65 : B677Finite.modNextCheck 17 89693 64 64 18446744073709551557 row64 row65 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step65_checked
end B677FiniteHashGenerated
