import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part48_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part48_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part48_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part48_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part48_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part48_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part48_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part48_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash48_checked : B677Finite.allTree 17 0 hash48 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash48part_0 hash48part_16384) (B677Finite.allTree_join hash48part_32768 hash48part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash48part_65536 hash48part_81920) (B677Finite.allTree_join hash48part_98304 hash48part_114688)))
theorem step48_checked : B677Finite.allTree 17 0 step48 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step48part_0 step48part_16384) (B677Finite.allTree_join step48part_32768 step48part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step48part_65536 step48part_81920) (B677Finite.allTree_join step48part_98304 step48part_114688)))
theorem hash_checked48 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 48 64 row48 lookup48) = true := hash48_checked
theorem step_checked48 : B677Finite.modNextCheck 17 89693 47 64 18446744073709551557 row47 row48 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step48_checked
end B677FiniteHashGenerated
