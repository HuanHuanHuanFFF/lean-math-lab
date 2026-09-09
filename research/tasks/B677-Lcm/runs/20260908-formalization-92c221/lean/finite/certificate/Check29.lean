import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part29_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part29_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part29_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part29_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part29_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part29_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part29_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part29_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash29_checked : B677Finite.allTree 17 0 hash29 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash29part_0 hash29part_16384) (B677Finite.allTree_join hash29part_32768 hash29part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash29part_65536 hash29part_81920) (B677Finite.allTree_join hash29part_98304 hash29part_114688)))
theorem step29_checked : B677Finite.allTree 17 0 step29 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step29part_0 step29part_16384) (B677Finite.allTree_join step29part_32768 step29part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step29part_65536 step29part_81920) (B677Finite.allTree_join step29part_98304 step29part_114688)))
theorem hash_checked29 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 29 64 row29 lookup29) = true := hash29_checked
theorem step_checked29 : B677Finite.modNextCheck 17 89693 28 64 18446744073709551557 row28 row29 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step29_checked
end B677FiniteHashGenerated
