import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part09_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part09_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part09_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part09_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part09_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part09_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part09_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part09_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash9_checked : B677Finite.allTree 17 0 hash9 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash9part_0 hash9part_16384) (B677Finite.allTree_join hash9part_32768 hash9part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash9part_65536 hash9part_81920) (B677Finite.allTree_join hash9part_98304 hash9part_114688)))
theorem step9_checked : B677Finite.allTree 17 0 step9 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step9part_0 step9part_16384) (B677Finite.allTree_join step9part_32768 step9part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step9part_65536 step9part_81920) (B677Finite.allTree_join step9part_98304 step9part_114688)))
theorem hash_checked9 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 9 64 row9 lookup9) = true := hash9_checked
theorem step_checked9 : B677Finite.modNextCheck 17 89693 8 64 18446744073709551557 row8 row9 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step9_checked
end B677FiniteHashGenerated
