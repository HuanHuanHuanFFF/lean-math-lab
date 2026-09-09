import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part06_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part06_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part06_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part06_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part06_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part06_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part06_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part06_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash6_checked : B677Finite.allTree 17 0 hash6 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash6part_0 hash6part_16384) (B677Finite.allTree_join hash6part_32768 hash6part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash6part_65536 hash6part_81920) (B677Finite.allTree_join hash6part_98304 hash6part_114688)))
theorem step6_checked : B677Finite.allTree 17 0 step6 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step6part_0 step6part_16384) (B677Finite.allTree_join step6part_32768 step6part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step6part_65536 step6part_81920) (B677Finite.allTree_join step6part_98304 step6part_114688)))
theorem hash_checked6 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 6 64 row6 lookup6) = true := hash6_checked
theorem step_checked6 : B677Finite.modNextCheck 17 89693 5 64 18446744073709551557 row5 row6 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step6_checked
end B677FiniteHashGenerated
