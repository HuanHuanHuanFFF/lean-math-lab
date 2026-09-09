import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part19_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part19_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part19_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part19_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part19_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part19_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part19_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part19_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash19_checked : B677Finite.allTree 17 0 hash19 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash19part_0 hash19part_16384) (B677Finite.allTree_join hash19part_32768 hash19part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash19part_65536 hash19part_81920) (B677Finite.allTree_join hash19part_98304 hash19part_114688)))
theorem step19_checked : B677Finite.allTree 17 0 step19 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step19part_0 step19part_16384) (B677Finite.allTree_join step19part_32768 step19part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step19part_65536 step19part_81920) (B677Finite.allTree_join step19part_98304 step19part_114688)))
theorem hash_checked19 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 19 64 row19 lookup19) = true := hash19_checked
theorem step_checked19 : B677Finite.modNextCheck 17 89693 18 64 18446744073709551557 row18 row19 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step19_checked
end B677FiniteHashGenerated
