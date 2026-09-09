import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part13_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part13_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part13_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part13_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part13_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part13_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part13_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part13_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash13_checked : B677Finite.allTree 17 0 hash13 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash13part_0 hash13part_16384) (B677Finite.allTree_join hash13part_32768 hash13part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash13part_65536 hash13part_81920) (B677Finite.allTree_join hash13part_98304 hash13part_114688)))
theorem step13_checked : B677Finite.allTree 17 0 step13 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step13part_0 step13part_16384) (B677Finite.allTree_join step13part_32768 step13part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step13part_65536 step13part_81920) (B677Finite.allTree_join step13part_98304 step13part_114688)))
theorem hash_checked13 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 13 64 row13 lookup13) = true := hash13_checked
theorem step_checked13 : B677Finite.modNextCheck 17 89693 12 64 18446744073709551557 row12 row13 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step13_checked
end B677FiniteHashGenerated
