import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part12_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part12_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part12_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part12_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part12_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part12_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part12_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part12_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash12_checked : B677Finite.allTree 17 0 hash12 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash12part_0 hash12part_16384) (B677Finite.allTree_join hash12part_32768 hash12part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash12part_65536 hash12part_81920) (B677Finite.allTree_join hash12part_98304 hash12part_114688)))
theorem step12_checked : B677Finite.allTree 17 0 step12 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step12part_0 step12part_16384) (B677Finite.allTree_join step12part_32768 step12part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step12part_65536 step12part_81920) (B677Finite.allTree_join step12part_98304 step12part_114688)))
theorem hash_checked12 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 12 64 row12 lookup12) = true := hash12_checked
theorem step_checked12 : B677Finite.modNextCheck 17 89693 11 64 18446744073709551557 row11 row12 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step12_checked
end B677FiniteHashGenerated
