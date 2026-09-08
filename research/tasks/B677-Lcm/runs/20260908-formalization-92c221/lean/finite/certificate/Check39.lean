import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part39_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part39_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part39_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part39_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part39_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part39_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part39_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part39_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash39_checked : B677Finite.allTree 17 0 hash39 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash39part_0 hash39part_16384) (B677Finite.allTree_join hash39part_32768 hash39part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash39part_65536 hash39part_81920) (B677Finite.allTree_join hash39part_98304 hash39part_114688)))
theorem step39_checked : B677Finite.allTree 17 0 step39 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step39part_0 step39part_16384) (B677Finite.allTree_join step39part_32768 step39part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step39part_65536 step39part_81920) (B677Finite.allTree_join step39part_98304 step39part_114688)))
theorem hash_checked39 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 39 64 row39 lookup39) = true := hash39_checked
theorem step_checked39 : B677Finite.modNextCheck 17 89693 38 64 18446744073709551557 row38 row39 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step39_checked
end B677FiniteHashGenerated
