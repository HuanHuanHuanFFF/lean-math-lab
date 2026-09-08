import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part11_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part11_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part11_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part11_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part11_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part11_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part11_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part11_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash11_checked : B677Finite.allTree 17 0 hash11 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash11part_0 hash11part_16384) (B677Finite.allTree_join hash11part_32768 hash11part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash11part_65536 hash11part_81920) (B677Finite.allTree_join hash11part_98304 hash11part_114688)))
theorem step11_checked : B677Finite.allTree 17 0 step11 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step11part_0 step11part_16384) (B677Finite.allTree_join step11part_32768 step11part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step11part_65536 step11part_81920) (B677Finite.allTree_join step11part_98304 step11part_114688)))
theorem hash_checked11 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 11 64 row11 lookup11) = true := hash11_checked
theorem step_checked11 : B677Finite.modNextCheck 17 89693 10 64 18446744073709551557 row10 row11 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step11_checked
end B677FiniteHashGenerated
