import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part60_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part60_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part60_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part60_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part60_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part60_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part60_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part60_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash60_checked : B677Finite.allTree 17 0 hash60 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash60part_0 hash60part_16384) (B677Finite.allTree_join hash60part_32768 hash60part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash60part_65536 hash60part_81920) (B677Finite.allTree_join hash60part_98304 hash60part_114688)))
theorem step60_checked : B677Finite.allTree 17 0 step60 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step60part_0 step60part_16384) (B677Finite.allTree_join step60part_32768 step60part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step60part_65536 step60part_81920) (B677Finite.allTree_join step60part_98304 step60part_114688)))
theorem hash_checked60 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 60 64 row60 lookup60) = true := hash60_checked
theorem step_checked60 : B677Finite.modNextCheck 17 89693 59 64 18446744073709551557 row59 row60 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step60_checked
end B677FiniteHashGenerated
