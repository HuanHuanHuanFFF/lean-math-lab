import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part56_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part56_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part56_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part56_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part56_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part56_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part56_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part56_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash56_checked : B677Finite.allTree 17 0 hash56 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash56part_0 hash56part_16384) (B677Finite.allTree_join hash56part_32768 hash56part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash56part_65536 hash56part_81920) (B677Finite.allTree_join hash56part_98304 hash56part_114688)))
theorem step56_checked : B677Finite.allTree 17 0 step56 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step56part_0 step56part_16384) (B677Finite.allTree_join step56part_32768 step56part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step56part_65536 step56part_81920) (B677Finite.allTree_join step56part_98304 step56part_114688)))
theorem hash_checked56 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 56 64 row56 lookup56) = true := hash56_checked
theorem step_checked56 : B677Finite.modNextCheck 17 89693 55 64 18446744073709551557 row55 row56 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step56_checked
end B677FiniteHashGenerated
