import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.InfiniteTail
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteCoverage
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.ExplicitFamilies

namespace B699.SmoothWindow

/-- The full 3-smooth four-term window, for every exponent and every legal j. -/
theorem smooth_window_i4 (a b r j : ℕ) (hr : r ≤ 3)
    (hj : 5 ≤ j) (hjhalf : j ≤ (2^a*3^b+r)/2) :
    ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ (2^a*3^b+r).choose 4 ∧
      p ∣ (2^a*3^b+r).choose j := by
  by_contra hno
  obtain ⟨ha,hb,hmin⟩ := smooth_exponents_bounded_of_noCommon hr hj hjhalf hno
  have hc := bounded_window_common ha hb hmin hr (by omega : 10 ≤ 2^a*3^b+r)
  exact hno (hc j hj hjhalf)

/-- One prime serves every eligible i for this fixed row n and index j. -/
theorem smooth_window_simultaneous (a b r m j : ℕ) (hr : r ≤ 3) (hm : 4 ≤ m)
    (hn : 2^a*3^b+r ≡ 4 [MOD primeProduct m])
    (hj : 5 ≤ j) (hjhalf : j ≤ (2^a*3^b+r)/2) :
    ∃ p : ℕ, p.Prime ∧ m < p ∧ p ∣ (2^a*3^b+r).choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ m → i < j → p ∣ (2^a*3^b+r).choose i :=
  same_prime_above_of_product_congruence hm (smooth_window_i4 a b r j hr hj hjhalf) hn

theorem smooth_window_sixty (k j : ℕ) (hk : 1 ≤ k)
    (hj : 5 ≤ j) (hjhalf : j ≤ 2^(60*k+2)/2) :
    ∃ p : ℕ, p.Prime ∧ 17 ≤ p ∧ p ∣ (2^(60*k+2)).choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ 14 → i < j → p ∣ (2^(60*k+2)).choose i :=
  simultaneous_sixty_family k j hk hj hjhalf

theorem smooth_window_factorial (m k j : ℕ) (hm : 5 ≤ m) (hk : 1 ≤ k)
    (hj : 5 ≤ j) (hjhalf : j ≤ 2^(m.factorial*k+2)/2) :
    ∃ p : ℕ, p.Prime ∧ m < p ∧ p ∣ (2^(m.factorial*k+2)).choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ m → i < j → p ∣ (2^(m.factorial*k+2)).choose i :=
  simultaneous_factorial_family hm k j hk hj hjhalf

end B699.SmoothWindow
