import research.tasks.«B686-Four».round6.b.SumTwoPositions

/-! The prime 5 loses one power when assigned to a root of the sum modulus,
but the special root coefficients restore the full second-order condition. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000

namespace B686Round6B
open B686Round4Shift B686Round4Cubic B686Round4K5

def rootB : ℕ → ℤ
  | 1 => 10 | 2 => -1 | 3 => 0 | 4 => 1 | 5 => -10 | _ => 0
def rootC : ℕ → ℤ
  | 1 => 7 | 2 => 1 | 3 => -1 | 4 => 1 | 5 => 7 | _ => 0
def rootE : ℕ → ℤ
  | 1 => 2 | 2 => 1 | 3 => 0 | 4 => -1 | 5 => -2 | _ => 0

def rootPolynomial (i : ℕ) (y : ℤ) : ℤ :=
  constantTerm i * y + 5 * rootB i * y ^ 2 + 5 * rootC i * y ^ 3 +
    5 * rootE i * y ^ 4 + y ^ 5

theorem product_at_root (n : ℤ) (i : ℕ) (hi : i ∈ Finset.Icc 1 5) :
    product 5 n = rootPolynomial i (n + i) := by
  rw [at_position n i hi]
  obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
  interval_cases i <;>
    norm_num [rootPolynomial, constantTerm, linearTerm, remainder, rootB, rootC, rootE] <;> ring

/-- Exact identity behind the recovered fifth-prime square. -/
theorem five_contact_raw (r u v a b c e : ℤ)
    (heq : a * (5*r*u-25*r*v) + 5*b*(5*r*u-25*r*v)^2 +
        5*c*(5*r*u-25*r*v)^3 + 5*e*(5*r*u-25*r*v)^4 + (5*r*u-25*r*v)^5 =
      -4 * (a*(5*r*u) + 5*b*(5*r*u)^2 + 5*c*(5*r*u)^3 +
        5*e*(5*r*u)^4 + (5*r*u)^5)) :
    (25 * r) ^ 2 ∣ a * (5 * (5 * r * u) - 25 * r * v) := by
  let Q := b*(u^2-2*u*v+5*v^2) + c*r*((u-5*v)^3+4*u^3) +
    5*e*r^2*((u-5*v)^4+4*u^4) + 5*r^3*((u-5*v)^5+4*u^5)
  refine ⟨-Q, ?_⟩
  dsimp [Q]
  nlinarith only [heq]

theorem five_sum_slot_square (n m r : ℤ) (i : ℕ) (hi : i ∈ Finset.Icc 1 5)
    (hS : 25 * r ∣ n + m + 6) (hy : 5 * r ∣ n + i)
    (h6 : IsCoprime (25 * r) (6 : ℤ))
    (heq : product 5 m = 4 * product 5 n) :
    (25 * r) ^ 2 ∣ 5 * (n + i) - (n + m + 6) := by
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, hv⟩ := hS
  have href : rootPolynomial i (n + i - (n + m + 6)) = -4 * rootPolynomial i (n + i) := by
    have ht : product 5 (n - (n + m + 6)) = -4 * product 5 n := by
      rw [product_reflection, heq]
      ring
    rw [product_at_root _ i hi, product_at_root n i hi] at ht
    convert ht using 1 <;> congr 1 <;> ring
  rw [hu, hv] at href
  have hraw := five_contact_raw r u v (constantTerm i) (rootB i) (rootC i) (rootE i) href
  have hca : constantTerm i ∣ (6 : ℤ) ^ 3 := by
    obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
    interval_cases i <;> norm_num [constantTerm]
  have hcop : IsCoprime (25 * r) (constantTerm i) :=
    (h6.pow_right (n := 3)).of_isCoprime_of_dvd_right hca
  have hout := (hcop.pow_left (m := 2)).dvd_of_dvd_mul_left hraw
  simpa only [hu, hv] using hout

/-- Every five consecutive natural factors contain a multiple of 5. -/
theorem five_divides_product (n : ℕ) : 5 ∣ natProduct 5 n := by
  let i := 5 - n % 5
  have hi : i ∈ Finset.Icc 1 5 := by
    dsimp [i]
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  have hni : 5 ∣ n + i := by
    refine ⟨n / 5 + 1, ?_⟩
    dsimp [i]
    omega
  exact dvd_trans hni (Finset.dvd_prod_of_mem (fun i : ℕ => n + i) hi)

def centered (x : ℤ) : ℤ := x ^ 5 - 5 * x ^ 3 + 4 * x

theorem product_centered (n : ℤ) : product 5 n = centered (n + 3) := by
  rw [B686Round4Cubic.product_five]
  dsimp [centered]
  ring

/-- Any sum divisible by 5 is automatically divisible by 25 in an original solution. -/
theorem sum_five_implies_twentyfive (n m : ℕ) (h5 : 5 ∣ n + m + 6)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    25 ∣ n + m + 6 := by
  let s : ℤ := n + m + 6
  let y : ℤ := n + 3
  let D : ℤ := 5 * y ^ 4 - 15 * y ^ 2 + 4
  have heqZ : product 5 (m : ℤ) = 4 * product 5 (n : ℤ) := by
    rw [← cast_product, ← cast_product]
    exact_mod_cast heq
  have href : centered (y - s) = -4 * centered y := by
    have ht : product 5 ((n : ℤ) - s) = -4 * product 5 n := by
      dsimp [s]
      rw [product_reflection, heqZ]
      ring
    rw [product_centered, product_centered] at ht
    convert ht using 1 <;> congr 1 <;> dsimp [y] <;> ring
  have hy5 : (5 : ℤ) ∣ centered y := by
    have ht : (5 : ℤ) ∣ product 5 n := by
      rw [← cast_product]
      exact_mod_cast five_divides_product n
    simpa only [product_centered, y] using ht
  have hs5 : (5 : ℤ) ∣ s := by dsimp [s]; exact_mod_cast h5
  have hsq : (25 : ℤ) ∣ s ^ 2 := by
    obtain ⟨t, ht⟩ := hs5
    exact ⟨t ^ 2, by rw [ht]; ring⟩
  have hP : (25 : ℤ) ∣ 5 * centered y := by
    obtain ⟨t, ht⟩ := hy5
    exact ⟨t, by rw [ht]; ring⟩
  have hraw : (25 : ℤ) ∣ s * D := by
    have ht := dvd_add hP (dvd_mul_of_dvd_left hsq
      (10*y^3-10*y^2*s+5*y*s^2-s^3-15*y+5*s))
    have hid : 5 * centered y + s ^ 2 * (10*y^3-10*y^2*s+5*y*s^2-s^3-15*y+5*s) = s * D := by
      dsimp [centered] at href
      dsimp [centered, D]
      nlinarith only [href]
    rwa [hid] at ht
  have hc5 : IsCoprime (5 : ℤ) D := by
    refine ⟨1 + y ^ 4 - 3 * y ^ 2, -1, ?_⟩
    dsimp [D]
    ring
  have hc25 : IsCoprime (25 : ℤ) D := by convert hc5.pow_left (m := 2) using 1 <;> norm_num
  have hout := hc25.dvd_of_dvd_mul_right hraw
  dsimp [s] at hout
  exact_mod_cast hout

end B686Round6B

namespace B686Round6B
open B686Round4Shift B686Round4Cubic B686Round4K5

/-- Generic root assignment for a prime at least the number of factors. -/
theorem prime_power_product_position (n p a : ℕ) (hp : p.Prime) (hp5 : 5 ≤ p)
    (hprod : p ^ a ∣ natProduct 5 n) :
    ∃ i ∈ Finset.Icc 1 5, p ^ a ∣ n + i := by
  by_cases ha : a = 0
  · refine ⟨1, by decide, ?_⟩
    simp [ha]
  have hpP : p ∣ natProduct 5 n := dvd_trans (dvd_pow_self p ha) hprod
  obtain ⟨i, hi, hip⟩ := hp.prime.exists_mem_finset_dvd hpP
  have hcop : Nat.Coprime (p ^ a) (∏ j ∈ (Finset.Icc 1 5).erase i, (n + j)) := by
    apply Nat.Coprime.prod_right
    intro j hj
    obtain ⟨hne, hj'⟩ := Finset.mem_erase.mp hj
    exact (hp.coprime_iff_not_dvd.mpr
      (distinct_positions_not_dvd 5 n p i j hp5 hi hj' hne hip)).pow_left a
  have hsplit : (n + i) * (∏ j ∈ (Finset.Icc 1 5).erase i, (n + j)) = natProduct 5 n :=
    Finset.mul_prod_erase (Finset.Icc 1 5) (fun j => n + j) hi
  rw [← hsplit] at hprod
  exact ⟨i, hi, hcop.dvd_of_dvd_mul_right hprod⟩

theorem five_power_sum_square (n m a : ℕ) (hS : 5 ^ a ∣ n + m + 6)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ((5 : ℤ) ^ a) ^ 2 ∣ 5 * ((n : ℤ) + i) - ((n : ℤ) + m + 6) := by
  by_cases ha0 : a = 0
  · refine ⟨1, by decide, ?_⟩
    simp [ha0]
  have h5S : 5 ∣ n + m + 6 := dvd_trans (dvd_pow_self 5 ha0) hS
  have h25S := sum_five_implies_twentyfive n m h5S heq
  by_cases ha1 : a = 1
  · obtain ⟨i, hi, hpi⟩ := prime_power_product_position n 5 1 (by decide) (by omega)
      (by simpa using five_divides_product n)
    refine ⟨i, hi, ?_⟩
    have hy : (5 : ℤ) ∣ (n : ℤ) + i := by exact_mod_cast hpi
    have ht : (25 : ℤ) ∣ 5 * ((n : ℤ) + i) := by
      obtain ⟨t, ht⟩ := hy
      exact ⟨t, by rw [ht]; ring⟩
    have hs25 : (25 : ℤ) ∣ (n : ℤ) + m + 6 := by exact_mod_cast h25S
    simpa only [ha1, pow_one, show (5 : ℤ)^2 = 25 by norm_num] using dvd_sub ht hs25
  have ha2 : 2 ≤ a := by omega
  have heqZ : product 5 (m : ℤ) = 4 * product 5 (n : ℤ) := by
    rw [← cast_product, ← cast_product]
    exact_mod_cast heq
  have hsprodZ : (5 : ℤ) ^ a ∣ 5 * product 5 n :=
    dvd_trans (by exact_mod_cast hS) (sum_divides n m heqZ)
  have hsprod : 5 ^ a ∣ 5 * natProduct 5 n := by
    rw [← cast_product] at hsprodZ
    exact_mod_cast hsprodZ
  have hpa : (5 : ℕ) ^ a = 5 * 5 ^ (a - 1) := by
    calc
      _ = 5 ^ (1 + (a - 1)) := by congr 1; omega
      _ = _ := by rw [pow_add]; norm_num
  rw [hpa] at hsprod
  have hprod : (5 : ℕ) ^ (a - 1) ∣ natProduct 5 n :=
    (Nat.mul_dvd_mul_iff_left (by decide : 0 < 5)).mp hsprod
  obtain ⟨i, hi, hpi⟩ := prime_power_product_position n 5 (a - 1) (by decide) (by omega) hprod
  have hpa2 : (5 : ℕ) ^ a = 25 * 5 ^ (a - 2) := by
    calc
      _ = 5 ^ (2 + (a - 2)) := by congr 1; omega
      _ = _ := by rw [pow_add]; norm_num
  have hpa1 : (5 : ℕ) ^ (a - 1) = 5 * 5 ^ (a - 2) := by
    calc
      _ = 5 ^ (1 + (a - 2)) := by congr 1; omega
      _ = _ := by rw [pow_add]; norm_num
  have hSz : 25 * ((5 : ℤ) ^ (a - 2)) ∣ (n : ℤ) + m + 6 := by
    have h := hS
    rw [hpa2] at h
    exact_mod_cast h
  have hyz : 5 * ((5 : ℤ) ^ (a - 2)) ∣ (n : ℤ) + i := by
    rw [hpa1] at hpi
    exact_mod_cast hpi
  have h6 : IsCoprime (25 * ((5 : ℤ) ^ (a - 2))) (6 : ℤ) := by
    have hpow : (5 : ℤ) ^ a = 25 * ((5 : ℤ) ^ (a - 2)) := by exact_mod_cast hpa2
    rw [← hpow]
    exact (by decide : Nat.Coprime 5 6).isCoprime.pow_left
  have hout := five_sum_slot_square n m ((5 : ℤ) ^ (a - 2)) i hi hSz hyz h6 heqZ
  refine ⟨i, hi, ?_⟩
  have hpow : (5 : ℤ) ^ a = 25 * ((5 : ℤ) ^ (a - 2)) := by exact_mod_cast hpa2
  simpa only [hpow] using hout

/-- All prime powers with base >=5 have the full sum square contact. -/
theorem prime_power_sum_square_ge_five (n m p a : ℕ) (hp : p.Prime) (hp5 : 5 ≤ p)
    (hS : p ^ a ∣ n + m + 6)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ((p : ℤ) ^ a) ^ 2 ∣ 5 * ((n : ℤ) + i) - ((n : ℤ) + m + 6) := by
  by_cases hpEq : p = 5
  · subst p
    exact five_power_sum_square n m a hS heq
  have hp7 : 7 ≤ p := by
    by_contra hnot
    have hp6 : p = 6 := by omega
    subst p
    exact (by decide : ¬ Nat.Prime 6) hp
  obtain ⟨i, hi, hpi⟩ := large_prime_power_sum_position n m p a hp hp7 hS heq
  have heqZ : product 5 (m : ℤ) = 4 * product 5 (n : ℤ) := by
    rw [← cast_product, ← cast_product]
    exact_mod_cast heq
  have hp6 : Nat.Coprime p 6 := hp.coprime_iff_not_dvd.mpr (by
    intro h
    have := Nat.le_of_dvd (by decide : 0 < 6) h
    omega)
  refine ⟨i, hi, ?_⟩
  exact sum_slot_square n m ((p : ℤ) ^ a) i hi (by exact_mod_cast hS)
    (by exact_mod_cast hpi) (hp6.isCoprime.pow_left) heqZ

/-- Original consumer of any full sum-square product certificate. -/
theorem not_four_sum_square_original (n m i j : ℕ) (hm : n + 5 ≤ m)
    (hi : i ∈ Finset.Icc 1 5) (hj : j ∈ Finset.Icc 1 5)
    (hdiv : ((n : ℤ) + m + 6) ^ 2 ∣
      (5 * ((n : ℤ) + i) - ((n : ℤ) + m + 6)) *
      (5 * ((n : ℤ) + j) - ((n : ℤ) + m + 6))) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  intro heq
  have hd : 600 ≤ m - n := by
    by_contra hsmall
    have hadd : n + (m - n) = m := by omega
    apply B686Round4K5Finite.not_four_small_displacement n (m - n) (by omega) (by omega)
    simpa only [hadd, B686Target.product] using heq
  have heqP : p5 (m : ℤ) = 4 * p5 (n : ℤ) := by
    rw [p5_nat_product, p5_nat_product]
    exact_mod_cast heq
  have hmn : (m : ℤ) = (n : ℤ) + (m - n : ℕ) := by omega
  rw [hmn] at heqP hdiv
  have ht := not_four_sum_square_tail n (m - n : ℕ) i j (by omega) (by omega)
    (by exact_mod_cast (Finset.mem_Icc.mp hi).1) (by exact_mod_cast (Finset.mem_Icc.mp hi).2)
    (by exact_mod_cast (Finset.mem_Icc.mp hj).1) (by exact_mod_cast (Finset.mem_Icc.mp hj).2)
  apply ht _ heqP
  convert hdiv using 1 <;> ring

/-- This allows prime 5, repeated primes, and zero exponents. -/
theorem not_four_sum_two_prime_powers_ge_five (n m p q a b : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (hq : q.Prime) (hp5 : 5 ≤ p) (hq5 : 5 ≤ q)
    (hs : n + m + 6 = p ^ a * q ^ b) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  intro heq
  have hpS : p ^ a ∣ n + m + 6 := by rw [hs]; exact dvd_mul_right _ _
  have hqS : q ^ b ∣ n + m + 6 := by rw [hs]; exact dvd_mul_left _ _
  obtain ⟨i, hi, hpi⟩ := prime_power_sum_square_ge_five n m p a hp hp5 hpS heq
  obtain ⟨j, hj, hqj⟩ := prime_power_sum_square_ge_five n m q b hq hq5 hqS heq
  have hmul := mul_dvd_mul hpi hqj
  have hsz : (n : ℤ) + m + 6 = (p : ℤ) ^ a * (q : ℤ) ^ b := by exact_mod_cast hs
  rw [← mul_pow, ← hsz] at hmul
  exact not_four_sum_square_original n m i j hm hi hj hmul heq

theorem not_four_sum_two_prime_powers_ge_five_ratio (n m p q a b : ℕ) (hm : n + 5 ≤ m)
    (hp : p.Prime) (hq : q.Prime) (hp5 : 5 ≤ p) (hq5 : 5 ≤ q)
    (hs : n + m + 6 = p ^ a * q ^ b) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro heq
  exact not_four_sum_two_prime_powers_ge_five n m p q a b hm hp hq hp5 hq5 hs
    ((B686Target.ratio_iff 5 n m).mp heq)

end B686Round6B

