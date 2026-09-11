import Mathlib.Data.Nat.Choose.Dvd
import Mathlib.Tactic.NormNum

namespace B699.SmoothWindow

theorem choose_mul_choose {n i h : ℕ} (hhi : h ≤ i) :
    n.choose i * i.choose h = n.choose h * (n - h).choose (i - h) :=
  Nat.choose_mul hhi

/-- Transfer preserves the prime and requires the strict bound p > i. -/
theorem prime_dvd_choose_transfer {n i h p : ℕ}
    (hp : p.Prime) (hhi : h ≤ i) (hip : i < p)
    (hpn : p ∣ n.choose h) : p ∣ n.choose i := by
  have hd : p ∣ n.choose i * i.choose h := by
    rw [Nat.choose_mul hhi]
    exact dvd_mul_of_dvd_left hpn _
  rcases hp.dvd_mul.mp hd with hi | hc
  · exact hi
  · have hf : p ∣ i.factorial := by
      rw [← Nat.choose_mul_factorial_mul_factorial hhi]
      exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left hc _) _
    exact False.elim (hip.not_ge (hp.dvd_factorial.mp hf))

theorem same_prime_transfer {n j m p : ℕ}
    (hp : p.Prime) (hmp : m < p)
    (hp4 : p ∣ n.choose 4) (hpj : p ∣ n.choose j) :
    p ∣ n.choose j ∧ ∀ i : ℕ, 4 ≤ i → i ≤ m → i < j → p ∣ n.choose i := by
  refine ⟨hpj, ?_⟩
  intro i h4i him _
  exact prime_dvd_choose_transfer hp h4i (lt_of_le_of_lt him hmp) hp4

theorem strict_transfer_counterexample :
    Nat.Prime 5 ∧ 5 ∣ Nat.choose 16 4 ∧ 5 ∣ Nat.choose 16 7 ∧
    ¬ 5 ∣ Nat.choose 16 5 ∧ 5 < 7 ∧ 7 ≤ 16 / 2 := by
  norm_num [Nat.choose]

end B699.SmoothWindow

#print axioms B699.SmoothWindow.choose_mul_choose
#print axioms B699.SmoothWindow.prime_dvd_choose_transfer
#print axioms B699.SmoothWindow.same_prime_transfer
#print axioms B699.SmoothWindow.strict_transfer_counterexample
