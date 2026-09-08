import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part33_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part33_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part33_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part33_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part33_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part33_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part33_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part33_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash33_checked : B677Finite.allTree 17 0 hash33 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash33part_0 hash33part_16384) (B677Finite.allTree_join hash33part_32768 hash33part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash33part_65536 hash33part_81920) (B677Finite.allTree_join hash33part_98304 hash33part_114688)))
theorem step33_checked : B677Finite.allTree 17 0 step33 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step33part_0 step33part_16384) (B677Finite.allTree_join step33part_32768 step33part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step33part_65536 step33part_81920) (B677Finite.allTree_join step33part_98304 step33part_114688)))
theorem hash_checked33 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 33 64 row33 lookup33) = true := hash33_checked
theorem step_checked33 : B677Finite.modNextCheck 17 89693 32 64 18446744073709551557 row32 row33 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step33_checked
end B677FiniteHashGenerated
