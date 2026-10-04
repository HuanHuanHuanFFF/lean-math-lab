import Mathlib.Data.Nat.Prime.Defs

namespace B699CompositeTransfer20261003

theorem not_prime_4884 : ¬ Nat.Prime 4884 :=
  fun h => Or.elim (h.isUnit_or_isUnit (a := 2) (b := 2442) rfl)
    (fun u => Nat.succ_succ_ne_one 0 (Nat.isUnit_iff.mp u))
    (fun u => Nat.succ_succ_ne_one 2440 (Nat.isUnit_iff.mp u))

theorem not_prime_4885 : ¬ Nat.Prime 4885 :=
  fun h => Or.elim (h.isUnit_or_isUnit (a := 5) (b := 977) rfl)
    (fun u => Nat.succ_succ_ne_one 3 (Nat.isUnit_iff.mp u))
    (fun u => Nat.succ_succ_ne_one 975 (Nat.isUnit_iff.mp u))

theorem not_prime_4886 : ¬ Nat.Prime 4886 :=
  fun h => Or.elim (h.isUnit_or_isUnit (a := 2) (b := 2443) rfl)
    (fun u => Nat.succ_succ_ne_one 0 (Nat.isUnit_iff.mp u))
    (fun u => Nat.succ_succ_ne_one 2441 (Nat.isUnit_iff.mp u))

theorem not_prime_4887 : ¬ Nat.Prime 4887 :=
  fun h => Or.elim (h.isUnit_or_isUnit (a := 3) (b := 1629) rfl)
    (fun u => Nat.succ_succ_ne_one 1 (Nat.isUnit_iff.mp u))
    (fun u => Nat.succ_succ_ne_one 1627 (Nat.isUnit_iff.mp u))

theorem not_prime_4888 : ¬ Nat.Prime 4888 :=
  fun h => Or.elim (h.isUnit_or_isUnit (a := 2) (b := 2444) rfl)
    (fun u => Nat.succ_succ_ne_one 0 (Nat.isUnit_iff.mp u))
    (fun u => Nat.succ_succ_ne_one 2442 (Nat.isUnit_iff.mp u))

end B699CompositeTransfer20261003
