import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.NecessaryBounds

namespace B699.SmoothWindow

theorem actual_W_neg {j k : ℕ} (hj : 5 ≤ j) (hk : 5 ≤ k) :
    actualW j k < 0 := by
  have hw := actual_W_identity j k (by omega) (by omega)
  have hjz : (5:ℤ) ≤ j := by exact_mod_cast hj
  have hkz : (5:ℤ) ≤ k := by exact_mod_cast hk
  have hj1 : (0:ℤ) < j-1 := by omega
  have hk1 : (0:ℤ) < k-1 := by omega
  have hn3 : (0:ℤ) < j+k-3 := by omega
  have hn2 : (0:ℤ) < j+k-2 := by omega
  have hq : 0 < discriminantQ j k := discriminantQ_pos hjz hkz
  have hp : (0:ℤ) < j^3*k^3*(j-1)^2*(k-1)^2*(j+k-3)^3*(j+k-2)^2*discriminantQ j k := by positivity
  nlinarith only [hw,hp]

theorem actual_W_upper {j k : ℕ} (hj : 5 ≤ j) (hk : 5 ≤ k) :
    262144*(-actualW j k) < ((j:ℤ)+k)^6*(j+k-1)*(j+k-2)^7*(j+k-3)^3 := by
  have hw := actual_W_identity j k (by omega) (by omega)
  have hjz : (5:ℤ) ≤ j := by exact_mod_cast hj
  have hkz : (5:ℤ) ≤ k := by exact_mod_cast hk
  have hj1 : (0:ℤ) < j-1 := by omega
  have hk1 : (0:ℤ) < k-1 := by omega
  have hn : (0:ℤ) < j+k := by omega
  have hn3 : (0:ℤ) < j+k-3 := by omega
  have hn2 : (0:ℤ) < j+k-2 := by omega
  have hq : 0 < discriminantQ j k := discriminantQ_pos hjz hkz
  have hxy : (4:ℤ)*j*k ≤ ((j:ℤ)+k)^2 := by nlinarith [sq_nonneg ((j:ℤ)-k)]
  have hxy1 : (4:ℤ)*(j-1)*(k-1) ≤ ((j:ℤ)+k-2)^2 := by
    nlinarith [sq_nonneg ((j:ℤ)-k)]
  have hp3 := pow_le_pow_left₀ (show (0:ℤ) ≤ 4*j*k by positivity) hxy 3
  have hp2 := pow_le_pow_left₀ (show (0:ℤ) ≤ 4*(j-1)*(k-1) by positivity) hxy1 2
  have hp := mul_le_mul hp3 hp2 (sq_nonneg _) (show (0:ℤ) ≤ (((j:ℤ)+k)^2)^3 by positivity)
  have hm := mul_le_mul_of_nonneg_right hp
    (show (0:ℤ) ≤ (j+k-3)^3*(j+k-2)^2*discriminantQ j k by positivity)
  have hq' : discriminantQ j k < ((j:ℤ)+k-1)*(j+k-2) := by
    have hjk : (0:ℤ) < j*k := by positivity
    simp only [discriminantQ]
    nlinarith only [hjk]
  have hqm := mul_lt_mul_of_pos_left hq'
    (show (0:ℤ) < ((j:ℤ)+k)^6*(j+k-2)^6*(j+k-3)^3 by positivity)
  nlinarith only [hm,hqm,hw]

theorem W_bound_of_coprime_factor {n j U V : ℕ}
    (hj : 5 ≤ j) (hjhalf : j ≤ n/2)
    (hUV : n.choose 4 = U*V) (hc : V.Coprime (n.choose j)) :
    ((n:ℤ)-1)^5*(n-3)^3 < 729*(n-2)*(U:ℤ)^6 := by
  have hjn : j ≤ n := by omega
  have hk : 5 ≤ n-j := by omega
  have hn : 10 ≤ n := by omega
  have hU : 0 < U := by
    have hh := Nat.choose_pos (show 4 ≤ n by omega)
    rw [hUV] at hh
    by_contra h
    have h0 : U = 0 := by omega
    simp [h0] at hh
  have hV : V ∣ n.choose 4 := by rw [hUV]; exact dvd_mul_left V U
  have hd := (divisor_dvd_actual_invariants hj hjn hV hc).2.2
  have hd' : (V:ℤ)^6 ∣ -actualW j (n-j) := dvd_neg.mpr hd
  have hVI : (V:ℤ)^6 ≤ -actualW j (n-j) :=
    Int.le_of_dvd (neg_pos.mpr (actual_W_neg hj hk)) hd'
  have hu := actual_W_upper hj hk
  have hsum : (j:ℤ) + (n-j:ℕ) = n := by exact_mod_cast Nat.add_sub_of_le hjn
  have hvbound : 262144*(V:ℤ)^6 < (n:ℤ)^6*(n-1)*(n-2)^7*(n-3)^3 := by
    have hh := mul_le_mul_of_nonneg_left hVI (by norm_num : (0:ℤ) ≤ 262144)
    rw [hsum] at hu
    exact hh.trans_lt hu
  have hnum := choose_four_scaled n (by omega : 4 ≤ n)
  rw [hUV,Nat.cast_mul] at hnum
  have hUV6 := congrArg (fun z:ℤ ↦ z^6) hnum
  have hUz : (0:ℤ) < U := by exact_mod_cast hU
  have hm := mul_lt_mul_of_pos_right hvbound
    (show (0:ℤ) < 191102976*(U:ℤ)^6 by positivity)
  have hnz : (10:ℤ) ≤ n := by exact_mod_cast hn
  have hn1 : (0:ℤ) < n-1 := by omega
  have hn2 : (0:ℤ) < n-2 := by omega
  have hn3 : (0:ℤ) < n-3 := by omega
  have hcancel : (0:ℤ) < 262144*(n:ℤ)^6*(n-1)*(n-2)^6*(n-3)^3 := by positivity
  have hfinal :
      (262144*(n:ℤ)^6*(n-1)*(n-2)^6*(n-3)^3) * ((n-1)^5*(n-3)^3) <
      (262144*(n:ℤ)^6*(n-1)*(n-2)^6*(n-3)^3) * (729*(n-2)*(U:ℤ)^6) := by
    simp only [fallingFour] at hUV6
    nlinarith only [hm,hUV6]
  exact (mul_lt_mul_iff_of_pos_left hcancel).mp hfinal

theorem W_bound_of_noCommon {n j : ℕ} (hj : 5 ≤ j) (hjhalf : j ≤ n/2)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ n.choose 4 ∧ p ∣ n.choose j) :
    ((n:ℤ)-1)^5*(n-3)^3 < 729*(n-2)*(smallPart23 (n.choose 4):ℤ)^6 := by
  have hN : n.choose 4 ≠ 0 := Nat.choose_ne_zero (by omega)
  exact W_bound_of_coprime_factor hj hjhalf (smallPart23_mul_largePart23 (n.choose 4)).symm
    (largePart23_coprime_of_noCommon hN hno)

end B699.SmoothWindow

