import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part43_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part43_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part43_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part43_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part43_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part43_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part43_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part43_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash43_checked : B677Finite.allTree 17 0 hash43 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash43part_0 hash43part_16384) (B677Finite.allTree_join hash43part_32768 hash43part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash43part_65536 hash43part_81920) (B677Finite.allTree_join hash43part_98304 hash43part_114688)))
theorem step43_checked : B677Finite.allTree 17 0 step43 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step43part_0 step43part_16384) (B677Finite.allTree_join step43part_32768 step43part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step43part_65536 step43part_81920) (B677Finite.allTree_join step43part_98304 step43part_114688)))
theorem hash_checked43 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 43 64 row43 lookup43) = true := hash43_checked
theorem step_checked43 : B677Finite.modNextCheck 17 89693 42 64 18446744073709551557 row42 row43 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step43_checked
end B677FiniteHashGenerated
