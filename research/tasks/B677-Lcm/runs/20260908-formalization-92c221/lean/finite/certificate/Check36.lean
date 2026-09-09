import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part36_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part36_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part36_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part36_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part36_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part36_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part36_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part36_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash36_checked : B677Finite.allTree 17 0 hash36 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash36part_0 hash36part_16384) (B677Finite.allTree_join hash36part_32768 hash36part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash36part_65536 hash36part_81920) (B677Finite.allTree_join hash36part_98304 hash36part_114688)))
theorem step36_checked : B677Finite.allTree 17 0 step36 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step36part_0 step36part_16384) (B677Finite.allTree_join step36part_32768 step36part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step36part_65536 step36part_81920) (B677Finite.allTree_join step36part_98304 step36part_114688)))
theorem hash_checked36 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 36 64 row36 lookup36) = true := hash36_checked
theorem step_checked36 : B677Finite.modNextCheck 17 89693 35 64 18446744073709551557 row35 row36 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step36_checked
end B677FiniteHashGenerated
