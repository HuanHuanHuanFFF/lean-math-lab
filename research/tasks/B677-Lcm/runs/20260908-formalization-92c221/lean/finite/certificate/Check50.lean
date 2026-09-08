import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part50_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part50_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part50_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part50_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part50_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part50_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part50_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part50_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash50_checked : B677Finite.allTree 17 0 hash50 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash50part_0 hash50part_16384) (B677Finite.allTree_join hash50part_32768 hash50part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash50part_65536 hash50part_81920) (B677Finite.allTree_join hash50part_98304 hash50part_114688)))
theorem step50_checked : B677Finite.allTree 17 0 step50 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step50part_0 step50part_16384) (B677Finite.allTree_join step50part_32768 step50part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step50part_65536 step50part_81920) (B677Finite.allTree_join step50part_98304 step50part_114688)))
theorem hash_checked50 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 50 64 row50 lookup50) = true := hash50_checked
theorem step_checked50 : B677Finite.modNextCheck 17 89693 49 64 18446744073709551557 row49 row50 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step50_checked
end B677FiniteHashGenerated
