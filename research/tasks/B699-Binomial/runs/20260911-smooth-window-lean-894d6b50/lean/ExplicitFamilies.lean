import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.NecessaryBounds
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.Congruence

namespace B699.SmoothWindow

/-- A stronger intermediate row family: powers of two congruent to 4 modulo 9. -/
theorem common_four_of_power_two_mod_nine {a j : ℕ} (ha : 2 ≤ a)
    (hn : 2^a ≡ 4 [MOD 9]) (hj : 5 ≤ j) (hjhalf : j ≤ 2^a / 2) :
    ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ (2^a).choose 4 ∧ p ∣ (2^a).choose j := by
  by_contra hno
  have hl := smallPart23_large_of_noCommon hj hjhalf hno
  rw [smallPart23_choose_power_two (by omega : 4 ≤ 2^a) hn] at hl
  have heq : 2^a = 4*2^(a-2) := by
    calc
      2^a = 2^((a-2)+2) := by congr 1; omega
      _ = 2^(a-2)*2^2 := pow_add _ _ _
      _ = 4*2^(a-2) := by norm_num; ring
  omega

theorem common_four_sixty (k j : ℕ) (hj : 5 ≤ j) (hjhalf : j ≤ 2^(60*k+2)/2) :
    ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ (2^(60*k+2)).choose 4 ∧
      p ∣ (2^(60*k+2)).choose j :=
  common_four_of_power_two_mod_nine (by omega) (pow_sixty_modEq_nine k) hj hjhalf

/-- The witness is chosen after k and j; it is shared by all eligible lower indices. -/
theorem simultaneous_sixty_family (k j : ℕ) (_hk : 1 ≤ k)
    (hj : 5 ≤ j) (hjhalf : j ≤ 2^(60*k+2)/2) :
    ∃ p : ℕ, p.Prime ∧ 17 ≤ p ∧ p ∣ (2^(60*k+2)).choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ 14 → i < j → p ∣ (2^(60*k+2)).choose i := by
  have hc := common_four_sixty k j hj hjhalf
  have hn : 2^(60*k+2) ≡ 4 [MOD primeProduct 14] := by
    simpa only [primeProduct_fourteen] using pow_sixty_modEq k
  obtain ⟨p,hp,h14,hpj,hall⟩ :=
    same_prime_above_of_product_congruence (by decide : 4 ≤ 14) hc hn
  have h17 : 17 ≤ p := by
    by_contra h
    have hp15 : p = 15 ∨ p = 16 := by omega
    rcases hp15 with rfl | rfl
    · exact (by decide : ¬ Nat.Prime 15) hp
    · exact (by decide : ¬ Nat.Prime 16) hp
  exact ⟨p,hp,h17,hpj,hall⟩

theorem factorial_period_mod_nine {m : ℕ} (hm : 5 ≤ m) (k : ℕ) :
    2^(m.factorial*k+2) ≡ 4 [MOD 9] := by
  have h60 : 60 ∣ m.factorial :=
    (by decide : 60 ∣ Nat.factorial 5).trans (Nat.factorial_dvd_factorial hm)
  obtain ⟨q,hq⟩ := h60
  simpa only [hq,Nat.mul_assoc] using pow_sixty_modEq_nine (q*k)

theorem common_four_factorial {m : ℕ} (hm : 5 ≤ m) (k j : ℕ)
    (hj : 5 ≤ j) (hjhalf : j ≤ 2^(m.factorial*k+2)/2) :
    ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ (2^(m.factorial*k+2)).choose 4 ∧
      p ∣ (2^(m.factorial*k+2)).choose j :=
  common_four_of_power_two_mod_nine (by omega) (factorial_period_mod_nine hm k) hj hjhalf

theorem simultaneous_factorial_family {m : ℕ} (hm : 5 ≤ m) (k j : ℕ) (_hk : 1 ≤ k)
    (hj : 5 ≤ j) (hjhalf : j ≤ 2^(m.factorial*k+2)/2) :
    ∃ p : ℕ, p.Prime ∧ m < p ∧ p ∣ (2^(m.factorial*k+2)).choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ m → i < j → p ∣ (2^(m.factorial*k+2)).choose i := by
  apply same_prime_above_of_local_congruence (by omega : 4 ≤ m)
    (common_four_factorial hm k j hj hjhalf)
  intro p hp h5p hpm
  exact factorial_period_modEq hp h5p hpm k

end B699.SmoothWindow

