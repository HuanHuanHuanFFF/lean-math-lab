import Init

namespace B699CoreOnly

def PrimeByDivisors (n : Nat) : Prop :=
  2 ≤ n ∧ ∀ m : Nat, m ∣ n → m = 1 ∨ m = n

theorem not_primeByDivisors_4884 : ¬ PrimeByDivisors 4884 :=
  fun h => Or.elim (h.2 2 ⟨2442, rfl⟩)
    (Nat.succ_succ_ne_one 0) (Nat.ne_of_lt (Nat.le_add_right 3 4881))

theorem not_primeByDivisors_4885 : ¬ PrimeByDivisors 4885 :=
  fun h => Or.elim (h.2 5 ⟨977, rfl⟩)
    (Nat.succ_succ_ne_one 3) (Nat.ne_of_lt (Nat.le_add_right 6 4879))

theorem not_primeByDivisors_4886 : ¬ PrimeByDivisors 4886 :=
  fun h => Or.elim (h.2 2 ⟨2443, rfl⟩)
    (Nat.succ_succ_ne_one 0) (Nat.ne_of_lt (Nat.le_add_right 3 4883))

theorem not_primeByDivisors_4887 : ¬ PrimeByDivisors 4887 :=
  fun h => Or.elim (h.2 3 ⟨1629, rfl⟩)
    (Nat.succ_succ_ne_one 1) (Nat.ne_of_lt (Nat.le_add_right 4 4883))

theorem not_primeByDivisors_4888 : ¬ PrimeByDivisors 4888 :=
  fun h => Or.elim (h.2 2 ⟨2444, rfl⟩)
    (Nat.succ_succ_ne_one 0) (Nat.ne_of_lt (Nat.le_add_right 3 4885))

end B699CoreOnly
