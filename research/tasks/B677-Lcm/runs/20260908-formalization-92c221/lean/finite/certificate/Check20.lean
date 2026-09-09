import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part20_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part20_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part20_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part20_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part20_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part20_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part20_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part20_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash20_checked : B677Finite.allTree 17 0 hash20 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash20part_0 hash20part_16384) (B677Finite.allTree_join hash20part_32768 hash20part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash20part_65536 hash20part_81920) (B677Finite.allTree_join hash20part_98304 hash20part_114688)))
theorem step20_checked : B677Finite.allTree 17 0 step20 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step20part_0 step20part_16384) (B677Finite.allTree_join step20part_32768 step20part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step20part_65536 step20part_81920) (B677Finite.allTree_join step20part_98304 step20part_114688)))
theorem hash_checked20 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 20 64 row20 lookup20) = true := hash20_checked
theorem step_checked20 : B677Finite.modNextCheck 17 89693 19 64 18446744073709551557 row19 row20 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step20_checked
end B677FiniteHashGenerated
