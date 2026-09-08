import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part68_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part68_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part68_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part68_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part68_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part68_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part68_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part68_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash68_checked : B677Finite.allTree 17 0 hash68 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash68part_0 hash68part_16384) (B677Finite.allTree_join hash68part_32768 hash68part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash68part_65536 hash68part_81920) (B677Finite.allTree_join hash68part_98304 hash68part_114688)))
theorem step68_checked : B677Finite.allTree 17 0 step68 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step68part_0 step68part_16384) (B677Finite.allTree_join step68part_32768 step68part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step68part_65536 step68part_81920) (B677Finite.allTree_join step68part_98304 step68part_114688)))
theorem hash_checked68 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 68 64 row68 lookup68) = true := hash68_checked
theorem step_checked68 : B677Finite.modNextCheck 17 89693 67 64 18446744073709551557 row67 row68 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step68_checked
end B677FiniteHashGenerated
