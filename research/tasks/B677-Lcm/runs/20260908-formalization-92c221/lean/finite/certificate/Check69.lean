import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part69_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part69_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part69_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part69_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part69_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part69_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part69_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part69_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash69_checked : B677Finite.allTree 17 0 hash69 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash69part_0 hash69part_16384) (B677Finite.allTree_join hash69part_32768 hash69part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash69part_65536 hash69part_81920) (B677Finite.allTree_join hash69part_98304 hash69part_114688)))
theorem step69_checked : B677Finite.allTree 17 0 step69 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step69part_0 step69part_16384) (B677Finite.allTree_join step69part_32768 step69part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step69part_65536 step69part_81920) (B677Finite.allTree_join step69part_98304 step69part_114688)))
theorem hash_checked69 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 69 64 row69 lookup69) = true := hash69_checked
theorem step_checked69 : B677Finite.modNextCheck 17 89693 68 64 18446744073709551557 row68 row69 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step69_checked
end B677FiniteHashGenerated
