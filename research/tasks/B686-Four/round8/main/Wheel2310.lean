import Mathlib.Data.Nat.GCD.Basic

/-! A finite residue certificate only. This file does not prove a global
prime-counting inequality or the B686 displacement theorem. -/
namespace B686Round8Main

set_option maxRecDepth 100000
set_option maxHeartbeats 0

def wheelCertificate : Nat × Bool :=
  (List.range 2310).foldl (fun acc r =>
    let c := acc.1 + if Nat.Coprime r 2310 then 1 else 0
    (c, acc.2 && decide (77 * c ≤ 16 * r + 194))) (0, true)

theorem wheel_certificate : wheelCertificate = (480, true) := by decide

/-- info: 'B686Round8Main.wheel_certificate' does not depend on any axioms -/
#guard_msgs in
#print axioms wheel_certificate

end B686Round8Main
