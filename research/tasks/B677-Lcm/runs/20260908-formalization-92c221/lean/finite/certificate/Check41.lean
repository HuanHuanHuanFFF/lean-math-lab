import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part41_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part41_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part41_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part41_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part41_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part41_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part41_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part41_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash41_checked : B677Finite.allTree 17 0 hash41 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash41part_0 hash41part_16384) (B677Finite.allTree_join hash41part_32768 hash41part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash41part_65536 hash41part_81920) (B677Finite.allTree_join hash41part_98304 hash41part_114688)))
theorem step41_checked : B677Finite.allTree 17 0 step41 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step41part_0 step41part_16384) (B677Finite.allTree_join step41part_32768 step41part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step41part_65536 step41part_81920) (B677Finite.allTree_join step41part_98304 step41part_114688)))
theorem hash_checked41 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 41 64 row41 lookup41) = true := hash41_checked
theorem step_checked41 : B677Finite.modNextCheck 17 89693 40 64 18446744073709551557 row40 row41 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step41_checked
end B677FiniteHashGenerated
