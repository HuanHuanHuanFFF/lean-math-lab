
#check @Nat.le_add_right
#check @Nat.ne_of_lt
#check Nat.succ_succ_ne_one
#print axioms Nat.le_add_right
#print axioms Nat.ne_of_lt
#print axioms Nat.succ_succ_ne_one

example (a b : Nat) : (a ∣ b) ↔ ∃ c : Nat, b = a * c := Iff.rfl
example (a b : Nat) : a < b ↔ a + 1 ≤ b := Iff.rfl

example : (2 : Nat) ∣ 4884 := ⟨2442, rfl⟩
example : (4884 : Nat) = 2 * 2442 := rfl
example : (2 : Nat) ≤ 2 := Nat.le_refl 2
example : (2 : Nat) < 4884 := Nat.le_add_right 3 4881
example : (2 : Nat) ≠ 1 := Nat.succ_succ_ne_one 0
example : (2 : Nat) ≠ 4884 := Nat.ne_of_lt (Nat.le_add_right 3 4881)
example : (2 : Nat) ∣ 4884 ∧ 2 ≤ 2 ∧ 2 < 4884 :=
  ⟨⟨2442, rfl⟩, Nat.le_refl 2, Nat.le_add_right 3 4881⟩
#check B699CoreOnly.not_primeByDivisors_4884
#print axioms B699CoreOnly.not_primeByDivisors_4884
example : ¬ (2 ≤ 4884 ∧ ∀ m : Nat, m ∣ 4884 → m = 1 ∨ m = 4884) :=
  B699CoreOnly.not_primeByDivisors_4884

example : (5 : Nat) ∣ 4885 := ⟨977, rfl⟩
example : (4885 : Nat) = 5 * 977 := rfl
example : (2 : Nat) ≤ 5 := Nat.le_add_right 2 3
example : (5 : Nat) < 4885 := Nat.le_add_right 6 4879
example : (5 : Nat) ≠ 1 := Nat.succ_succ_ne_one 3
example : (5 : Nat) ≠ 4885 := Nat.ne_of_lt (Nat.le_add_right 6 4879)
example : (5 : Nat) ∣ 4885 ∧ 2 ≤ 5 ∧ 5 < 4885 :=
  ⟨⟨977, rfl⟩, Nat.le_add_right 2 3, Nat.le_add_right 6 4879⟩
#check B699CoreOnly.not_primeByDivisors_4885
#print axioms B699CoreOnly.not_primeByDivisors_4885
example : ¬ (2 ≤ 4885 ∧ ∀ m : Nat, m ∣ 4885 → m = 1 ∨ m = 4885) :=
  B699CoreOnly.not_primeByDivisors_4885

example : (2 : Nat) ∣ 4886 := ⟨2443, rfl⟩
example : (4886 : Nat) = 2 * 2443 := rfl
example : (2 : Nat) ≤ 2 := Nat.le_refl 2
example : (2 : Nat) < 4886 := Nat.le_add_right 3 4883
example : (2 : Nat) ≠ 1 := Nat.succ_succ_ne_one 0
example : (2 : Nat) ≠ 4886 := Nat.ne_of_lt (Nat.le_add_right 3 4883)
example : (2 : Nat) ∣ 4886 ∧ 2 ≤ 2 ∧ 2 < 4886 :=
  ⟨⟨2443, rfl⟩, Nat.le_refl 2, Nat.le_add_right 3 4883⟩
#check B699CoreOnly.not_primeByDivisors_4886
#print axioms B699CoreOnly.not_primeByDivisors_4886
example : ¬ (2 ≤ 4886 ∧ ∀ m : Nat, m ∣ 4886 → m = 1 ∨ m = 4886) :=
  B699CoreOnly.not_primeByDivisors_4886

example : (3 : Nat) ∣ 4887 := ⟨1629, rfl⟩
example : (4887 : Nat) = 3 * 1629 := rfl
example : (2 : Nat) ≤ 3 := Nat.le_add_right 2 1
example : (3 : Nat) < 4887 := Nat.le_add_right 4 4883
example : (3 : Nat) ≠ 1 := Nat.succ_succ_ne_one 1
example : (3 : Nat) ≠ 4887 := Nat.ne_of_lt (Nat.le_add_right 4 4883)
example : (3 : Nat) ∣ 4887 ∧ 2 ≤ 3 ∧ 3 < 4887 :=
  ⟨⟨1629, rfl⟩, Nat.le_add_right 2 1, Nat.le_add_right 4 4883⟩
#check B699CoreOnly.not_primeByDivisors_4887
#print axioms B699CoreOnly.not_primeByDivisors_4887
example : ¬ (2 ≤ 4887 ∧ ∀ m : Nat, m ∣ 4887 → m = 1 ∨ m = 4887) :=
  B699CoreOnly.not_primeByDivisors_4887

example : (2 : Nat) ∣ 4888 := ⟨2444, rfl⟩
example : (4888 : Nat) = 2 * 2444 := rfl
example : (2 : Nat) ≤ 2 := Nat.le_refl 2
example : (2 : Nat) < 4888 := Nat.le_add_right 3 4885
example : (2 : Nat) ≠ 1 := Nat.succ_succ_ne_one 0
example : (2 : Nat) ≠ 4888 := Nat.ne_of_lt (Nat.le_add_right 3 4885)
example : (2 : Nat) ∣ 4888 ∧ 2 ≤ 2 ∧ 2 < 4888 :=
  ⟨⟨2444, rfl⟩, Nat.le_refl 2, Nat.le_add_right 3 4885⟩
#check B699CoreOnly.not_primeByDivisors_4888
#print axioms B699CoreOnly.not_primeByDivisors_4888
example : ¬ (2 ≤ 4888 ∧ ∀ m : Nat, m ∣ 4888 → m = 1 ∨ m = 4888) :=
  B699CoreOnly.not_primeByDivisors_4888
