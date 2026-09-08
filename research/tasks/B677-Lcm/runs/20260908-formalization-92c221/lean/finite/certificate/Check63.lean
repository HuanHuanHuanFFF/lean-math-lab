import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part63_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part63_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part63_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part63_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part63_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part63_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part63_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part63_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash63_checked : B677Finite.allTree 17 0 hash63 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash63part_0 hash63part_16384) (B677Finite.allTree_join hash63part_32768 hash63part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash63part_65536 hash63part_81920) (B677Finite.allTree_join hash63part_98304 hash63part_114688)))
theorem step63_checked : B677Finite.allTree 17 0 step63 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step63part_0 step63part_16384) (B677Finite.allTree_join step63part_32768 step63part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step63part_65536 step63part_81920) (B677Finite.allTree_join step63part_98304 step63part_114688)))
theorem hash_checked63 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 63 64 row63 lookup63) = true := hash63_checked
theorem step_checked63 : B677Finite.modNextCheck 17 89693 62 64 18446744073709551557 row62 row63 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step63_checked
end B677FiniteHashGenerated
