import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part64_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part64_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part64_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part64_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part64_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part64_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part64_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part64_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash64_checked : B677Finite.allTree 17 0 hash64 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash64part_0 hash64part_16384) (B677Finite.allTree_join hash64part_32768 hash64part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash64part_65536 hash64part_81920) (B677Finite.allTree_join hash64part_98304 hash64part_114688)))
theorem step64_checked : B677Finite.allTree 17 0 step64 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step64part_0 step64part_16384) (B677Finite.allTree_join step64part_32768 step64part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step64part_65536 step64part_81920) (B677Finite.allTree_join step64part_98304 step64part_114688)))
theorem hash_checked64 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 64 64 row64 lookup64) = true := hash64_checked
theorem step_checked64 : B677Finite.modNextCheck 17 89693 63 64 18446744073709551557 row63 row64 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step64_checked
end B677FiniteHashGenerated
