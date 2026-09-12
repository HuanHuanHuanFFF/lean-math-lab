import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.WindowPrimary

namespace B699.SmoothWindow

theorem ordProj_smooth_two (a b : ℕ) : ordProj[2] (2^a*3^b) = 2^a := by
  simp [Nat.factorization_mul (by positivity : 2^a ≠ 0) (by positivity : 3^b ≠ 0),
    Nat.factorization_pow, Nat.Prime.factorization (by decide : Nat.Prime 2),
    Nat.Prime.factorization (by decide : Nat.Prime 3)]

theorem ordProj_smooth_three (a b : ℕ) : ordProj[3] (2^a*3^b) = 3^b := by
  simp [Nat.factorization_mul (by positivity : 2^a ≠ 0) (by positivity : 3^b ≠ 0),
    Nat.factorization_pow, Nat.Prime.factorization (by decide : Nat.Prime 2),
    Nat.Prime.factorization (by decide : Nat.Prime 3)]

theorem window_primary_le_of_power {N r p t : ℕ} (hp : p.Prime)
    (ht : 2 ≤ t) (hr : r ≤ 3) (hN : 4 ≤ N)
    (hproj : ordProj[p] N = p^t) :
    ∀ s : ℕ, s ≤ 3 → ordProj[p] (N+r-s) ≤ p^t := by
  intro s hs
  have hpp : 4 ≤ p^2 := by have := hp.two_le; nlinarith
  have hdiv : p^2 ∣ N := by
    apply (pow_dvd_pow p ht).trans
    rw [← hproj]
    exact Nat.ordProj_dvd N p
  have hmod : N % p^2 = 0 := Nat.mod_eq_zero_of_dvd hdiv
  by_cases hsr : s = r
  · subst s
    simpa using le_of_eq hproj
  have hx0 : N+r-s ≠ 0 := by omega
  have hnd : ¬ p^2 ∣ N+r-s := by
    intro hd
    have hdmod := Nat.mod_eq_zero_of_dvd hd
    have hsum : (N+r-s)+s = N+r := by omega
    have he := congrArg (fun x:ℕ ↦ x % p^2) hsum
    simp only [Nat.add_mod,hdmod,hmod,zero_add,
      Nat.mod_eq_of_lt (show s < p^2 by omega),
      Nat.mod_eq_of_lt (show r < p^2 by omega)] at he
    exact hsr he
  have hf : (N+r-s).factorization p ≤ 1 := by
    by_contra h
    exact hnd ((hp.pow_dvd_iff_le_factorization hx0).mpr (by omega))
  exact (Nat.pow_le_pow_right hp.pos hf).trans
    (Nat.pow_le_pow_right hp.pos (by omega : 1 ≤ t))

theorem smooth_collision_impossible {a b r j : ℕ} (ha : 2 ≤ a) (hb : 2 ≤ b)
    (hr : r ≤ 3) (hj : 5 ≤ j) (hjhalf : j ≤ (2^a*3^b+r)/2) :
    ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ (2^a*3^b+r).choose 4 ∧
      p ∣ (2^a*3^b+r).choose j := by
  by_contra hno
  have h2 : 4 ≤ 2^a := by simpa using Nat.pow_le_pow_right (by decide : 0 < 2) ha
  have h3 : 1 ≤ 3^b := Nat.one_le_pow _ _ (by decide)
  have hN : 4 ≤ 2^a*3^b := by nlinarith
  have hA := window_primary_le_of_power (by decide : Nat.Prime 2) ha hr hN (ordProj_smooth_two a b)
  have hB := window_primary_le_of_power (by decide : Nat.Prime 3) hb hr hN (ordProj_smooth_three a b)
  have hU := smallPart23_window_upper (by omega : 4 ≤ 2^a*3^b+r) hA hB
  have hlarge := smallPart23_large_of_noCommon hj hjhalf hno
  omega

end B699.SmoothWindow
