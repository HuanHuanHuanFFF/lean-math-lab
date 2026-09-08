import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part67_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part67_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part67_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part67_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part67_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part67_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part67_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part67_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash67_checked : B677Finite.allTree 17 0 hash67 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash67part_0 hash67part_16384) (B677Finite.allTree_join hash67part_32768 hash67part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash67part_65536 hash67part_81920) (B677Finite.allTree_join hash67part_98304 hash67part_114688)))
theorem step67_checked : B677Finite.allTree 17 0 step67 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step67part_0 step67part_16384) (B677Finite.allTree_join step67part_32768 step67part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step67part_65536 step67part_81920) (B677Finite.allTree_join step67part_98304 step67part_114688)))
theorem hash_checked67 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 67 64 row67 lookup67) = true := hash67_checked
theorem step_checked67 : B677Finite.modNextCheck 17 89693 66 64 18446744073709551557 row66 row67 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step67_checked
end B677FiniteHashGenerated
