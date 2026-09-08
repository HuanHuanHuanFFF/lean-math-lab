import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part66_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part66_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part66_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part66_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part66_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part66_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part66_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part66_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash66_checked : B677Finite.allTree 17 0 hash66 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash66part_0 hash66part_16384) (B677Finite.allTree_join hash66part_32768 hash66part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash66part_65536 hash66part_81920) (B677Finite.allTree_join hash66part_98304 hash66part_114688)))
theorem step66_checked : B677Finite.allTree 17 0 step66 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step66part_0 step66part_16384) (B677Finite.allTree_join step66part_32768 step66part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step66part_65536 step66part_81920) (B677Finite.allTree_join step66part_98304 step66part_114688)))
theorem hash_checked66 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 66 64 row66 lookup66) = true := hash66_checked
theorem step_checked66 : B677Finite.modNextCheck 17 89693 65 64 18446744073709551557 row65 row66 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step66_checked
end B677FiniteHashGenerated
