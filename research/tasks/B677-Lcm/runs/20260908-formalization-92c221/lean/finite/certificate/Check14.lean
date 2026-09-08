import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part14_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part14_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part14_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part14_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part14_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part14_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part14_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part14_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash14_checked : B677Finite.allTree 17 0 hash14 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash14part_0 hash14part_16384) (B677Finite.allTree_join hash14part_32768 hash14part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash14part_65536 hash14part_81920) (B677Finite.allTree_join hash14part_98304 hash14part_114688)))
theorem step14_checked : B677Finite.allTree 17 0 step14 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step14part_0 step14part_16384) (B677Finite.allTree_join step14part_32768 step14part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step14part_65536 step14part_81920) (B677Finite.allTree_join step14part_98304 step14part_114688)))
theorem hash_checked14 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 14 64 row14 lookup14) = true := hash14_checked
theorem step_checked14 : B677Finite.modNextCheck 17 89693 13 64 18446744073709551557 row13 row14 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step14_checked
end B677FiniteHashGenerated
