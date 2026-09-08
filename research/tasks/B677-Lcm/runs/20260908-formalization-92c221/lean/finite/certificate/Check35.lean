import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part35_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part35_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part35_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part35_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part35_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part35_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part35_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part35_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash35_checked : B677Finite.allTree 17 0 hash35 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash35part_0 hash35part_16384) (B677Finite.allTree_join hash35part_32768 hash35part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash35part_65536 hash35part_81920) (B677Finite.allTree_join hash35part_98304 hash35part_114688)))
theorem step35_checked : B677Finite.allTree 17 0 step35 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step35part_0 step35part_16384) (B677Finite.allTree_join step35part_32768 step35part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step35part_65536 step35part_81920) (B677Finite.allTree_join step35part_98304 step35part_114688)))
theorem hash_checked35 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 35 64 row35 lookup35) = true := hash35_checked
theorem step_checked35 : B677Finite.modNextCheck 17 89693 34 64 18446744073709551557 row34 row35 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step35_checked
end B677FiniteHashGenerated
