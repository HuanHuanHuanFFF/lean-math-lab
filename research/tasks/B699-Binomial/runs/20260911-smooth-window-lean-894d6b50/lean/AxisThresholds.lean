import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.NecessaryW

namespace B699.SmoothWindow

theorem two_axis_ratio {a : ℕ} (ha : 40 ≤ a) : (a+1)^6 < 2*a^6 := by
  obtain ⟨t,rfl⟩ := Nat.exists_eq_add_of_le ha
  have h : 0 < t^6+234*t^5+22785*t^4+1181580*t^3+
      34413585*t^2+533662794*t+3441895759 := by positivity
  nlinarith only [h]

theorem three_axis_ratio {b : ℕ} (hb : 24 ≤ b) : (b+1)^6 < 3*b^6 := by
  obtain ⟨t,rfl⟩ := Nat.exists_eq_add_of_le hb
  have h : 0 < 2*t^6+282*t^5+16545*t^4+516940*t^3+
      9070545*t^2+84733482*t+329168303 := by positivity
  nlinarith only [h]

theorem two_exponential_dominates {a : ℕ} (ha : 40 ≤ a) : 729*a^6 < 4*2^a := by
  induction a,ha using Nat.le_induction with
  | base => norm_num
  | succ a ha ih =>
    calc
      729*(a+1)^6 < 729*(2*a^6) := Nat.mul_lt_mul_of_pos_left (two_axis_ratio ha) (by decide)
      _ = 2*(729*a^6) := by ring
      _ < 2*(4*2^a) := Nat.mul_lt_mul_of_pos_left ih (by decide)
      _ = 4*2^(a+1) := by ring

theorem three_exponential_dominates {b : ℕ} (hb : 24 ≤ b) : 1024*b^6 < 3^b := by
  induction b,hb using Nat.le_induction with
  | base => norm_num
  | succ b hb ih =>
    calc
      1024*(b+1)^6 < 1024*(3*b^6) := Nat.mul_lt_mul_of_pos_left (three_axis_ratio hb) (by decide)
      _ = 3*(1024*b^6) := by ring
      _ < 3*3^b := Nat.mul_lt_mul_of_pos_left ih (by decide)
      _ = 3^(b+1) := by ring

theorem two_axis_exponent_lt {a n U : ℕ} (hn : 2^a ≤ n)
    (hU : 4*U ≤ 3*a*n)
    (hW : ((n:ℤ)-1)^5*(n-3)^3 < 729*(n-2)*(U:ℤ)^6) : a < 40 := by
  by_contra ha
  have ha40 : 40 ≤ a := by omega
  have hpow := Nat.pow_le_pow_right (by decide : 0 < 2) ha40
  have hn44 : 44 ≤ n := by norm_num at hpow; omega
  have hnz : (44:ℤ) ≤ n := by exact_mod_cast hn44
  have hs := W_bound_sharp hnz hW
  have hUz : (4:ℤ)*U ≤ 3*a*n := by exact_mod_cast hU
  have h6 := pow_le_pow_left₀ (show (0:ℤ) ≤ 4*U by positivity) hUz 6
  have hp : (0:ℤ) < (n:ℤ)^6 := by
    have hnp : (0:ℤ) < n := by omega
    positivity
  have hm : (n:ℤ)^6*(4*n) < (n:ℤ)^6*(729*(a:ℤ)^6) := by nlinarith only [hs,h6]
  have hc := (mul_lt_mul_iff_of_pos_left hp).mp hm
  have hd : (729:ℤ)*(a:ℤ)^6 < 4*(2^a:ℕ) := by exact_mod_cast two_exponential_dominates ha40
  have hn' : (2^a:ℕ) ≤ (n:ℤ) := by exact_mod_cast hn
  nlinarith only [hc,hd,hn']

theorem three_axis_exponent_lt {b n U : ℕ} (hn : 3^b ≤ n)
    (hU : U ≤ b*n)
    (hW : ((n:ℤ)-1)^5*(n-3)^3 < 729*(n-2)*(U:ℤ)^6) : b < 24 := by
  by_contra hb
  have hb24 : 24 ≤ b := by omega
  have hpow := Nat.pow_le_pow_right (by decide : 0 < 3) hb24
  have hn44 : 44 ≤ n := by norm_num at hpow; omega
  have hnz : (44:ℤ) ≤ n := by exact_mod_cast hn44
  have hs := W_bound_sharp hnz hW
  have hUz : (U:ℤ) ≤ b*n := by exact_mod_cast hU
  have h6 := pow_le_pow_left₀ (Int.natCast_nonneg U) hUz 6
  have hp : (0:ℤ) < (n:ℤ)^6 := by
    have hnp : (0:ℤ) < n := by omega
    positivity
  have hm : (n:ℤ)^6*n < (n:ℤ)^6*(1024*(b:ℤ)^6) := by nlinarith only [hs,h6]
  have hc := (mul_lt_mul_iff_of_pos_left hp).mp hm
  have hd : (1024:ℤ)*(b:ℤ)^6 < (3^b:ℕ) := by exact_mod_cast three_exponential_dominates hb24
  have hn' : (3^b:ℕ) ≤ (n:ℤ) := by exact_mod_cast hn
  nlinarith only [hc,hd,hn']

end B699.SmoothWindow
