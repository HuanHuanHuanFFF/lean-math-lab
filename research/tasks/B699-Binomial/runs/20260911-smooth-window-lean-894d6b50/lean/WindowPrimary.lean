import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.NecessaryBounds
import Mathlib.Tactic.IntervalCases

namespace B699.SmoothWindow

theorem factorization_eq_of_dvd_not_dvd {p n e : ℕ} (hp : p.Prime)
    (hd : p^e ∣ n) (hnd : ¬ p^(e+1) ∣ n) : n.factorization p = e := by
  have hn : n ≠ 0 := by intro h; subst n; simp at hnd
  have hlo := (hp.pow_dvd_iff_le_factorization hn).mp hd
  have hhi : ¬ e+1 ≤ n.factorization p := by
    simpa only [← hp.pow_dvd_iff_le_factorization hn] using hnd
  omega

theorem choose_four_product_nat {n : ℕ} (hn : 4 ≤ n) :
    24*n.choose 4 = n*(n-1)*(n-2)*(n-3) := by
  have h := choose_four_scaled n hn
  simp only [fallingFour] at h
  have h1 : 1 ≤ n := by omega
  have h2 : 2 ≤ n := by omega
  have h3 : 3 ≤ n := by omega
  exact_mod_cast h

theorem factorization_choose_four_add {n p : ℕ} (hn : 4 ≤ n) :
    (n.choose 4).factorization p + (24:ℕ).factorization p =
      n.factorization p + (n-1).factorization p +
      (n-2).factorization p + (n-3).factorization p := by
  have h := congrArg (fun x:ℕ ↦ x.factorization p) (choose_four_product_nat hn)
  have h0 : n ≠ 0 := by omega
  have h1 : n-1 ≠ 0 := by omega
  have h2 : n-2 ≠ 0 := by omega
  have h3 : n-3 ≠ 0 := by omega
  have hc : n.choose 4 ≠ 0 := Nat.choose_ne_zero hn
  simpa [Nat.factorization_mul, h0,h1,h2,h3,hc,mul_ne_zero,add_comm,add_left_comm,add_assoc] using h

theorem ordProj_two_choose_four {n : ℕ} (hn : 4 ≤ n) :
    4*ordProj[2] (n.choose 4) = ordProj[2] (n-n%4) := by
  have h24 : (24:ℕ).factorization 2 = 3 :=
    factorization_eq_of_dvd_not_dvd (by decide) (by decide) (by decide)
  have hf := factorization_choose_four_add (p:=2) hn
  rw [h24] at hf
  have hr : n%4 < 4 := Nat.mod_lt _ (by decide)
  interval_cases h : n%4
  · have f1 : (n-1).factorization 2 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f2 : (n-2).factorization 2 = 1 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 2 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n-0).factorization 2 = (n.choose 4).factorization 2 + 2 := by
      simp only [Nat.sub_zero] at *
      omega
    change 4*2^((n.choose 4).factorization 2) = 2^((n-0).factorization 2)
    rw [he,pow_add]
    ring
  · have f0 : (n-0).factorization 2 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f2 : (n-2).factorization 2 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 2 = 1 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n-1).factorization 2 = (n.choose 4).factorization 2 + 2 := by
      simp only [Nat.sub_zero] at *
      omega
    change 4*2^((n.choose 4).factorization 2) = 2^((n-1).factorization 2)
    rw [he,pow_add]
    ring
  · have f0 : (n-0).factorization 2 = 1 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f1 : (n-1).factorization 2 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 2 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n-2).factorization 2 = (n.choose 4).factorization 2 + 2 := by
      simp only [Nat.sub_zero] at *
      omega
    change 4*2^((n.choose 4).factorization 2) = 2^((n-2).factorization 2)
    rw [he,pow_add]
    ring
  · have f0 : (n-0).factorization 2 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f1 : (n-1).factorization 2 = 1 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f2 : (n-2).factorization 2 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n-3).factorization 2 = (n.choose 4).factorization 2 + 2 := by
      simp only [Nat.sub_zero] at *
      omega
    change 4*2^((n.choose 4).factorization 2) = 2^((n-3).factorization 2)
    rw [he,pow_add]
    ring

theorem ordProj_three_choose_four_le {n A : ℕ} (hn : 4 ≤ n)
    (hb : ∀ s : ℕ, s ≤ 3 → ordProj[3] (n-s) ≤ A) :
    ordProj[3] (n.choose 4) ≤ A := by
  have h24 : (24:ℕ).factorization 3 = 1 :=
    factorization_eq_of_dvd_not_dvd (by decide) (by decide) (by decide)
  have hf := factorization_choose_four_add (p:=3) hn
  rw [h24] at hf
  have hr : n%9 < 9 := Nat.mod_lt _ (by decide)
  interval_cases h : n%9
  · have f1 : (n-1).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f2 : (n-2).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 3 = 1 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n.choose 4).factorization 3 ≤ (n-0).factorization 3 := by
      simp only [Nat.sub_zero] at *
      omega
    exact (Nat.pow_le_pow_right (by decide : 0 < 3) he).trans (hb 0 (by decide))
  · have f0 : (n-0).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f2 : (n-2).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n.choose 4).factorization 3 ≤ (n-1).factorization 3 := by
      simp only [Nat.sub_zero] at *
      omega
    exact (Nat.pow_le_pow_right (by decide : 0 < 3) he).trans (hb 1 (by decide))
  · have f0 : (n-0).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f1 : (n-1).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n.choose 4).factorization 3 ≤ (n-2).factorization 3 := by
      simp only [Nat.sub_zero] at *
      omega
    exact (Nat.pow_le_pow_right (by decide : 0 < 3) he).trans (hb 2 (by decide))
  · have f0 : (n-0).factorization 3 = 1 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f1 : (n-1).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f2 : (n-2).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n.choose 4).factorization 3 ≤ (n-3).factorization 3 := by
      simp only [Nat.sub_zero] at *
      omega
    exact (Nat.pow_le_pow_right (by decide : 0 < 3) he).trans (hb 3 (by decide))
  · have f0 : (n-0).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f2 : (n-2).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n.choose 4).factorization 3 ≤ (n-1).factorization 3 := by
      simp only [Nat.sub_zero] at *
      omega
    exact (Nat.pow_le_pow_right (by decide : 0 < 3) he).trans (hb 1 (by decide))
  · have f0 : (n-0).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f1 : (n-1).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n.choose 4).factorization 3 ≤ (n-2).factorization 3 := by
      simp only [Nat.sub_zero] at *
      omega
    exact (Nat.pow_le_pow_right (by decide : 0 < 3) he).trans (hb 2 (by decide))
  · have f1 : (n-1).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f2 : (n-2).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 3 = 1 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n.choose 4).factorization 3 ≤ (n-0).factorization 3 := by
      simp only [Nat.sub_zero] at *
      omega
    exact (Nat.pow_le_pow_right (by decide : 0 < 3) he).trans (hb 0 (by decide))
  · have f0 : (n-0).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f2 : (n-2).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n.choose 4).factorization 3 ≤ (n-1).factorization 3 := by
      simp only [Nat.sub_zero] at *
      omega
    exact (Nat.pow_le_pow_right (by decide : 0 < 3) he).trans (hb 1 (by decide))
  · have f0 : (n-0).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f1 : (n-1).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have f3 : (n-3).factorization 3 = 0 := by
      apply factorization_eq_of_dvd_not_dvd (by decide)
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
      · norm_num [Nat.dvd_iff_mod_eq_zero] <;> omega
    have he : (n.choose 4).factorization 3 ≤ (n-2).factorization 3 := by
      simp only [Nat.sub_zero] at *
      omega
    exact (Nat.pow_le_pow_right (by decide : 0 < 3) he).trans (hb 2 (by decide))

theorem smallPart23_window_upper {n A B : ℕ} (hn : 4 ≤ n)
    (hA : ∀ s : ℕ, s ≤ 3 → ordProj[2] (n-s) ≤ A)
    (hB : ∀ s : ℕ, s ≤ 3 → ordProj[3] (n-s) ≤ B) :
    4*smallPart23 (n.choose 4) ≤ A*B := by
  have h2 : 4*ordProj[2] (n.choose 4) ≤ A := by
    rw [ordProj_two_choose_four hn]
    exact hA _ (by have := Nat.mod_lt n (by decide : 0 < 4); omega)
  have h3 := ordProj_three_choose_four_le hn hB
  simpa only [smallPart23,mul_assoc] using Nat.mul_le_mul h2 h3

end B699.SmoothWindow
