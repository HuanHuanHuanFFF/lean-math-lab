import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part27_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part27_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part27_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part27_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part27_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part27_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part27_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part27_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash27_checked : B677Finite.allTree 17 0 hash27 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash27part_0 hash27part_16384) (B677Finite.allTree_join hash27part_32768 hash27part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash27part_65536 hash27part_81920) (B677Finite.allTree_join hash27part_98304 hash27part_114688)))
theorem step27_checked : B677Finite.allTree 17 0 step27 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step27part_0 step27part_16384) (B677Finite.allTree_join step27part_32768 step27part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step27part_65536 step27part_81920) (B677Finite.allTree_join step27part_98304 step27part_114688)))
theorem hash_checked27 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 27 64 row27 lookup27) = true := hash27_checked
theorem step_checked27 : B677Finite.modNextCheck 17 89693 26 64 18446744073709551557 row26 row27 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step27_checked
end B677FiniteHashGenerated
