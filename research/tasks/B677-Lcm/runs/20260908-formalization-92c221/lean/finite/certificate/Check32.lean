import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part32_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part32_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part32_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part32_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part32_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part32_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part32_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part32_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash32_checked : B677Finite.allTree 17 0 hash32 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash32part_0 hash32part_16384) (B677Finite.allTree_join hash32part_32768 hash32part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash32part_65536 hash32part_81920) (B677Finite.allTree_join hash32part_98304 hash32part_114688)))
theorem step32_checked : B677Finite.allTree 17 0 step32 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step32part_0 step32part_16384) (B677Finite.allTree_join step32part_32768 step32part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step32part_65536 step32part_81920) (B677Finite.allTree_join step32part_98304 step32part_114688)))
theorem hash_checked32 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 32 64 row32 lookup32) = true := hash32_checked
theorem step_checked32 : B677Finite.modNextCheck 17 89693 31 64 18446744073709551557 row31 row32 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step32_checked
end B677FiniteHashGenerated
