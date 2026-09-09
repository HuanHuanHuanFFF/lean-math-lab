import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part23_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part23_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part23_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part23_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part23_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part23_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part23_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part23_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash23_checked : B677Finite.allTree 17 0 hash23 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash23part_0 hash23part_16384) (B677Finite.allTree_join hash23part_32768 hash23part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash23part_65536 hash23part_81920) (B677Finite.allTree_join hash23part_98304 hash23part_114688)))
theorem step23_checked : B677Finite.allTree 17 0 step23 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step23part_0 step23part_16384) (B677Finite.allTree_join step23part_32768 step23part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step23part_65536 step23part_81920) (B677Finite.allTree_join step23part_98304 step23part_114688)))
theorem hash_checked23 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 23 64 row23 lookup23) = true := hash23_checked
theorem step_checked23 : B677Finite.modNextCheck 17 89693 22 64 18446744073709551557 row22 row23 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step23_checked
end B677FiniteHashGenerated
