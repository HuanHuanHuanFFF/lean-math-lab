import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.LargeSmallPowers
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.SmallPrimeLocalization

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

/-- A localized full prime power with a large binomial component has a small
positive cofactor. This statement does not exclude the endpoint p=i. -/
theorem exists_small_cofactor_of_localized_power {n i a p e M : ℕ}
    (_hi : 1 ≤ i) (hin : i ≤ n) (ha : a < i) (hp : 0 < p)
    (hlarge : n ≤ M * p ^ e)
    (hdiv : p ^ (e + i.factorization p) ∣ n - a) :
    ∃ A : ℕ, 1 ≤ A ∧ A * p ^ i.factorization p ≤ M ∧
      n = A * p ^ (e + i.factorization p) + a := by
  obtain ⟨A, hAeq⟩ := hdiv
  have hA : 1 ≤ A := by
    by_contra h
    have hzero : A = 0 := by omega
    rw [hzero, Nat.mul_zero] at hAeq
    omega
  have hrepr : n = A * p ^ (e + i.factorization p) + a := by
    calc
      n = (n - a) + a := (Nat.sub_add_cancel (by omega : a ≤ n)).symm
      _ = p ^ (e + i.factorization p) * A + a := by rw [hAeq]
      _ = A * p ^ (e + i.factorization p) + a := by ac_rfl
  have hmul : (A * p ^ i.factorization p) * p ^ e ≤ M * p ^ e := by
    calc
      (A * p ^ i.factorization p) * p ^ e =
          A * p ^ (e + i.factorization p) := by rw [pow_add]; ring
      _ ≤ n := by omega
      _ ≤ M * p ^ e := hlarge
  have hbound : A * p ^ i.factorization p ≤ M :=
    Nat.le_of_mul_le_mul_right hmul (pow_pos hp e)
  exact ⟨A, hA, hbound, hrepr⟩

/-- The same cofactor certificate with the exact natural-number quotient bound. -/
theorem exists_small_cofactor_div_of_localized_power {n i a p e M : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (ha : a < i) (hp : 0 < p)
    (hlarge : n ≤ M * p ^ e)
    (hdiv : p ^ (e + i.factorization p) ∣ n - a) :
    ∃ A : ℕ, 1 ≤ A ∧ A ≤ M / p ^ i.factorization p ∧
      n = A * p ^ (e + i.factorization p) + a := by
  obtain ⟨A, hA, hbound, hrepr⟩ :=
    exists_small_cofactor_of_localized_power hi hin ha hp hlarge hdiv
  exact ⟨A, hA, (Nat.le_div_iff_mul_le (pow_pos hp _)).mpr hbound, hrepr⟩

/-- A positive cofactor in an interval representation bounds the full raw power. -/
theorem interval_power_le_of_representation {n a A Q : ℕ}
    (hA : 1 ≤ A) (hrepr : n = A * Q + a) : Q ≤ n := by
  have hQ : Q ≤ A * Q := by
    simpa only [one_mul] using Nat.mul_le_mul_right Q hA
  omega

/-- The raw power is strictly below any strict upper endpoint for n. -/
theorem interval_power_lt_upper_of_representation {n a A Q upper : ℕ}
    (hA : 1 ≤ A) (hrepr : n = A * Q + a) (hupper : n < upper) :
    Q < upper :=
  (interval_power_le_of_representation hA hrepr).trans_lt hupper

/-- A large actual binomial p-power yields a short interval with a positive
actual exponent. Every prime is allowed here, including p=i. -/
theorem binomial_power_interval_of_large_power {n i p M : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime) (hMn : M < n)
    (hlarge : n ≤ M * p ^ (n.choose i).factorization p) :
    0 < (n.choose i).factorization p ∧
      ∃ a < i, ∃ A : ℕ, 1 ≤ A ∧ A * p ^ i.factorization p ≤ M ∧
        n = A * p ^ ((n.choose i).factorization p + i.factorization p) + a := by
  have he : 0 < (n.choose i).factorization p := by
    by_contra h
    have hzero : (n.choose i).factorization p = 0 := by omega
    rw [hzero, pow_zero, mul_one] at hlarge
    omega
  obtain ⟨a, ha, hdiv⟩ := binomial_prime_power_localization hi hin hp
  obtain ⟨A, hA, hbound, hrepr⟩ :=
    exists_small_cofactor_of_localized_power hi hin ha hp.pos hlarge hdiv
  exact ⟨he, a, ha, A, hA, hbound, hrepr⟩

/-- An explicit actual-small-part lower bound places the original n in two
prime-distinct short intervals with full binomial and index exponents. -/
theorem exists_two_small_prime_power_intervals {n i M : ℕ}
    (hi : 2 ≤ i) (hin : i ≤ n) (hcount : 2 ≤ smallPrimeCount i)
    (hn : 0 < n) (hM : 0 < M) (hMn : M < n)
    (hU : n ^ smallPrimeCount i ≤
      M ^ (smallPrimeCount i - 1) * smallPrimePart n i) :
    ∃ p q : ℕ, p.Prime ∧ p < i ∧ q.Prime ∧ q < i ∧ p ≠ q ∧
      (0 < (n.choose i).factorization p ∧
        ∃ a < i, ∃ A : ℕ, 1 ≤ A ∧ A * p ^ i.factorization p ≤ M ∧
          n = A * p ^ ((n.choose i).factorization p + i.factorization p) + a) ∧
      (0 < (n.choose i).factorization q ∧
        ∃ b < i, ∃ B : ℕ, 1 ≤ B ∧ B * q ^ i.factorization q ≤ M ∧
          n = B * q ^ ((n.choose i).factorization q + i.factorization q) + b) := by
  obtain ⟨p, q, hp, hpi, hq, hqi, hpq, hpbig, hqbig⟩ :=
    exists_two_large_small_prime_powers hi hin hcount hn hM hU
  have hi1 : 1 ≤ i := by omega
  exact ⟨p, q, hp, hpi, hq, hqi, hpq,
    binomial_power_interval_of_large_power hi1 hin hp hMn hpbig,
    binomial_power_interval_of_large_power hi1 hin hq hMn hqbig⟩

end B699LowIndex

#print axioms B699LowIndex.exists_small_cofactor_of_localized_power
#print axioms B699LowIndex.exists_small_cofactor_div_of_localized_power
#print axioms B699LowIndex.interval_power_le_of_representation
#print axioms B699LowIndex.interval_power_lt_upper_of_representation
#print axioms B699LowIndex.binomial_power_interval_of_large_power
#print axioms B699LowIndex.exists_two_small_prime_power_intervals