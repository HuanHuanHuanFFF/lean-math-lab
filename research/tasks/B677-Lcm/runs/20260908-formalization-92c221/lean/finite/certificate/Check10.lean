import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part10_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part10_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part10_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part10_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part10_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part10_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part10_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part10_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash10_checked : B677Finite.allTree 17 0 hash10 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash10part_0 hash10part_16384) (B677Finite.allTree_join hash10part_32768 hash10part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash10part_65536 hash10part_81920) (B677Finite.allTree_join hash10part_98304 hash10part_114688)))
theorem step10_checked : B677Finite.allTree 17 0 step10 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step10part_0 step10part_16384) (B677Finite.allTree_join step10part_32768 step10part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step10part_65536 step10part_81920) (B677Finite.allTree_join step10part_98304 step10part_114688)))
theorem hash_checked10 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 10 64 row10 lookup10) = true := hash10_checked
theorem step_checked10 : B677Finite.modNextCheck 17 89693 9 64 18446744073709551557 row9 row10 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step10_checked
end B677FiniteHashGenerated
