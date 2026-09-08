import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part04_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part04_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part04_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part04_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part04_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part04_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part04_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part04_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash4_checked : B677Finite.allTree 17 0 hash4 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash4part_0 hash4part_16384) (B677Finite.allTree_join hash4part_32768 hash4part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash4part_65536 hash4part_81920) (B677Finite.allTree_join hash4part_98304 hash4part_114688)))
theorem step4_checked : B677Finite.allTree 17 0 step4 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step4part_0 step4part_16384) (B677Finite.allTree_join step4part_32768 step4part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step4part_65536 step4part_81920) (B677Finite.allTree_join step4part_98304 step4part_114688)))
theorem hash_checked4 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 4 64 row4 lookup4) = true := hash4_checked
theorem step_checked4 : B677Finite.modNextCheck 17 89693 3 64 18446744073709551557 row3 row4 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step4_checked
end B677FiniteHashGenerated
