import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part38_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part38_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part38_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part38_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part38_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part38_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part38_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part38_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash38_checked : B677Finite.allTree 17 0 hash38 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash38part_0 hash38part_16384) (B677Finite.allTree_join hash38part_32768 hash38part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash38part_65536 hash38part_81920) (B677Finite.allTree_join hash38part_98304 hash38part_114688)))
theorem step38_checked : B677Finite.allTree 17 0 step38 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step38part_0 step38part_16384) (B677Finite.allTree_join step38part_32768 step38part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step38part_65536 step38part_81920) (B677Finite.allTree_join step38part_98304 step38part_114688)))
theorem hash_checked38 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 38 64 row38 lookup38) = true := hash38_checked
theorem step_checked38 : B677Finite.modNextCheck 17 89693 37 64 18446744073709551557 row37 row38 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step38_checked
end B677FiniteHashGenerated
