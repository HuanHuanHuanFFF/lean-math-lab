import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.Transfer
import Mathlib.Data.Nat.Choose.Lucas
import Mathlib.FieldTheory.Finite.Basic

namespace B699.SmoothWindow

def primeProduct (m : ℕ) : ℕ :=
  ((Finset.range (m + 1)).filter (fun p ↦ 5 ≤ p ∧ p.Prime)).prod id

theorem prime_dvd_primeProduct {m p : ℕ} (hp : p.Prime)
    (h5p : 5 ≤ p) (hpm : p ≤ m) : p ∣ primeProduct m := by
  apply Finset.dvd_prod_of_mem
  exact Finset.mem_filter.mpr
    ⟨Finset.mem_range.mpr (by omega), h5p, hp⟩

theorem choose_four_modEq_one {n p : ℕ} (hp : p.Prime) (h5p : 5 ≤ p)
    (hn : n ≡ 4 [MOD p]) : n.choose 4 ≡ 1 [MOD p] := by
  letI : Fact p.Prime := ⟨hp⟩
  have h := Choose.choose_modEq_choose_mod_mul_choose_div_nat (n := n) (k := 4) (p := p)
  have h4p : 4 < p := by omega
  have hn' : n % p = 4 := by
    simpa only [Nat.ModEq, Nat.mod_eq_of_lt h4p] using hn
  simpa [hn', Nat.mod_eq_of_lt h4p, Nat.div_eq_of_lt h4p] using h

theorem prime_not_dvd_choose_four {n p : ℕ} (hp : p.Prime) (h5p : 5 ≤ p)
    (hn : n ≡ 4 [MOD p]) : ¬ p ∣ n.choose 4 := by
  intro hd
  have hh := (choose_four_modEq_one hp h5p hn).dvd_iff (dvd_refl p)
  have h1 : p ∣ 1 := hh.mp hd
  exact hp.not_dvd_one h1

theorem same_prime_above_of_local_congruence {n j m : ℕ} (hm : 4 ≤ m)
    (hcommon : ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ n.choose 4 ∧ p ∣ n.choose j)
    (hn : ∀ p : ℕ, p.Prime → 5 ≤ p → p ≤ m → n ≡ 4 [MOD p]) :
    ∃ p : ℕ, p.Prime ∧ m < p ∧ p ∣ n.choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ m → i < j → p ∣ n.choose i := by
  obtain ⟨p, hp, h5p, hp4, hpj⟩ := hcommon
  have hmp : m < p := by
    by_contra h
    exact prime_not_dvd_choose_four hp h5p (hn p hp h5p (by omega)) hp4
  exact ⟨p, hp, hmp, same_prime_transfer hp hmp hp4 hpj⟩

theorem same_prime_above_of_product_congruence {n j m : ℕ} (hm : 4 ≤ m)
    (hcommon : ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ n.choose 4 ∧ p ∣ n.choose j)
    (hn : n ≡ 4 [MOD primeProduct m]) :
    ∃ p : ℕ, p.Prime ∧ m < p ∧ p ∣ n.choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ m → i < j → p ∣ n.choose i := by
  apply same_prime_above_of_local_congruence hm hcommon
  intro p hp h5p hpm
  exact hn.of_dvd (prime_dvd_primeProduct hp h5p hpm)

theorem pow_sixty_modEq (k : ℕ) : 2 ^ (60 * k + 2) ≡ 4 [MOD 5005] := by
  have h : 2 ^ 60 ≡ 1 [MOD 5005] := by norm_num [Nat.ModEq]
  have hh := (h.pow k).mul (Nat.ModEq.refl (2 ^ 2))
  simp only [← pow_mul, ← pow_add, one_pow, one_mul] at hh
  norm_num at hh
  exact hh

theorem primeProduct_fourteen : primeProduct 14 = 5005 := by decide

theorem pow_sixty_modEq_nine (k : ℕ) : 2 ^ (60 * k + 2) ≡ 4 [MOD 9] := by
  have h : 2 ^ 60 ≡ 1 [MOD 9] := by norm_num [Nat.ModEq]
  have hh := (h.pow k).mul (Nat.ModEq.refl (2 ^ 2))
  simp only [← pow_mul, ← pow_add, one_pow, one_mul] at hh
  norm_num at hh
  exact hh

theorem factorial_period_modEq {m p : ℕ} (hp : p.Prime)
    (h5p : 5 ≤ p) (hpm : p ≤ m) (k : ℕ) :
    2 ^ (m.factorial * k + 2) ≡ 4 [MOD p] := by
  have hc : Nat.Coprime 2 p := by
    exact (hp.coprime_iff_not_dvd.mpr (by
      intro hd
      have := Nat.le_of_dvd (by decide : 0 < 2) hd
      omega)).symm
  have hf := Nat.ModEq.pow_card_sub_one_eq_one hp hc
  have hd : p - 1 ∣ m.factorial := Nat.dvd_factorial (by omega) (by omega)
  obtain ⟨q, hq⟩ := hd
  have hh := (hf.pow (q * k)).mul (Nat.ModEq.refl (2 ^ 2))
  simp only [← pow_mul, ← pow_add, one_pow, one_mul] at hh
  norm_num at hh
  simpa only [hq, Nat.mul_assoc] using hh

end B699.SmoothWindow

#print axioms B699.SmoothWindow.prime_dvd_primeProduct
#print axioms B699.SmoothWindow.choose_four_modEq_one
#print axioms B699.SmoothWindow.prime_not_dvd_choose_four
#print axioms B699.SmoothWindow.same_prime_above_of_local_congruence
#print axioms B699.SmoothWindow.same_prime_above_of_product_congruence
#print axioms B699.SmoothWindow.pow_sixty_modEq
#print axioms B699.SmoothWindow.primeProduct_fourteen
#print axioms B699.SmoothWindow.pow_sixty_modEq_nine
#print axioms B699.SmoothWindow.factorial_period_modEq
