/- leanprover/lean4:v4.29.1  mathlib v4.29.1 -/
import ErdosProblems.Erdos686MatchingCompression
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# Erdős 686: uniform arithmetic core for even Runge tails

For `k=2r`, the centered quotient equation has arguments

`v=2n+k+1`, `w=v+2d`.

This module proves the uniform rational window

`(r-1)w < r v`,

and its power consequence `w^q < 3v^q` for every `q<r`.  It also banks the
generic integral polynomial-part trap used by every even-row Runge
certificate.  Construction of the polynomial-part certificate for arbitrary
`r` remains outside this module; no large-`k` target is claimed here.
-/

namespace Erdos686
namespace Erdos686Variant

private lemma two_mul_r_pow_lt_r_add_one_pow {r : ℕ} (hr : 2 ≤ r) :
    2 * r ^ r < (r + 1) ^ r := by
  let a : ℚ := 1 / r
  have ha : (-2 : ℚ) ≤ a := by
    have ha0 : (0 : ℚ) ≤ a := by
      dsimp [a]
      positivity
    linarith
  have hbern : (1 : ℚ) + ((r - 1 : ℕ) : ℚ) * a ≤ (1 + a) ^ (r - 1) :=
    one_add_mul_le_pow ha (r - 1)
  have hlinear : (2 : ℚ) <
      (1 + ((r - 1 : ℕ) : ℚ) * a) * (1 + a) := by
    dsimp [a]
    have hr0 : (0 : ℚ) < r := by exact_mod_cast (by omega : 0 < r)
    have hr2 : (2 : ℚ) ≤ r := by exact_mod_cast hr
    rw [Nat.cast_sub (by omega : 1 ≤ r)]
    field_simp
    ring_nf
    nlinarith
  have hfactor : (0 : ℚ) < 1 + a := by
    dsimp [a]
    positivity
  have hratio : (2 : ℚ) < (((r : ℚ) + 1) / (r : ℚ)) ^ r := by
    calc
      (2 : ℚ) < (1 + ((r - 1 : ℕ) : ℚ) * a) * (1 + a) := hlinear
      _ ≤ (1 + a) ^ (r - 1) * (1 + a) :=
        mul_le_mul_of_nonneg_right hbern hfactor.le
      _ = (1 + a) ^ r := by
        rw [← pow_succ]
        congr 1
        omega
      _ = (((r : ℚ) + 1) / (r : ℚ)) ^ r := by
        congr 1
        dsimp [a]
        field_simp
  have hdenPow : (0 : ℚ) < (r : ℚ) ^ r := by positivity
  rw [div_pow] at hratio
  have hcross : (2 : ℚ) * (r : ℚ) ^ r < ((r : ℚ) + 1) ^ r :=
    (lt_div_iff₀ hdenPow).mp hratio
  exact_mod_cast hcross

/-- A quotient-four equation in an even row has the sharper elementary
window `2r*d < 2*(n+2r)`. -/
theorem two_r_mul_gap_lt_two_mul_n_add_two_r_of_four_solution
    {r n d : ℕ} (hr : 2 ≤ r)
    (heq : blockProduct (2 * r) (n + d) =
      4 * blockProduct (2 * r) n) :
    (2 * r) * d < 2 * (n + 2 * r) := by
  obtain ⟨hwin, _⟩ := ratio_window_four_nat heq
  by_contra hnot
  have hlin : (2 * r + 2) * (n + 2 * r) ≤
      (2 * r) * (n + d + 2 * r) := by
    have hge : 2 * (n + 2 * r) ≤ (2 * r) * d := Nat.le_of_not_gt hnot
    nlinarith
  have hpow := Nat.pow_le_pow_left hlin (2 * r)
  have hpow' :
      (2 * r + 2) ^ (2 * r) * (n + 2 * r) ^ (2 * r) ≤
        (2 * r) ^ (2 * r) * (n + d + 2 * r) ^ (2 * r) := by
    simpa [Nat.mul_pow, mul_assoc, mul_comm, mul_left_comm] using hpow
  have hcomb :
      (2 * r + 2) ^ (2 * r) * (n + 2 * r) ^ (2 * r) ≤
        (4 * (2 * r) ^ (2 * r)) * (n + 2 * r) ^ (2 * r) := by
    calc
      (2 * r + 2) ^ (2 * r) * (n + 2 * r) ^ (2 * r)
          ≤ (2 * r) ^ (2 * r) * (n + d + 2 * r) ^ (2 * r) := hpow'
      _ ≤ (2 * r) ^ (2 * r) * (4 * (n + 2 * r) ^ (2 * r)) :=
        Nat.mul_le_mul_left ((2 * r) ^ (2 * r)) hwin
      _ = (4 * (2 * r) ^ (2 * r)) * (n + 2 * r) ^ (2 * r) := by ring
  have hbase : 0 < (n + 2 * r) ^ (2 * r) := Nat.pow_pos (by omega)
  have hcancel : (2 * r + 2) ^ (2 * r) ≤ 4 * (2 * r) ^ (2 * r) :=
    Nat.le_of_mul_le_mul_right hcomb hbase
  have hstrict : 4 * (2 * r) ^ (2 * r) < (2 * r + 2) ^ (2 * r) := by
    have hhalf := two_mul_r_pow_lt_r_add_one_pow hr
    have hsquare := Nat.mul_self_lt_mul_self hhalf
    have hmul :
        2 ^ (2 * r) * ((2 * r ^ r) * (2 * r ^ r)) <
          2 ^ (2 * r) * (((r + 1) ^ r) * ((r + 1) ^ r)) :=
      (Nat.mul_lt_mul_left (by positivity : 0 < 2 ^ (2 * r))).2 hsquare
    calc
      4 * (2 * r) ^ (2 * r) =
          2 ^ (2 * r) * ((2 * r ^ r) * (2 * r ^ r)) := by
        rw [mul_pow, pow_mul]
        ring
      _ < 2 ^ (2 * r) * (((r + 1) ^ r) * ((r + 1) ^ r)) := hmul
      _ = (2 * r + 2) ^ (2 * r) := by
        rw [show 2 * r + 2 = 2 * (r + 1) by ring, mul_pow, pow_mul]
        ring
  exact (Nat.not_lt_of_ge hcancel) hstrict

/-- At an even row `k=2r`, the centered arguments are closer than
`r/(r-1)`. -/
theorem even_center_ratio_cross_bound_of_four_solution
    {r n d : ℕ} (hr : 2 ≤ r) (hd : 2 * r ≤ d)
    (heq : blockProduct (2 * r) (n + d) =
      4 * blockProduct (2 * r) n) :
    (r - 1) * (2 * (n + d) + (2 * r + 1)) <
      r * (2 * n + (2 * r + 1)) := by
  have hwindow := two_r_mul_gap_lt_two_mul_n_add_two_r_of_four_solution
    (r := r) (n := n) (d := d) hr heq
  obtain ⟨s, rfl⟩ : ∃ s : ℕ, r = s + 2 := ⟨r - 2, by omega⟩
  have hs : s + 2 - 1 = s + 1 := by omega
  rw [hs]
  nlinarith

private lemma real_ratio_pow_lt_exp_one
    {m q : ℕ} {x : ℝ} (hm : 1 ≤ m) (hq : q ≤ m)
    (hx0 : 0 ≤ x) (hx : x < 1 + 1 / (m : ℝ)) :
    x ^ q < Real.exp 1 := by
  by_cases hq0 : q = 0
  · subst q
    simpa using Real.one_lt_exp_iff.mpr (by norm_num : (0 : ℝ) < 1)
  have hqpos : 0 < q := Nat.pos_of_ne_zero hq0
  have hmpos : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  have hbasepos : (0 : ℝ) < 1 + 1 / (m : ℝ) := by positivity
  have hpowlt : x ^ q < (1 + 1 / (m : ℝ)) ^ q :=
    pow_lt_pow_left₀ hx hx0 hqpos.ne'
  have hbaseexp : (1 : ℝ) + 1 / (m : ℝ) ≤ Real.exp (1 / (m : ℝ)) := by
    simpa [add_comm] using Real.add_one_le_exp (1 / (m : ℝ))
  have hpowe : (1 + 1 / (m : ℝ)) ^ q ≤
      (Real.exp (1 / (m : ℝ))) ^ q :=
    pow_le_pow_left₀ hbasepos.le hbaseexp q
  have hexpid : (Real.exp (1 / (m : ℝ))) ^ q =
      Real.exp ((q : ℝ) / (m : ℝ)) := by
    rw [← Real.exp_nat_mul]
    congr 1
    field_simp
  have hqm : (q : ℝ) / (m : ℝ) ≤ 1 := by
    rw [div_le_one₀ hmpos]
    exact_mod_cast hq
  calc
    x ^ q < (1 + 1 / (m : ℝ)) ^ q := hpowlt
    _ ≤ (Real.exp (1 / (m : ℝ))) ^ q := hpowe
    _ = Real.exp ((q : ℝ) / (m : ℝ)) := hexpid
    _ ≤ Real.exp 1 := Real.exp_le_exp.mpr hqm

/-- Exact power form of the centered-ratio estimate. -/
theorem pow_lt_three_mul_pow_of_cross_ratio
    {r q v w : ℕ} (hr : 2 ≤ r) (hv : 0 < v) (hq : q < r)
    (hcross : (r - 1) * w < r * v) :
    w ^ q < 3 * v ^ q := by
  have hm : 1 ≤ r - 1 := by omega
  have hqle : q ≤ r - 1 := by omega
  have hvR : (0 : ℝ) < v := by exact_mod_cast hv
  have hratio0 : (0 : ℝ) ≤ (w : ℝ) / (v : ℝ) := by positivity
  have hcrossR : ((r - 1 : ℕ) : ℝ) * (w : ℝ) <
      (r : ℝ) * (v : ℝ) := by exact_mod_cast hcross
  have hratio : (w : ℝ) / (v : ℝ) <
      1 + 1 / ((r - 1 : ℕ) : ℝ) := by
    have hmR : (0 : ℝ) < (r - 1 : ℕ) := by exact_mod_cast (by omega : 0 < r - 1)
    have hcastsub : (((r - 1 : ℕ) : ℝ)) = (r : ℝ) - 1 := by
      rw [Nat.cast_sub (by omega : 1 ≤ r)]
      norm_num
    rw [div_lt_iff₀ hvR]
    rw [show (1 + 1 / ((r - 1 : ℕ) : ℝ)) * (v : ℝ) =
        (r : ℝ) * (v : ℝ) / ((r - 1 : ℕ) : ℝ) by
      field_simp [ne_of_gt hmR]
      exact_mod_cast (show r - 1 + 1 = r by omega)]
    rw [lt_div_iff₀ hmR]
    simpa [mul_assoc, mul_comm] using hcrossR
  have hexp := real_ratio_pow_lt_exp_one hm hqle hratio0 hratio
  have hthree : Real.exp 1 < (3 : ℝ) := Real.exp_one_lt_three
  have hpowdiv : ((w : ℝ) / (v : ℝ)) ^ q < 3 :=
    lt_trans hexp hthree
  rw [div_pow] at hpowdiv
  have hvpow : (0 : ℝ) < (v : ℝ) ^ q := by positivity
  have hcast : (w : ℝ) ^ q < 3 * (v : ℝ) ^ q :=
    (div_lt_iff₀ hvpow).mp hpowdiv
  exact_mod_cast hcast

/-- Equation-facing power bound for every prospective even-row Runge
deficit, whose degree is strictly below `r`. -/
theorem even_center_pow_lt_three_of_four_solution
    {r q n d : ℕ} (hr : 2 ≤ r) (hd : 2 * r ≤ d) (hq : q < r)
    (heq : blockProduct (2 * r) (n + d) =
      4 * blockProduct (2 * r) n) :
    (2 * (n + d) + (2 * r + 1)) ^ q <
      3 * (2 * n + (2 * r + 1)) ^ q := by
  apply pow_lt_three_mul_pow_of_cross_ratio hr (by omega) hq
  exact even_center_ratio_cross_bound_of_four_solution hr hd heq

/-- Generic integral polynomial-part trap.  If `T^2=C^2S+D` at two
arguments, `S_w=4S_v`, the deficit difference is smaller than one integral
factor step, and the two deficits cannot have ratio four, then the data are
inconsistent. -/
theorem integral_runge_trap
    {Sw Sv Tw Tv Dw Dv C : ℤ}
    (hTw : 0 < Tw) (hTv : 0 < Tv)
    (hw : Tw ^ 2 = C ^ 2 * Sw + Dw)
    (hv : Tv ^ 2 = C ^ 2 * Sv + Dv)
    (hS : Sw = 4 * Sv)
    (hsmall : |Dw - 4 * Dv| < Tw + 2 * Tv)
    (hratio : |Dw| < 4 * |Dv|) : False := by
  let m := Tw - 2 * Tv
  let X := Tw + 2 * Tv
  have hX : 0 < X := by dsimp [X]; omega
  have hmX : m * X = Dw - 4 * Dv := by
    dsimp [m, X]
    calc
      (Tw - 2 * Tv) * (Tw + 2 * Tv) = Tw ^ 2 - 4 * Tv ^ 2 := by ring
      _ = Dw - 4 * Dv := by rw [hw, hv, hS]; ring
  have hmabs : |m| * X = |Dw - 4 * Dv| := by
    rw [← hmX, abs_mul, abs_of_pos hX]
  have hmzero : m = 0 := by
    by_contra hm0
    have hmone : (1 : ℤ) ≤ |m| := Int.add_one_le_iff.mpr (abs_pos.mpr hm0)
    have hle : X ≤ |m| * X := by nlinarith
    rw [hmabs] at hle
    omega
  have hDeq : Dw = 4 * Dv := by
    have : Dw - 4 * Dv = 0 := by
      rw [← hmX, hmzero]
      ring
    omega
  rw [hDeq, abs_mul] at hratio
  norm_num at hratio

#print axioms two_r_mul_gap_lt_two_mul_n_add_two_r_of_four_solution
#print axioms even_center_ratio_cross_bound_of_four_solution
#print axioms pow_lt_three_mul_pow_of_cross_ratio
#print axioms even_center_pow_lt_three_of_four_solution
#print axioms integral_runge_trap

end Erdos686Variant
end Erdos686
