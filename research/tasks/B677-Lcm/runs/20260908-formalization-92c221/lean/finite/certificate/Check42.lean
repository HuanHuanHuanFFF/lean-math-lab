import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part42_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part42_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part42_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part42_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part42_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part42_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part42_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part42_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash42_checked : B677Finite.allTree 17 0 hash42 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash42part_0 hash42part_16384) (B677Finite.allTree_join hash42part_32768 hash42part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash42part_65536 hash42part_81920) (B677Finite.allTree_join hash42part_98304 hash42part_114688)))
theorem step42_checked : B677Finite.allTree 17 0 step42 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step42part_0 step42part_16384) (B677Finite.allTree_join step42part_32768 step42part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step42part_65536 step42part_81920) (B677Finite.allTree_join step42part_98304 step42part_114688)))
theorem hash_checked42 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 42 64 row42 lookup42) = true := hash42_checked
theorem step_checked42 : B677Finite.modNextCheck 17 89693 41 64 18446744073709551557 row41 row42 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step42_checked
end B677FiniteHashGenerated
