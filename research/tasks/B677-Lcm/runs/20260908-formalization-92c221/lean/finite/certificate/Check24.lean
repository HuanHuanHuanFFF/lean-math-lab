import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part24_000000
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part24_016384
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part24_032768
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part24_049152
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part24_065536
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part24_081920
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part24_098304
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.certificate.Part24_114688
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem hash24_checked : B677Finite.allTree 17 0 hash24 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join hash24part_0 hash24part_16384) (B677Finite.allTree_join hash24part_32768 hash24part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join hash24part_65536 hash24part_81920) (B677Finite.allTree_join hash24part_98304 hash24part_114688)))
theorem step24_checked : B677Finite.allTree 17 0 step24 = true :=
  (B677Finite.allTree_join (B677Finite.allTree_join (B677Finite.allTree_join step24part_0 step24part_16384) (B677Finite.allTree_join step24part_32768 step24part_49152)) (B677Finite.allTree_join (B677Finite.allTree_join step24part_65536 step24part_81920) (B677Finite.allTree_join step24part_98304 step24part_114688)))
theorem hash_checked24 : B677Finite.allTree 17 0 (B677Finite.hashPointCheck 89693 24 64 row24 lookup24) = true := hash24_checked
theorem step_checked24 : B677Finite.modNextCheck 17 89693 23 64 18446744073709551557 row23 row24 = true :=
  B677Finite.directNextCheck_of_parts (by decide +kernel) step24_checked
end B677FiniteHashGenerated
