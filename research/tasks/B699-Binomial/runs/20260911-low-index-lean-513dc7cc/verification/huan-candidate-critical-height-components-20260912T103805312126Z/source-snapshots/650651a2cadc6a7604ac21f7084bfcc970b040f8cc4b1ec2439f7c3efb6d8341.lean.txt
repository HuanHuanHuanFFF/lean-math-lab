import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.LargeSmallPowers
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.SmallPrimeLocalization

/-! Complete uncompiled candidate: actual complete binomial components and finite products. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LowIndex B699LargePrimeStructure

/-- Complete binomial p-power, also when its valuation is zero. -/
def primeComponent (n i p : ℕ) : ℕ := p ^ ((n.choose i).factorization p)

theorem primeComponent_pos (n i p : ℕ) (hp : p.Prime) :
    0 < primeComponent n i p := Nat.pow_pos hp.pos

theorem primeComponent_le {n i p : ℕ} (hn : 0 < n) :
    primeComponent n i p ≤ n := Nat.pow_factorization_choose_le hn

theorem smallPrimePart_eq_product (n i : ℕ) :
    smallPrimePart n i = ((Finset.range i).filter Nat.Prime).prod (primeComponent n i) := by
  exact small_prime_part_eq_prod_small_primes n i

theorem smallPrimePart_pos (n i : ℕ) : 0 < smallPrimePart n i := by
  rw [smallPrimePart_eq_product]
  apply Finset.prod_pos
  intro p hp
  exact primeComponent_pos n i p (Finset.mem_filter.mp hp).2

/-- Drop only the extra index valuation; retain the whole original binomial power. -/
theorem exists_prime_window {n i p : ℕ} (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime) :
    ∃ a C : ℕ, a < i ∧ 1 ≤ C ∧ primeComponent n i p * C = n - a := by
  obtain ⟨a, ha, hraw⟩ := binomial_prime_power_localization hi hin hp
  have hsubpower : primeComponent n i p ∣
      p ^ ((n.choose i).factorization p + i.factorization p) := by
    unfold primeComponent
    exact Nat.pow_dvd_pow p (by omega)
  obtain ⟨C, hC⟩ := Nat.dvd_trans hsubpower hraw
  have hCpos : 0 < C := by
    apply Nat.pos_of_ne_zero
    intro hz
    rw [hz, Nat.mul_zero] at hC
    omega
  exact ⟨a, C, ha, by omega, hC.symm⟩

theorem component_cofactor_capacity {n i p C Y : ℕ}
    (hproduct : primeComponent n i p * C ≤ n) (hcofactor : Y ^ 10 ≤ C ^ 1000) :
    (primeComponent n i p) ^ 1000 * Y ^ 10 ≤ n ^ 1000 := by
  calc
    _ ≤ (primeComponent n i p) ^ 1000 * C ^ 1000 := Nat.mul_le_mul_left _ hcofactor
    _ = (primeComponent n i p * C) ^ 1000 := (mul_pow _ _ _).symm
    _ ≤ n ^ 1000 := Nat.pow_le_pow_left hproduct 1000

/-- One distinguished component carries the saving; every remaining full p-power is at most n. -/
theorem smallPrimePart_capacity {n i p Y : ℕ} (hn : 0 < n)
    (hp : p.Prime) (hpi : p < i)
    (hcapacity : (primeComponent n i p) ^ 1000 * Y ^ 10 ≤ n ^ 1000) :
    (smallPrimePart n i) ^ 1000 * Y ^ 10 ≤ n ^ (1000 * smallPrimeCount i) := by
  classical
  let S := (Finset.range i).filter Nat.Prime
  let f := primeComponent n i
  have hpS : p ∈ S := Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hpi, hp⟩
  have hcard : (S.erase p).card = S.card - 1 := Finset.card_erase_of_mem hpS
  have hcardpos : 1 ≤ S.card := Finset.card_pos.mpr ⟨p, hpS⟩
  have hrest : (S.erase p).prod f ≤ n ^ (S.card - 1) := by
    simpa only [hcard] using Finset.prod_le_pow_card (S.erase p) f n
      (fun q _ ↦ primeComponent_le (i := i) (p := q) hn)
  have hrestpower : ((S.erase p).prod f) ^ 1000 ≤ n ^ ((S.card - 1) * 1000) := by
    simpa only [← pow_mul] using Nat.pow_le_pow_left hrest 1000
  have hsplit : smallPrimePart n i = f p * (S.erase p).prod f := by
    calc
      _ = S.prod f := smallPrimePart_eq_product n i
      _ = _ := (Finset.mul_prod_erase S f hpS).symm
  calc
    (smallPrimePart n i) ^ 1000 * Y ^ 10 =
        (f p ^ 1000 * Y ^ 10) * ((S.erase p).prod f) ^ 1000 := by
      rw [hsplit, mul_pow]
      ring
    _ ≤ n ^ 1000 * ((S.erase p).prod f) ^ 1000 := Nat.mul_le_mul_right _ hcapacity
    _ ≤ n ^ 1000 * n ^ ((S.card - 1) * 1000) := Nat.mul_le_mul_left _ hrestpower
    _ = n ^ (1000 * S.card) := by
      rw [← pow_add]
      congr 1
      omega
    _ = n ^ (1000 * smallPrimeCount i) := rfl

end Math.B699.CriticalPadeHeight
