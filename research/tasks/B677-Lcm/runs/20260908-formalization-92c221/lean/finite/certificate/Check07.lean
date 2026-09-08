import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part07_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part07_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part07_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part07_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part07_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part07_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part07_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part07_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash7_checked : B677Finite.allTree 17 0 hash7 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash7part_0 hash7part_16384) (B677Finite.allTree_join hash7part_32768 hash7part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash7part_65536 hash7part_81920) (B677Finite.allTree_join hash7part_98304 hash7part_114688)))
theorem step7_checked : B677Finite.allTree 17 0 step7 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step7part_0 step7part_16384) (B677Finite.allTree_join step7part_32768 step7part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step7part_65536 step7part_81920) (B677Finite.allTree_join step7part_98304 step7part_114688)))
theorem hash_checked7 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 7 64 row7 lookup7) = true := hash7_checked
theorem step_checked7 : B677Finite.modNextCheck 17 89693 6 64 18446744073709551557 row6 row7 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step7_checked
end B677FiniteHashGenerated
