import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part25_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part25_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part25_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part25_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part25_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part25_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part25_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part25_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash25_checked : B677Finite.allTree 17 0 hash25 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash25part_0 hash25part_16384) (B677Finite.allTree_join hash25part_32768 hash25part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash25part_65536 hash25part_81920) (B677Finite.allTree_join hash25part_98304 hash25part_114688)))
theorem step25_checked : B677Finite.allTree 17 0 step25 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step25part_0 step25part_16384) (B677Finite.allTree_join step25part_32768 step25part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step25part_65536 step25part_81920) (B677Finite.allTree_join step25part_98304 step25part_114688)))
theorem hash_checked25 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 25 64 row25 lookup25) = true := hash25_checked
theorem step_checked25 : B677Finite.modNextCheck 17 89693 24 64 18446744073709551557 row24 row25 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step25_checked
end B677FiniteHashGenerated
