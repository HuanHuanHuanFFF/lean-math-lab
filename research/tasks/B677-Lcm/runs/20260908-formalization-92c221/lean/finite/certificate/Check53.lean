import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part53_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part53_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part53_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part53_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part53_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part53_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part53_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part53_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash53_checked : B677Finite.allTree 17 0 hash53 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash53part_0 hash53part_16384) (B677Finite.allTree_join hash53part_32768 hash53part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash53part_65536 hash53part_81920) (B677Finite.allTree_join hash53part_98304 hash53part_114688)))
theorem step53_checked : B677Finite.allTree 17 0 step53 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step53part_0 step53part_16384) (B677Finite.allTree_join step53part_32768 step53part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step53part_65536 step53part_81920) (B677Finite.allTree_join step53part_98304 step53part_114688)))
theorem hash_checked53 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 53 64 row53 lookup53) = true := hash53_checked
theorem step_checked53 : B677Finite.modNextCheck 17 89693 52 64 18446744073709551557 row52 row53 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step53_checked
end B677FiniteHashGenerated
