import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part51_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part51_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part51_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part51_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part51_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part51_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part51_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part51_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash51_checked : B677Finite.allTree 17 0 hash51 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash51part_0 hash51part_16384) (B677Finite.allTree_join hash51part_32768 hash51part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash51part_65536 hash51part_81920) (B677Finite.allTree_join hash51part_98304 hash51part_114688)))
theorem step51_checked : B677Finite.allTree 17 0 step51 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step51part_0 step51part_16384) (B677Finite.allTree_join step51part_32768 step51part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step51part_65536 step51part_81920) (B677Finite.allTree_join step51part_98304 step51part_114688)))
theorem hash_checked51 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 51 64 row51 lookup51) = true := hash51_checked
theorem step_checked51 : B677Finite.modNextCheck 17 89693 50 64 18446744073709551557 row50 row51 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step51_checked
end B677FiniteHashGenerated
