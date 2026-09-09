import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part26_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part26_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part26_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part26_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part26_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part26_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part26_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part26_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash26_checked : B677Finite.allTree 17 0 hash26 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash26part_0 hash26part_16384) (B677Finite.allTree_join hash26part_32768 hash26part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash26part_65536 hash26part_81920) (B677Finite.allTree_join hash26part_98304 hash26part_114688)))
theorem step26_checked : B677Finite.allTree 17 0 step26 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step26part_0 step26part_16384) (B677Finite.allTree_join step26part_32768 step26part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step26part_65536 step26part_81920) (B677Finite.allTree_join step26part_98304 step26part_114688)))
theorem hash_checked26 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 26 64 row26 lookup26) = true := hash26_checked
theorem step_checked26 : B677Finite.modNextCheck 17 89693 25 64 18446744073709551557 row25 row26 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step26_checked
end B677FiniteHashGenerated
