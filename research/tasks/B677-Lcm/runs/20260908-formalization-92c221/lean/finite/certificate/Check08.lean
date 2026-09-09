import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part08_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part08_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part08_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part08_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part08_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part08_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part08_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part08_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash8_checked : B677Finite.allTree 17 0 hash8 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash8part_0 hash8part_16384) (B677Finite.allTree_join hash8part_32768 hash8part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash8part_65536 hash8part_81920) (B677Finite.allTree_join hash8part_98304 hash8part_114688)))
theorem step8_checked : B677Finite.allTree 17 0 step8 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step8part_0 step8part_16384) (B677Finite.allTree_join step8part_32768 step8part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step8part_65536 step8part_81920) (B677Finite.allTree_join step8part_98304 step8part_114688)))
theorem hash_checked8 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 8 64 row8 lookup8) = true := hash8_checked
theorem step_checked8 : B677Finite.modNextCheck 17 89693 7 64 18446744073709551557 row7 row8 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step8_checked
end B677FiniteHashGenerated
