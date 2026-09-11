import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Choose.Lucas
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Tactic.NormNum

namespace B699.SmoothWindow

/-- The complete 2- and 3-primary part, with both full exponents. -/
def smallPart23 (N : ℕ) : ℕ := 2^N.factorization 2 * 3^N.factorization 3
def largePart23 (N : ℕ) : ℕ := ordCompl[3] (ordCompl[2] N)

theorem smallPart23_mul_largePart23 (N : ℕ) :
    smallPart23 N * largePart23 N = N := by
  have hf : (ordCompl[2] N).factorization 3 = N.factorization 3 := by
    rw [Nat.factorization_ordCompl]
    simp
  calc
    _ = (ordProj[2] N) *
        ((ordProj[3] (ordCompl[2] N)) * (ordCompl[3] (ordCompl[2] N))) := by
      simp only [smallPart23, largePart23, hf, mul_assoc]
    _ = (ordProj[2] N) * (ordCompl[2] N) := by rw [Nat.ordProj_mul_ordCompl_eq_self]
    _ = N := Nat.ordProj_mul_ordCompl_eq_self N 2

theorem largePart23_dvd (N : ℕ) : largePart23 N ∣ N :=
  (Nat.ordCompl_dvd (ordCompl[2] N) 3).trans (Nat.ordCompl_dvd N 2)

theorem largePart23_pos {N : ℕ} (hN : N ≠ 0) : 0 < largePart23 N :=
  Nat.ordCompl_pos 3 (Nat.ordCompl_pos 2 hN).ne'

theorem two_not_dvd_largePart23 {N : ℕ} (hN : N ≠ 0) : ¬ 2 ∣ largePart23 N := by
  intro h
  exact Nat.not_dvd_ordCompl (by decide : Nat.Prime 2) hN
    (h.trans (Nat.ordCompl_dvd (ordCompl[2] N) 3))

theorem three_not_dvd_largePart23 {N : ℕ} (hN : N ≠ 0) : ¬ 3 ∣ largePart23 N :=
  Nat.not_dvd_ordCompl (by decide : Nat.Prime 3) (Nat.ordCompl_pos 2 hN).ne'

theorem prime_ge_five {p : ℕ} (hp : p.Prime) (h2 : p ≠ 2) (h3 : p ≠ 3) : 5 ≤ p := by
  have hmin := hp.two_le
  by_contra h
  have hp4 : p = 4 := by omega
  subst p
  exact (by decide : ¬ Nat.Prime 4) hp

theorem largePart23_coprime_of_noCommon {N B : ℕ} (hN : N ≠ 0)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ N ∧ p ∣ B) :
    (largePart23 N).Coprime B := by
  by_contra hc
  obtain ⟨p,hp,hpV,hpB⟩ := Nat.Prime.not_coprime_iff_dvd.mp hc
  have hp2 : p ≠ 2 := by intro h; subst p; exact two_not_dvd_largePart23 hN hpV
  have hp3 : p ≠ 3 := by intro h; subst p; exact three_not_dvd_largePart23 hN hpV
  exact hno ⟨p,hp,prime_ge_five hp hp2 hp3,hpV.trans (largePart23_dvd N),hpB⟩

theorem choose_four_mod_three_of_mod_nine {n : ℕ} (hn : n ≡ 4 [MOD 9]) :
    n.choose 4 ≡ 1 [MOD 3] := by
  letI : Fact (Nat.Prime 3) := ⟨by decide⟩
  have hn9 : n % 9 = 4 := by simpa [Nat.ModEq] using hn
  have hn3 : n % 3 = 1 := by omega
  have hdiv3 : n / 3 % 3 = 1 := by omega
  have h := Choose.choose_modEq_choose_mod_mul_choose_div_nat (n:=n) (k:=4) (p:=3)
  simpa [Nat.ModEq, hn3, hdiv3] using h

theorem smallPart23_choose_power_two {a : ℕ} (h4 : 4 ≤ 2^a)
    (hn : 2^a ≡ 4 [MOD 9]) :
    smallPart23 ((2^a).choose 4) = 2^(a-2) := by
  have h2 : ((2^a).choose 4).factorization 2 = a-2 := by
    have h := Nat.factorization_choose_prime_pow (by decide : Nat.Prime 2) h4 (by decide : 4 ≠ 0)
    have hf : (4:ℕ).factorization 2 = 2 := by
      simpa using Nat.factorization_pow_self (n:=2) (by decide : Nat.Prime 2)
    simpa only [hf] using h
  have h3 : ¬ 3 ∣ (2^a).choose 4 := by
    intro hd
    have hh := (choose_four_mod_three_of_mod_nine hn).dvd_iff (dvd_refl 3)
    exact (by decide : ¬ 3 ∣ 1) (hh.mp hd)
  simp only [smallPart23, h2, Nat.factorization_eq_zero_of_not_dvd h3, pow_zero, mul_one]

end B699.SmoothWindow

