import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part61_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part61_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part61_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part61_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part61_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part61_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part61_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part61_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash61_checked : B677Finite.allTree 17 0 hash61 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash61part_0 hash61part_16384) (B677Finite.allTree_join hash61part_32768 hash61part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash61part_65536 hash61part_81920) (B677Finite.allTree_join hash61part_98304 hash61part_114688)))
theorem step61_checked : B677Finite.allTree 17 0 step61 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step61part_0 step61part_16384) (B677Finite.allTree_join step61part_32768 step61part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step61part_65536 step61part_81920) (B677Finite.allTree_join step61part_98304 step61part_114688)))
theorem hash_checked61 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 61 64 row61 lookup61) = true := hash61_checked
theorem step_checked61 : B677Finite.modNextCheck 17 89693 60 64 18446744073709551557 row60 row61 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step61_checked
end B677FiniteHashGenerated
