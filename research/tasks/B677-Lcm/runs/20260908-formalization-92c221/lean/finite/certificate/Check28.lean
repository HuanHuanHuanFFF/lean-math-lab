import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part28_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part28_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part28_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part28_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part28_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part28_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part28_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part28_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash28_checked : B677Finite.allTree 17 0 hash28 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash28part_0 hash28part_16384) (B677Finite.allTree_join hash28part_32768 hash28part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash28part_65536 hash28part_81920) (B677Finite.allTree_join hash28part_98304 hash28part_114688)))
theorem step28_checked : B677Finite.allTree 17 0 step28 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step28part_0 step28part_16384) (B677Finite.allTree_join step28part_32768 step28part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step28part_65536 step28part_81920) (B677Finite.allTree_join step28part_98304 step28part_114688)))
theorem hash_checked28 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 28 64 row28 lookup28) = true := hash28_checked
theorem step_checked28 : B677Finite.modNextCheck 17 89693 27 64 18446744073709551557 row27 row28 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step28_checked
end B677FiniteHashGenerated
