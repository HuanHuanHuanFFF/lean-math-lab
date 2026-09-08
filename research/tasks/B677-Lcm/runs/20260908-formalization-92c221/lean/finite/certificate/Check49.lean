import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part49_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part49_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part49_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part49_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part49_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part49_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part49_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part49_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash49_checked : B677Finite.allTree 17 0 hash49 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash49part_0 hash49part_16384) (B677Finite.allTree_join hash49part_32768 hash49part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash49part_65536 hash49part_81920) (B677Finite.allTree_join hash49part_98304 hash49part_114688)))
theorem step49_checked : B677Finite.allTree 17 0 step49 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step49part_0 step49part_16384) (B677Finite.allTree_join step49part_32768 step49part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step49part_65536 step49part_81920) (B677Finite.allTree_join step49part_98304 step49part_114688)))
theorem hash_checked49 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 49 64 row49 lookup49) = true := hash49_checked
theorem step_checked49 : B677Finite.modNextCheck 17 89693 48 64 18446744073709551557 row48 row49 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step49_checked
end B677FiniteHashGenerated
