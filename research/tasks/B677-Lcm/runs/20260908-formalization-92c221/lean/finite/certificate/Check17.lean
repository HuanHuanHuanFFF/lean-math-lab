import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part17_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part17_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part17_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part17_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part17_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part17_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part17_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part17_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash17_checked : B677Finite.allTree 17 0 hash17 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash17part_0 hash17part_16384) (B677Finite.allTree_join hash17part_32768 hash17part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash17part_65536 hash17part_81920) (B677Finite.allTree_join hash17part_98304 hash17part_114688)))
theorem step17_checked : B677Finite.allTree 17 0 step17 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step17part_0 step17part_16384) (B677Finite.allTree_join step17part_32768 step17part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step17part_65536 step17part_81920) (B677Finite.allTree_join step17part_98304 step17part_114688)))
theorem hash_checked17 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 17 64 row17 lookup17) = true := hash17_checked
theorem step_checked17 : B677Finite.modNextCheck 17 89693 16 64 18446744073709551557 row16 row17 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step17_checked
end B677FiniteHashGenerated
