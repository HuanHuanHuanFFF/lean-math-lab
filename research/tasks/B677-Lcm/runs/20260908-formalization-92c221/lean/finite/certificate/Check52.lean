import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part52_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part52_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part52_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part52_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part52_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part52_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part52_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part52_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash52_checked : B677Finite.allTree 17 0 hash52 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash52part_0 hash52part_16384) (B677Finite.allTree_join hash52part_32768 hash52part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash52part_65536 hash52part_81920) (B677Finite.allTree_join hash52part_98304 hash52part_114688)))
theorem step52_checked : B677Finite.allTree 17 0 step52 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step52part_0 step52part_16384) (B677Finite.allTree_join step52part_32768 step52part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step52part_65536 step52part_81920) (B677Finite.allTree_join step52part_98304 step52part_114688)))
theorem hash_checked52 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 52 64 row52 lookup52) = true := hash52_checked
theorem step_checked52 : B677Finite.modNextCheck 17 89693 51 64 18446744073709551557 row51 row52 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step52_checked
end B677FiniteHashGenerated
