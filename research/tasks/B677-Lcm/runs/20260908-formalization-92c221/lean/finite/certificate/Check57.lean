import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part57_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part57_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part57_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part57_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part57_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part57_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part57_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part57_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash57_checked : B677Finite.allTree 17 0 hash57 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash57part_0 hash57part_16384) (B677Finite.allTree_join hash57part_32768 hash57part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash57part_65536 hash57part_81920) (B677Finite.allTree_join hash57part_98304 hash57part_114688)))
theorem step57_checked : B677Finite.allTree 17 0 step57 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step57part_0 step57part_16384) (B677Finite.allTree_join step57part_32768 step57part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step57part_65536 step57part_81920) (B677Finite.allTree_join step57part_98304 step57part_114688)))
theorem hash_checked57 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 57 64 row57 lookup57) = true := hash57_checked
theorem step_checked57 : B677Finite.modNextCheck 17 89693 56 64 18446744073709551557 row56 row57 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step57_checked
end B677FiniteHashGenerated
