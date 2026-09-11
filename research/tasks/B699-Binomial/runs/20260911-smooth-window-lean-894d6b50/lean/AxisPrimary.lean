import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.NeighborBounds

namespace B699.SmoothWindow

theorem three_part_two_axis_zero {a r : ℕ} (ha : 2 ≤ a) (hr : r ≤ 3) :
    ∀ s : ℕ, s ≤ 3 → ordProj[3] (2^a+r-s) ≤ 3*a := by
  have hN : 4 ≤ 2^a := by simpa using Nat.pow_le_pow_right (by decide : 0 < 2) ha
  have hnd : ¬ 3 ∣ 2^a := by
    intro h
    exact (by decide : ¬ 3 ∣ 2) ((by decide : Nat.Prime 3).dvd_of_dvd_pow h)
  have h0 := ordProj_eq_one_of_not_dvd hnd
  have h3 := ordProj_shift_of_not_dvd hnd (dvd_refl 3) (by omega : 3 ≤ 2^a)
  have h1 := three_part_two_power_neighbors (by omega : 1 ≤ a)
  have h2 := ordProj_scaled_neighbors (p:=3) (q:=2) (t:=a) (C:=1)
    (by decide) ha (by simp [Nat.Prime.factorization (by decide : Nat.Prime 2)])
    (three_part_two_power_neighbors (by omega : 1 ≤ a-1))
  simp only [one_mul] at h2
  apply window_bound_of_seven hN (r:=r) (p:=3) (A:=3*a) _ _ _ _ _ _ _ hr
  · rw [h3.1]; omega
  · exact h2.1.trans (by omega)
  · exact h1.1
  · rw [h0]; omega
  · exact h1.2
  · exact h2.2.trans (by omega)
  · rw [h3.2]; omega

theorem three_part_two_axis_one {a r : ℕ} (ha : 2 ≤ a) (hr : r ≤ 3) :
    ∀ s : ℕ, s ≤ 3 → ordProj[3] (2^a*3+r-s) ≤ 9*a := by
  have hx : 4 ≤ 2^a := by simpa using Nat.pow_le_pow_right (by decide : 0 < 2) ha
  have hN : 4 ≤ 3*2^a := by omega
  have hd : 3 ∣ 3*2^a := dvd_mul_right 3 _
  have h1 := ordProj_shift_of_dvd hd (by decide : ¬ 3 ∣ 1) (by omega : 1 ≤ 3*2^a)
  have h2 := ordProj_shift_of_dvd hd (by decide : ¬ 3 ∣ 2) (by omega : 2 ≤ 3*2^a)
  have h3 := ordProj_mul_neighbors (p:=3) (c:=3) (x:=2^a) (C:=3)
    (by decide) (by omega) (by simp [Nat.Prime.factorization (by decide : Nat.Prime 3)]) (three_part_two_power_neighbors (by omega : 1 ≤ a))
  have h0 : ordProj[3] (3*2^a) = 3 := by simpa [mul_comm] using ordProj_smooth_three a 1
  have hb : ∀ s : ℕ, s ≤ 3 → ordProj[3] (3*2^a+r-s) ≤ 9*a := by
    apply window_bound_of_seven hN (r:=r) (p:=3) (A:=9*a) _ _ _ _ _ _ _ hr
    · simpa only [← Nat.mul_assoc] using h3.1
    · rw [h2.1]; omega
    · rw [h1.1]; omega
    · rw [h0]; omega
    · rw [h1.2]; omega
    · rw [h2.2]; omega
    · simpa only [← Nat.mul_assoc] using h3.2
  simpa only [Nat.mul_comm (2^a) 3] using hb

theorem two_part_three_axis_zero {b r : ℕ} (hb : 2 ≤ b) (hr : r ≤ 3) :
    ∀ s : ℕ, s ≤ 3 → ordProj[2] (3^b+r-s) ≤ 4*b := by
  have hN : 9 ≤ 3^b := by simpa using Nat.pow_le_pow_right (by decide : 0 < 3) hb
  have hnd : ¬ 2 ∣ 3^b := by
    intro h
    exact (by decide : ¬ 2 ∣ 3) ((by decide : Nat.Prime 2).dvd_of_dvd_pow h)
  have h0 := ordProj_eq_one_of_not_dvd hnd
  have h2 := ordProj_shift_of_not_dvd hnd (dvd_refl 2) (by omega : 2 ≤ 3^b)
  have h1 := two_part_three_power_neighbors (by omega : 1 ≤ b)
  have h3 := ordProj_scaled_neighbors (p:=2) (q:=3) (t:=b) (C:=1)
    (by decide) hb (by simp [Nat.Prime.factorization (by decide : Nat.Prime 3)])
    (two_part_three_power_neighbors (by omega : 1 ≤ b-1))
  simp only [one_mul] at h3
  apply window_bound_of_seven (by omega : 4 ≤ 3^b) (r:=r) (p:=2) (A:=4*b) _ _ _ _ _ _ _ hr
  · exact h3.1.trans (by omega)
  · rw [h2.1]; omega
  · exact h1.1
  · rw [h0]; omega
  · exact h1.2
  · rw [h2.2]; omega
  · exact h3.2.trans (by omega)

theorem two_part_three_axis_one {b r : ℕ} (hb : 2 ≤ b) (hr : r ≤ 3) :
    ∀ s : ℕ, s ≤ 3 → ordProj[2] (2*3^b+r-s) ≤ 8*b := by
  have hx : 9 ≤ 3^b := by simpa using Nat.pow_le_pow_right (by decide : 0 < 3) hb
  have hN : 4 ≤ 2*3^b := by omega
  have hd : 2 ∣ 2*3^b := dvd_mul_right 2 _
  have h1 := ordProj_shift_of_dvd hd (by decide : ¬ 2 ∣ 1) (by omega : 1 ≤ 2*3^b)
  have h3 := ordProj_shift_of_dvd hd (by decide : ¬ 2 ∣ 3) (by omega : 3 ≤ 2*3^b)
  have h2 := ordProj_mul_neighbors (p:=2) (c:=2) (x:=3^b) (C:=2)
    (by decide) (by omega) (by simp [Nat.Prime.factorization (by decide : Nat.Prime 2)]) (two_part_three_power_neighbors (by omega : 1 ≤ b))
  have h0 : ordProj[2] (2*3^b) = 2 := by simpa using ordProj_smooth_two 1 b
  apply window_bound_of_seven hN (r:=r) (p:=2) (A:=8*b) _ _ _ _ _ _ _ hr
  · rw [h3.1]; omega
  · simpa only [← Nat.mul_assoc] using h2.1
  · rw [h1.1]; omega
  · rw [h0]; omega
  · rw [h1.2]; omega
  · simpa only [← Nat.mul_assoc] using h2.2
  · rw [h3.2]; omega

end B699.SmoothWindow
