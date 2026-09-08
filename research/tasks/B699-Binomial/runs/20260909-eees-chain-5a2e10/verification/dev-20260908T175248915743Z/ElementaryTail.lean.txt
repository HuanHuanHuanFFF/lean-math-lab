import research.tasks.«B699-Binomial».runs.«20260909-eees-chain-5a2e10».lean.SizeObstruction
import research.tasks.«B699-Binomial».runs.«20260909-eees-chain-5a2e10».lean.PowerBounds
import research.tasks.«B686-Four».formalization.PrimeCounting.LinearPrimeCounting
import Mathlib.Data.Nat.Choose.Factorization

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Eees

/-- The elementary small-factor estimate from EEES Region I, with the strict
prime threshold required by B699. Every full prime power is at most `n`. -/
theorem small_prime_part_le_pow {n i : ℕ} (hn : 0 < n) :
    B699Size.smallPrimePart i (n.choose i) ≤ n ^ i.primesBelow.card := by
  let s := (n.choose i).primeFactors.filter (fun p ↦ p < i)
  have hsub : s ⊆ i.primesBelow := by
    intro p hp
    obtain ⟨hpa, hpi⟩ := Finset.mem_filter.mp hp
    exact Nat.mem_primesBelow.mpr ⟨hpi, Nat.prime_of_mem_primeFactors hpa⟩
  calc
    B699Size.smallPrimePart i (n.choose i) ≤ n ^ s.card :=
      Finset.prod_le_pow_card s _ n (fun _ _ ↦ Nat.pow_factorization_choose_le hn)
    _ ≤ n ^ i.primesBelow.card := Nat.pow_le_pow_right hn (Finset.card_le_card hsub)

/-- Reuses the already accepted exact wheel certificate; no analytic prime
estimate is a premise. This is a global count bound for all `i ≥ 185`. -/
theorem four_mul_primes_below_le {i : ℕ} (hi : 185 ≤ i) :
    4 * i.primesBelow.card ≤ i := by
  have h := B686PrimeCounting.prime_counting_linear (i - 1)
  rw [Nat.primeCounting_sub_one, ← Nat.primesBelow_card_eq_primeCounting'] at h
  omega

/-- EEES itself on an unbounded quadratic tail, proved without EEES as input. -/
theorem small_prime_part_lt_large_of_quadratic {n i : ℕ}
    (hi : 185 ≤ i) (hlarge : i ^ 2 < n) :
    B699Size.smallPrimePart i (n.choose i) <
      B699BridgeAudit.primePart i (n.choose i) := by
  have hi0 : 0 < i := by omega
  have hin : i ≤ n := by nlinarith [Nat.le_self_pow (by decide : 2 ≠ 0) i]
  have hn : 0 < n := by omega
  have hcount : 2 * i.primesBelow.card ≤ i / 2 := by
    have h := four_mul_primes_below_le hi
    omega
  have hgap : i ^ i * n ^ (2 * i.primesBelow.card) < n ^ i := by
    exact (Nat.mul_le_mul_left _ (Nat.pow_le_pow_right hn hcount)).trans_lt
      (B699Power.pow_mul_pow_half_lt_pow_of_sq_lt hi0 hlarge)
  have hchoose : n ^ (2 * i.primesBelow.card) < n.choose i :=
    Nat.lt_of_mul_lt_mul_left
      (hgap.trans_le (B699Power.pow_le_pow_mul_choose n i hin))
  have hu : (B699Size.smallPrimePart i (n.choose i)) ^ 2 < n.choose i := by
    calc
      _ ≤ (n ^ i.primesBelow.card) ^ 2 :=
        Nat.pow_le_pow_left (small_prime_part_le_pow hn) 2
      _ = n ^ (2 * i.primesBelow.card) := by rw [← pow_mul, Nat.mul_comm]
      _ < n.choose i := hchoose
  have hsplit := B699Size.prime_part_split (i := i) (Nat.choose_pos hin).ne'
  by_contra h
  have hv : B699BridgeAudit.primePart i (n.choose i) ≤
      B699Size.smallPrimePart i (n.choose i) := Nat.le_of_not_gt h
  have hle := Nat.mul_le_mul_left (B699Size.smallPrimePart i (n.choose i)) hv
  rw [hsplit, ← pow_two] at hle
  exact hu.not_ge hle

/-- A local proven EEES inequality can be consumed without assuming the global
external theorem. All original indices and the boundary prime `p = i` remain. -/
theorem counterexample_size_of_small_lt {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hsmall : B699Size.smallPrimePart i (n.choose i) <
      B699BridgeAudit.primePart i (n.choose i))
    (hnone : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧
      p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    n.choose i < (j.choose i) ^ 2 := by
  have hin : i ≤ n := by omega
  have hsplit := B699Size.prime_part_split (i := i) (Nat.choose_pos hin).ne'
  have hpos : 0 < B699BridgeAudit.primePart i (n.choose i) := by omega
  have hsize : n.choose i < (B699BridgeAudit.primePart i (n.choose i)) ^ 2 := by
    calc
      n.choose i = B699Size.smallPrimePart i (n.choose i) *
          B699BridgeAudit.primePart i (n.choose i) := hsplit.symm
      _ < B699BridgeAudit.primePart i (n.choose i) *
          B699BridgeAudit.primePart i (n.choose i) :=
        Nat.mul_lt_mul_of_pos_right hsmall hpos
      _ = (B699BridgeAudit.primePart i (n.choose i)) ^ 2 := by rw [pow_two]
  have hdiv := B699ExternalRecovery.original_counterexample_prime_part_transfer hi hij hjn hnone
  have hle := Nat.le_of_dvd (Nat.choose_pos hij.le) hdiv
  exact hsize.trans_le (Nat.pow_le_pow_left hle 2)

/-- Unconditional necessary inequality on the quadratic tail. -/
theorem counterexample_size_of_quadratic {n i j : ℕ}
    (hi : 185 ≤ i) (hlarge : i ^ 2 < n) (hij : i < j) (hjn : j ≤ n / 2)
    (hnone : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧
      p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    n.choose i < (j.choose i) ^ 2 :=
  counterexample_size_of_small_lt (by omega) hij hjn
    (small_prime_part_lt_large_of_quadratic hi hlarge) hnone

/-- Original B699 consumer on an infinite region, with no external theorem premise. -/
theorem common_of_quadratic_tail {n i j : ℕ}
    (hi : 185 ≤ i) (hlarge : i ^ 2 < n) (hij : i < j) (hjn : j ≤ n / 2)
    (hregion : 2 * j ≤ 3 * i) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_contra hnone
  exact (counterexample_size_of_quadratic hi hlarge hij hjn hnone).not_ge
    (B699Size.vandermonde_lower_bound hij hjn hregion)

end B699Eees
