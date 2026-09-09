import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part44_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part44_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part44_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part44_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part44_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part44_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part44_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part44_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash44_checked : B677Finite.allTree 17 0 hash44 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash44part_0 hash44part_16384) (B677Finite.allTree_join hash44part_32768 hash44part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash44part_65536 hash44part_81920) (B677Finite.allTree_join hash44part_98304 hash44part_114688)))
theorem step44_checked : B677Finite.allTree 17 0 step44 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step44part_0 step44part_16384) (B677Finite.allTree_join step44part_32768 step44part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step44part_65536 step44part_81920) (B677Finite.allTree_join step44part_98304 step44part_114688)))
theorem hash_checked44 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 44 64 row44 lookup44) = true := hash44_checked
theorem step_checked44 : B677Finite.modNextCheck 17 89693 43 64 18446744073709551557 row43 row44 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step44_checked
end B677FiniteHashGenerated
