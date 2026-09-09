import research.tasks.«B699-Binomial».runs.«20260909-eees-chain-5a2e10».lean.ElementaryTail

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Eees

/-- All original counterexamples satisfy this elementary necessary inequality.
Uses actual transfer and a relative binomial lower bound; no EEES premise. -/
theorem counterexample_scaled_power {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnone : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧
      p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    n ^ i ≤ j ^ i * n ^ i.primesBelow.card := by
  have hn : 0 < n := by omega
  have hin : i ≤ n := by omega
  have hdiv := B699ExternalRecovery.original_counterexample_prime_part_transfer hi hij hjn hnone
  have hlarge := Nat.le_of_dvd (Nat.choose_pos hij.le) hdiv
  have hsmall := small_prime_part_le_pow (i := i) hn
  have hsplit := B699Size.prime_part_split (i := i) (Nat.choose_pos hin).ne'
  have hchoose : n.choose i ≤ n ^ i.primesBelow.card * j.choose i := by
    calc
      n.choose i = B699Size.smallPrimePart i (n.choose i) *
          B699BridgeAudit.primePart i (n.choose i) := hsplit.symm
      _ ≤ n ^ i.primesBelow.card * j.choose i := Nat.mul_le_mul hsmall hlarge
  have hmul : n ^ i * j.choose i ≤
      (j ^ i * n ^ i.primesBelow.card) * j.choose i := by
    calc
      _ ≤ j ^ i * n.choose i := B699Power.choose_ratio_lower_bound hij.le (by omega)
      _ ≤ j ^ i * (n ^ i.primesBelow.card * j.choose i) := Nat.mul_le_mul_left _ hchoose
      _ = _ := by ring
  exact Nat.le_of_mul_le_mul_right hmul (Nat.choose_pos hij.le)

/-- A direct, unconditional B699 region consumer from the same elementary
small-factor bound. It does not require the Vandermonde region `2*j ≤ 3*i`. -/
theorem common_of_fourth_lt_cube {n i j : ℕ}
    (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hregion : j ^ 4 < n ^ 3) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_contra hnone
  have hn : 0 < n := by omega
  have hi0 : i ≠ 0 := by omega
  have hscaled := counterexample_scaled_power (by omega) hij hjn hnone
  have hcount := four_mul_primes_below_le hi
  have hcontra : n ^ (4 * i) < n ^ (4 * i) := by
    calc
      n ^ (4 * i) = (n ^ i) ^ 4 := by rw [← pow_mul, Nat.mul_comm]
      _ ≤ (j ^ i * n ^ i.primesBelow.card) ^ 4 := Nat.pow_le_pow_left hscaled 4
      _ = (j ^ 4) ^ i * n ^ (4 * i.primesBelow.card) := by
        simp only [mul_pow, ← pow_mul]
        congr 1 <;> congr 1 <;> omega
      _ < (n ^ 3) ^ i * n ^ (4 * i.primesBelow.card) :=
        Nat.mul_lt_mul_of_pos_right (Nat.pow_lt_pow_left hregion hi0) (Nat.pow_pos hn)
      _ ≤ (n ^ 3) ^ i * n ^ i :=
        Nat.mul_le_mul_left _ (Nat.pow_le_pow_right hn hcount)
      _ = n ^ (4 * i) := by rw [← pow_mul, ← pow_add]; congr 1; omega
  exact (Nat.lt_irrefl _) hcontra

end B699Eees
