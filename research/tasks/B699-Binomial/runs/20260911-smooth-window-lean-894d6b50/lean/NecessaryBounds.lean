import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.ActualCoefficients
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.TailArithmetic
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.SmallPart

namespace B699.SmoothWindow

theorem actual_I_pos {j k : ℕ} (hj : 5 ≤ j) (hk : 5 ≤ k) :
    0 < actualI j k := by
  have hi := actual_I_identity j k (by omega) (by omega)
  have hjz : (5:ℤ) ≤ j := by exact_mod_cast hj
  have hkz : (5:ℤ) ≤ k := by exact_mod_cast hk
  have hj1 : (0:ℤ) < j-1 := by omega
  have hk1 : (0:ℤ) < k-1 := by omega
  have hn3 : (0:ℤ) < j+k-3 := by omega
  have hn2 : (0:ℤ) < j+k-2 := by omega
  have hp : (0:ℤ) < j*k*(j-1)*(k-1)*(j+k-3)*(j+k-2) := by positivity
  nlinarith only [hi,hp]

theorem actual_I_upper {j k : ℕ} (hj : 5 ≤ j) (hk : 5 ≤ k) :
    128*actualI j k ≤ ((j:ℤ)+k)^2*(j+k-2)^3*(j+k-3) := by
  have hi := actual_I_identity j k (by omega) (by omega)
  have hjz : (5:ℤ) ≤ j := by exact_mod_cast hj
  have hkz : (5:ℤ) ≤ k := by exact_mod_cast hk
  have hj1 : (0:ℤ) < j-1 := by omega
  have hk1 : (0:ℤ) < k-1 := by omega
  have hn3 : (0:ℤ) < j+k-3 := by omega
  have hn2 : (0:ℤ) < j+k-2 := by omega
  have hxy : (4:ℤ)*j*k ≤ ((j:ℤ)+k)^2 := by nlinarith [sq_nonneg ((j:ℤ)-k)]
  have hxy1 : (4:ℤ)*(j-1)*(k-1) ≤ ((j:ℤ)+k-2)^2 := by
    nlinarith [sq_nonneg ((j:ℤ)-k)]
  have hprod := mul_le_mul hxy hxy1 (show (0:ℤ) ≤ 4*(j-1)*(k-1) by positivity)
    (sq_nonneg ((j:ℤ)+k))
  have hm := mul_le_mul_of_nonneg_right hprod
    (show (0:ℤ) ≤ (j+k-3)*(j+k-2) by positivity)
  nlinarith only [hm,hi]

theorem I_bound_of_coprime_factor {n j U V : ℕ}
    (hj : 5 ≤ j) (hjhalf : j ≤ n/2)
    (hUV : n.choose 4 = U*V) (hc : V.Coprime (n.choose j)) :
    2*((n:ℤ)-1)^2*(n-3) ≤ 9*(n-2)*(U:ℤ)^2 := by
  have hjn : j ≤ n := by omega
  have hk : 5 ≤ n-j := by omega
  have hn : 10 ≤ n := by omega
  have hV : V ∣ n.choose 4 := by rw [hUV]; exact dvd_mul_left V U
  have hd := (divisor_dvd_actual_invariants hj hjn hV hc).1
  have hVI : (V:ℤ)^2 ≤ actualI j (n-j) := Int.le_of_dvd (actual_I_pos hj hk) hd
  have hu := actual_I_upper hj hk
  have hsum : (j:ℤ) + (n-j:ℕ) = n := by exact_mod_cast Nat.add_sub_of_le hjn
  have hvbound : 128*(V:ℤ)^2 ≤ (n:ℤ)^2*(n-2)^3*(n-3) := by
    have hh := mul_le_mul_of_nonneg_left hVI (by norm_num : (0:ℤ) ≤ 128)
    rw [hsum] at hu
    exact hh.trans hu
  have hnum := choose_four_scaled n (by omega : 4 ≤ n)
  rw [hUV,Nat.cast_mul] at hnum
  have hUVsq := congrArg (fun z:ℤ ↦ z^2) hnum
  have hm := mul_le_mul_of_nonneg_right hvbound
    (show (0:ℤ) ≤ 576*(U:ℤ)^2 by positivity)
  have hnz : (10:ℤ) ≤ n := by exact_mod_cast hn
  have hn2 : (0:ℤ) < n-2 := by omega
  have hn3 : (0:ℤ) < n-3 := by omega
  have hcancel : (0:ℤ) < 64*(n:ℤ)^2*(n-2)^2*(n-3) := by positivity
  have hfinal :
      (64*(n:ℤ)^2*(n-2)^2*(n-3)) * (2*(n-1)^2*(n-3)) ≤
      (64*(n:ℤ)^2*(n-2)^2*(n-3)) * (9*(n-2)*(U:ℤ)^2) := by
    simp only [fallingFour] at hUVsq
    nlinarith only [hm,hUVsq]
  exact (mul_le_mul_iff_of_pos_left hcancel).mp hfinal

theorem smallPart23_large_of_noCommon {n j : ℕ} (hj : 5 ≤ j) (hjhalf : j ≤ n/2)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ n.choose 4 ∧ p ∣ n.choose j) :
    n < 4*smallPart23 (n.choose 4) := by
  have hN : n.choose 4 ≠ 0 := Nat.choose_ne_zero (by omega)
  have hc := largePart23_coprime_of_noCommon hN hno
  have hb := I_bound_of_coprime_factor hj hjhalf (smallPart23_mul_largePart23 (n.choose 4)).symm hc
  have hn : (10:ℤ) ≤ n := by exact_mod_cast (show 10 ≤ n by omega)
  have h := I_bound_forces_four_mul hn (Int.natCast_nonneg _) hb
  exact_mod_cast h

end B699.SmoothWindow

