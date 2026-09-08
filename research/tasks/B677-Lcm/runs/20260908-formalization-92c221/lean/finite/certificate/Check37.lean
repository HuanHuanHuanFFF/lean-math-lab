import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part37_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part37_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part37_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part37_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part37_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part37_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part37_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part37_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash37_checked : B677Finite.allTree 17 0 hash37 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash37part_0 hash37part_16384) (B677Finite.allTree_join hash37part_32768 hash37part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash37part_65536 hash37part_81920) (B677Finite.allTree_join hash37part_98304 hash37part_114688)))
theorem step37_checked : B677Finite.allTree 17 0 step37 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step37part_0 step37part_16384) (B677Finite.allTree_join step37part_32768 step37part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step37part_65536 step37part_81920) (B677Finite.allTree_join step37part_98304 step37part_114688)))
theorem hash_checked37 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 37 64 row37 lookup37) = true := hash37_checked
theorem step_checked37 : B677Finite.modNextCheck 17 89693 36 64 18446744073709551557 row36 row37 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step37_checked
end B677FiniteHashGenerated
