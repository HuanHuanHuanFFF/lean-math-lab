import research.tasks.«B686-Four».round5.worker.ThreePosition124

/-! A uniform residual-factor bound from the same degree-five/order-six contact.
This is conditional on three pairwise coprime groups occupying {1,2,4}.
The leftover s may contain any primes and is not assumed bounded. -/
namespace B686Round5Residual
open B686Round4Shift B686Round4K5 B686Round5Contact B686Round5Tail
open B686Round5Positions

theorem group_contact (n d P Q R : ℤ)
    (heq : product 5 (n + d) = 4 * product 5 n)
    (hPd : P ∣ d) (hQd : Q ∣ d) (hRd : R ∣ d)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4)
    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hQR : IsCoprime Q R)
    (hP6 : IsCoprime P (6 : ℤ)) (hQ6 : IsCoprime Q (6 : ℤ))
    (hR6 : IsCoprime R (6 : ℤ)) :
    (P * Q * R) ^ 6 ∣ combination (3 * (n + 3) - d) d := by
  have hp : P ∣ 3 * (n + 3) - d - 6 := by
    have hid : 3 * (n + 3) - d - 6 = 3 * (n + 1) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hP 3) hPd
  have hq : Q ∣ 3 * (n + 3) - d - 3 := by
    have hid : 3 * (n + 3) - d - 3 = 3 * (n + 2) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hQ 3) hQd
  have hr : R ∣ 3 * (n + 3) - d - (-3) := by
    have hid : 3 * (n + 3) - d - (-3) = 3 * (n + 4) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hR 3) hRd
  have hc := curve_of_original n d heq
  have hp6 := contact_combination1 _ _ _ hp hPd hP6 hc
  have hq6 := contact_combination2 _ _ _ hq hQd hQ6 hc
  have hr6 := contact_combination4 _ _ _ hr hRd hR6 hc
  rw [mul_pow, mul_pow]
  exact (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hp6 hq6) hr6

theorem bound_from_contact (n d s M : ℤ) (hn : 0 ≤ n) (hd : 20000 ≤ d)
    (hs : 0 < s) (hdM : d = s * M)
    (heq : p5 (n + d) = 4 * p5 n)
    (hcontact : M ^ 6 ∣ combination (error n d 3) d) : d < 20000 * s ^ 6 := by
  obtain ⟨hl, hu⟩ := refined_strip n d hn hd heq
  obtain ⟨hlo, hneg⟩ := optimized_bounds (error n d 3) d hd hl hu
  rw [optimized_eq_combination] at hlo hneg
  have hs6 : 0 < s ^ 6 := by positivity
  have hweighted : d ^ 6 ∣ s ^ 6 * combination (error n d 3) d := by
    have hid : d ^ 6 = s ^ 6 * M ^ 6 := by rw [hdM, mul_pow]
    rw [hid]
    exact mul_dvd_mul_left (s ^ 6) hcontact
  have hsize : d ^ 6 ≤ -(s ^ 6 * combination (error n d 3) d) :=
    Int.le_of_dvd (by nlinarith only [mul_pos hs6 (neg_pos.mpr hneg)])
      (dvd_neg.mpr hweighted)
  have hbound := mul_lt_mul_of_pos_left hlo hs6
  have hd5 : 0 < d ^ 5 := by positivity
  apply (mul_lt_mul_iff_right₀ hd5).mp
  nlinarith only [hsize, hbound]

theorem residual_position_bound (n m s P Q R : ℕ) (hm : n + 5 ≤ m) (hs : 0 < s)
    (hd : m - n = s * (P * Q * R))
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (hP6 : Nat.Coprime P 6) (hQ6 : Nat.Coprime Q 6) (hR6 : Nat.Coprime R 6)
    (heq : (4 : ℚ) = (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ)) :
    m - n < 20000 * s ^ 6 := by
  by_cases hsmall : m - n < 20000
  · have hs6 : 1 ≤ s ^ 6 := one_le_pow₀ (by omega)
    omega
  have hadd : n + (m - n) = m := by omega
  have heqN := (B686Target.ratio_iff 5 n m).mp heq
  have heqS : natProduct 5 (n + (m - n)) = 4 * natProduct 5 n := by
    simpa only [hadd, natProduct, B686Target.product] using heqN
  have heqZ := nat_shift_equation 5 n (m - n) heqS
  have hPd : P ∣ m - n := by
    rw [hd]
    exact dvd_mul_of_dvd_right (dvd_mul_of_dvd_left (dvd_mul_right P Q) R) s
  have hQd : Q ∣ m - n := by
    rw [hd]
    exact dvd_mul_of_dvd_right (dvd_mul_of_dvd_left (dvd_mul_left Q P) R) s
  have hRd : R ∣ m - n := by rw [hd]; exact dvd_mul_of_dvd_right (dvd_mul_left R (P * Q)) s
  have hcon := group_contact n (m - n : ℕ) P Q R heqZ
    (by exact_mod_cast hPd) (by exact_mod_cast hQd) (by exact_mod_cast hRd)
    (by exact_mod_cast hP) (by exact_mod_cast hQ) (by exact_mod_cast hR)
    hPQ.isCoprime hPR.isCoprime hQR.isCoprime hP6.isCoprime hQ6.isCoprime hR6.isCoprime
  have hb := bound_from_contact n (m - n : ℕ) s ((P : ℤ) * Q * R)
    (by omega) (by omega) (by omega) (by exact_mod_cast hd)
    (by simpa only [p5_eq_shift_product] using heqZ) hcon
  exact_mod_cast hb

/-- info: 'B686Round5Residual.group_contact' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms group_contact
/-- info: 'B686Round5Residual.residual_position_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms residual_position_bound
end B686Round5Residual
