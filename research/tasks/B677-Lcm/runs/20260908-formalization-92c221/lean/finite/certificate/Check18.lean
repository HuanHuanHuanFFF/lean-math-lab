import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part18_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part18_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part18_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part18_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part18_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part18_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part18_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part18_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash18_checked : B677Finite.allTree 17 0 hash18 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash18part_0 hash18part_16384) (B677Finite.allTree_join hash18part_32768 hash18part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash18part_65536 hash18part_81920) (B677Finite.allTree_join hash18part_98304 hash18part_114688)))
theorem step18_checked : B677Finite.allTree 17 0 step18 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step18part_0 step18part_16384) (B677Finite.allTree_join step18part_32768 step18part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step18part_65536 step18part_81920) (B677Finite.allTree_join step18part_98304 step18part_114688)))
theorem hash_checked18 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 18 64 row18 lookup18) = true := hash18_checked
theorem step_checked18 : B677Finite.modNextCheck 17 89693 17 64 18446744073709551557 row17 row18 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step18_checked
end B677FiniteHashGenerated
