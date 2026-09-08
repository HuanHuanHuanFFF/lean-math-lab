import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part40_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part40_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part40_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part40_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part40_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part40_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part40_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part40_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash40_checked : B677Finite.allTree 17 0 hash40 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash40part_0 hash40part_16384) (B677Finite.allTree_join hash40part_32768 hash40part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash40part_65536 hash40part_81920) (B677Finite.allTree_join hash40part_98304 hash40part_114688)))
theorem step40_checked : B677Finite.allTree 17 0 step40 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step40part_0 step40part_16384) (B677Finite.allTree_join step40part_32768 step40part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step40part_65536 step40part_81920) (B677Finite.allTree_join step40part_98304 step40part_114688)))
theorem hash_checked40 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 40 64 row40 lookup40) = true := hash40_checked
theorem step_checked40 : B677Finite.modNextCheck 17 89693 39 64 18446744073709551557 row39 row40 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step40_checked
end B677FiniteHashGenerated
