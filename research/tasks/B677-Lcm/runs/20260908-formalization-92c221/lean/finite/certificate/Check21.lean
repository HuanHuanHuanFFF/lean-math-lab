import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part21_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part21_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part21_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part21_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part21_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part21_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part21_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part21_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash21_checked : B677Finite.allTree 17 0 hash21 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash21part_0 hash21part_16384) (B677Finite.allTree_join hash21part_32768 hash21part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash21part_65536 hash21part_81920) (B677Finite.allTree_join hash21part_98304 hash21part_114688)))
theorem step21_checked : B677Finite.allTree 17 0 step21 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step21part_0 step21part_16384) (B677Finite.allTree_join step21part_32768 step21part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step21part_65536 step21part_81920) (B677Finite.allTree_join step21part_98304 step21part_114688)))
theorem hash_checked21 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 21 64 row21 lookup21) = true := hash21_checked
theorem step_checked21 : B677Finite.modNextCheck 17 89693 20 64 18446744073709551557 row20 row21 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step21_checked
end B677FiniteHashGenerated
