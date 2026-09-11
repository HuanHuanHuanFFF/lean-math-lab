import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.PowerNeighbors
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.SmoothCollision

namespace B699.SmoothWindow

theorem ordProj_eq_one_of_not_dvd {p x : ℕ} (h : ¬ p ∣ x) : ordProj[p] x = 1 := by
  simp [Nat.factorization_eq_zero_of_not_dvd h]

theorem window_bound_of_seven {N p A : ℕ} (hN : 4 ≤ N)
    (h3 : ordProj[p] (N-3) ≤ A) (h2 : ordProj[p] (N-2) ≤ A)
    (h1 : ordProj[p] (N-1) ≤ A) (h0 : ordProj[p] N ≤ A)
    (g1 : ordProj[p] (N+1) ≤ A) (g2 : ordProj[p] (N+2) ≤ A)
    (g3 : ordProj[p] (N+3) ≤ A) {r : ℕ} (hr : r ≤ 3) :
    ∀ s : ℕ, s ≤ 3 → ordProj[p] (N+r-s) ≤ A := by
  intro s hs
  have hc : N+r-s = N-3 ∨ N+r-s = N-2 ∨ N+r-s = N-1 ∨
      N+r-s = N ∨ N+r-s = N+1 ∨ N+r-s = N+2 ∨ N+r-s = N+3 := by omega
  rcases hc with h|h|h|h|h|h|h
  · simpa only [h] using h3
  · simpa only [h] using h2
  · simpa only [h] using h1
  · simpa only [h] using h0
  · simpa only [h] using g1
  · simpa only [h] using g2
  · simpa only [h] using g3


theorem power_predecessor {q t : ℕ} (ht : 1 ≤ t) : q^t = q*q^(t-1) := by
  calc
    q^t = q^(t-1+1) := by rw [Nat.sub_add_cancel ht]
    _ = q*q^(t-1) := by rw [pow_succ,mul_comm]

theorem ordProj_scaled_neighbors {p q t C A : ℕ} (hq : 2 ≤ q) (ht : 2 ≤ t)
    (hc : ordProj[p] q = C)
    (hb : ordProj[p] (q^(t-1)-1) ≤ A ∧ ordProj[p] (q^(t-1)+1) ≤ A) :
    ordProj[p] (q^t-q) ≤ C*A ∧ ordProj[p] (q^t+q) ≤ C*A := by
  have hx : 2 ≤ q^(t-1) := by
    have h := Nat.pow_le_pow_right (by omega : 0 < q) (by omega : 1 ≤ t-1)
    simp only [pow_one] at h
    exact hq.trans h
  have hm : q^t-q = q*(q^(t-1)-1) := by
    rw [Nat.mul_sub,mul_one,← power_predecessor (by omega : 1 ≤ t)]
  have hp : q^t+q = q*(q^(t-1)+1) := by
    rw [Nat.mul_add,mul_one,← power_predecessor (by omega : 1 ≤ t)]
  rw [hm,hp,Nat.ordProj_mul p (by omega : q ≠ 0) (by omega : q^(t-1)-1 ≠ 0),
    Nat.ordProj_mul p (by omega : q ≠ 0) (by omega : q^(t-1)+1 ≠ 0),hc]
  exact ⟨Nat.mul_le_mul_left C hb.1,Nat.mul_le_mul_left C hb.2⟩

theorem ordProj_shift_of_not_dvd {p N d : ℕ} (hN : ¬ p ∣ N)
    (hd : p ∣ d) (hle : d ≤ N) :
    ordProj[p] (N-d) = 1 ∧ ordProj[p] (N+d) = 1 := by
  constructor
  · apply ordProj_eq_one_of_not_dvd
    intro h
    apply hN
    rw [← Nat.sub_add_cancel hle]
    exact dvd_add h hd
  · apply ordProj_eq_one_of_not_dvd
    intro h
    have hh := Nat.dvd_sub h hd
    exact hN (by simpa only [Nat.add_sub_cancel] using hh)

theorem ordProj_shift_of_dvd {p N d : ℕ} (hN : p ∣ N)
    (hd : ¬ p ∣ d) (hle : d ≤ N) :
    ordProj[p] (N-d) = 1 ∧ ordProj[p] (N+d) = 1 := by
  constructor
  · apply ordProj_eq_one_of_not_dvd
    intro h
    have hh := Nat.dvd_sub hN h
    have he : N-(N-d) = d := by omega
    exact hd (he ▸ hh)
  · apply ordProj_eq_one_of_not_dvd
    intro h
    have hh := Nat.dvd_sub h hN
    exact hd (by simpa only [Nat.add_sub_cancel_left] using hh)

theorem ordProj_mul_neighbors {p c x C A : ℕ} (hc : 0 < c) (hx : 2 ≤ x)
    (hpart : ordProj[p] c = C)
    (hb : ordProj[p] (x-1) ≤ A ∧ ordProj[p] (x+1) ≤ A) :
    ordProj[p] (c*x-c) ≤ C*A ∧ ordProj[p] (c*x+c) ≤ C*A := by
  have hm : c*x-c = c*(x-1) := by rw [Nat.mul_sub,mul_one]
  have hp : c*x+c = c*(x+1) := by rw [Nat.mul_add,mul_one]
  rw [hm,hp,Nat.ordProj_mul p (by omega : c ≠ 0) (by omega : x-1 ≠ 0),
    Nat.ordProj_mul p (by omega : c ≠ 0) (by omega : x+1 ≠ 0),hpart]
  exact ⟨Nat.mul_le_mul_left C hb.1,Nat.mul_le_mul_left C hb.2⟩

end B699.SmoothWindow
