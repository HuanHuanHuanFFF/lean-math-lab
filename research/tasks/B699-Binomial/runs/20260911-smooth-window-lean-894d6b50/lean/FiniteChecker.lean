import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.NecessaryW
import Mathlib.Tactic.NormNum.Prime

namespace B699.SmoothWindow

def CommonFour (n : ℕ) : Prop := ∀ j : ℕ, 5 ≤ j → j ≤ n/2 →
  ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ n.choose 4 ∧ p ∣ n.choose j

theorem coprime_factor_of_noCommon {N B V : ℕ} (hV : V ∣ N)
    (h2 : ¬ 2 ∣ V) (h3 : ¬ 3 ∣ V)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ N ∧ p ∣ B) : V.Coprime B := by
  by_contra hc
  obtain ⟨p,hp,hpV,hpB⟩ := Nat.Prime.not_coprime_iff_dvd.mp hc
  have hp2 : p ≠ 2 := by intro h; subst p; exact h2 hpV
  have hp3 : p ≠ 3 := by intro h; subst p; exact h3 hpV
  exact hno ⟨p,hp,prime_ge_five hp hp2 hp3,hpV.trans hV,hpB⟩

def boundCheck (n U V : ℕ) (useW : Bool) : Bool := decide
  (10 ≤ n ∧ 24*(U*V) = n*(n-1)*(n-2)*(n-3) ∧ ¬ 2 ∣ V ∧ ¬ 3 ∣ V ∧
    if useW then 729*(n-2)*U^6 ≤ (n-1)^5*(n-3)^3
    else 9*(n-2)*U^2 < 2*(n-1)^2*(n-3))

theorem boundCheck_sound {n U V : ℕ} {useW : Bool}
    (hc : boundCheck n U V useW = true) : CommonFour n := by
  obtain ⟨hn,hprod,h2,h3,hineq⟩ := of_decide_eq_true hc
  intro j hj hjhalf
  by_contra hno
  have h1n : 1 ≤ n := by omega
  have h2n : 2 ≤ n := by omega
  have h3n : 3 ≤ n := by omega
  have hprodZ : (24:ℤ)*(U*V) = (n:ℤ)*(n-1)*(n-2)*(n-3) := by
    exact_mod_cast hprod
  have hUV : n.choose 4 = U*V := by
    have hs := choose_four_scaled n (by omega)
    simp only [fallingFour] at hs
    have hz : (n.choose 4:ℤ) = (U*V:ℕ) := by push_cast; omega
    exact_mod_cast hz
  have hV : V ∣ n.choose 4 := by rw [hUV]; exact dvd_mul_left V U
  have hcop := coprime_factor_of_noCommon hV h2 h3 hno
  cases useW with
  | false =>
    have hbad : (9:ℤ)*(n-2)*(U:ℤ)^2 < 2*(n-1)^2*(n-3) := by
      exact_mod_cast hineq
    exact (not_lt_of_ge (I_bound_of_coprime_factor hj hjhalf hUV hcop)) hbad
  | true =>
    have hbad : (729:ℤ)*(n-2)*(U:ℤ)^6 ≤ (n-1)^5*(n-3)^3 := by
      exact_mod_cast hineq
    exact (not_lt_of_ge hbad) (W_bound_of_coprime_factor hj hjhalf hUV hcop)

/-- Single-carry consequence of mathlib's kernel-proved Kummer theorem.
Reuses the argument of fixed-main Math/B699/CofactorCriterion.lean. -/
theorem carry_prime_dvd_choose {n k p e : ℕ}
    (hp : p.Prime) (hk : k ≤ n) (he : 1 ≤ e)
    (hm : n % p ^ e < k % p ^ e) : p ∣ n.choose k := by
  have hmod : (k % p ^ e + (n-k) % p ^ e) % p ^ e = n % p ^ e := by
    rw [← Nat.add_mod, Nat.add_sub_of_le hk]
  have hcarry : p ^ e ≤ k % p ^ e + (n-k) % p ^ e := by
    by_contra h
    have hsmall : k % p ^ e + (n-k) % p ^ e < p ^ e := Nat.lt_of_not_ge h
    rw [Nat.mod_eq_of_lt hsmall] at hmod
    have hle : k % p^e ≤ n % p^e := by
      rw [← hmod]
      exact Nat.le_add_right _ _
    exact (Nat.not_lt_of_ge hle) hm
  have hbound : Nat.log p n < Nat.log p n + e + 1 := by omega
  have he_mem : e ∈ Finset.Ico 1 (Nat.log p n + e + 1) := by
    simp only [Finset.mem_Ico]
    omega
  have hfactor : 0 < (n.choose k).factorization p := by
    rw [Nat.factorization_choose hp hk hbound]
    exact Finset.card_pos.mpr ⟨e, Finset.mem_filter.mpr ⟨he_mem,hcarry⟩⟩
  exact Nat.dvd_of_factorization_pos (Nat.ne_of_gt hfactor)

theorem noCommon_mod_le {n j p e : ℕ} (hj : 5 ≤ j) (hjhalf : j ≤ n/2)
    (hp : p.Prime) (hp5 : 5 ≤ p) (he : 1 ≤ e)
    (hpow : 4 < p^e) (hnmod : n % p^e < 4)
    (hno : ¬ ∃ q : ℕ, q.Prime ∧ 5 ≤ q ∧ q ∣ n.choose 4 ∧ q ∣ n.choose j) :
    j % p^e ≤ n % p^e := by
  by_contra h
  have h4 : p ∣ n.choose 4 := carry_prime_dvd_choose hp (by omega) he (by
    simpa only [Nat.mod_eq_of_lt hpow] using hnmod)
  exact hno ⟨p,hp,hp5,h4,carry_prime_dvd_choose hp (by omega) he (by omega)⟩

end B699.SmoothWindow
