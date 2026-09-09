import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part01_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part01_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part01_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part01_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part01_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part01_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part01_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part01_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash1_checked : B677Finite.allTree 17 0 hash1 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash1part_0 hash1part_16384) (B677Finite.allTree_join hash1part_32768 hash1part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash1part_65536 hash1part_81920) (B677Finite.allTree_join hash1part_98304 hash1part_114688)))
theorem step1_checked : B677Finite.allTree 17 0 step1 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step1part_0 step1part_16384) (B677Finite.allTree_join step1part_32768 step1part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step1part_65536 step1part_81920) (B677Finite.allTree_join step1part_98304 step1part_114688)))
theorem hash_checked1 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 1 64 row1 lookup1) = true := hash1_checked
theorem step_checked1 : B677Finite.modInitialCheck 17 89693 64 18446744073709551557 row1 = true :=
  B677Finite.modInitialCheck_of_parts (by decide +kernel) step1_checked
end B677FiniteHashGenerated
