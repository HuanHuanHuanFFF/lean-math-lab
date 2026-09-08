import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part03_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part03_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part03_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part03_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part03_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part03_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part03_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part03_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash3_checked : B677Finite.allTree 17 0 hash3 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash3part_0 hash3part_16384) (B677Finite.allTree_join hash3part_32768 hash3part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash3part_65536 hash3part_81920) (B677Finite.allTree_join hash3part_98304 hash3part_114688)))
theorem step3_checked : B677Finite.allTree 17 0 step3 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step3part_0 step3part_16384) (B677Finite.allTree_join step3part_32768 step3part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step3part_65536 step3part_81920) (B677Finite.allTree_join step3part_98304 step3part_114688)))
theorem hash_checked3 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 3 64 row3 lookup3) = true := hash3_checked
theorem step_checked3 : B677Finite.modNextCheck 17 89693 2 64 18446744073709551557 row2 row3 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step3_checked
end B677FiniteHashGenerated
