import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part46_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part46_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part46_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part46_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part46_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part46_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part46_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part46_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash46_checked : B677Finite.allTree 17 0 hash46 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash46part_0 hash46part_16384) (B677Finite.allTree_join hash46part_32768 hash46part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash46part_65536 hash46part_81920) (B677Finite.allTree_join hash46part_98304 hash46part_114688)))
theorem step46_checked : B677Finite.allTree 17 0 step46 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step46part_0 step46part_16384) (B677Finite.allTree_join step46part_32768 step46part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step46part_65536 step46part_81920) (B677Finite.allTree_join step46part_98304 step46part_114688)))
theorem hash_checked46 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 46 64 row46 lookup46) = true := hash46_checked
theorem step_checked46 : B677Finite.modNextCheck 17 89693 45 64 18446744073709551557 row45 row46 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step46_checked
end B677FiniteHashGenerated
