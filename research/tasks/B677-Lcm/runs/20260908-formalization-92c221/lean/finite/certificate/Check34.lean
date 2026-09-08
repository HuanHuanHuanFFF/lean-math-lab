import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part34_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part34_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part34_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part34_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part34_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part34_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part34_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part34_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash34_checked : B677Finite.allTree 17 0 hash34 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash34part_0 hash34part_16384) (B677Finite.allTree_join hash34part_32768 hash34part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash34part_65536 hash34part_81920) (B677Finite.allTree_join hash34part_98304 hash34part_114688)))
theorem step34_checked : B677Finite.allTree 17 0 step34 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step34part_0 step34part_16384) (B677Finite.allTree_join step34part_32768 step34part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step34part_65536 step34part_81920) (B677Finite.allTree_join step34part_98304 step34part_114688)))
theorem hash_checked34 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 34 64 row34 lookup34) = true := hash34_checked
theorem step_checked34 : B677Finite.modNextCheck 17 89693 33 64 18446744073709551557 row33 row34 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step34_checked
end B677FiniteHashGenerated
