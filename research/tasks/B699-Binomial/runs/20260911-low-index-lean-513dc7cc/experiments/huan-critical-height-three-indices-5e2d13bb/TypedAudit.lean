import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-height-three-indices-5e2d13bb».Final

set_option autoImplicit false
set_option relaxedAutoImplicit false
open Math.B699.CriticalPadeHeight B699LowIndex B699LargePrimeStructure

example : ∀ {n i j r s t : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlarge : i * (i - 1) ≤ n) (hlambda : 2 * s - r = i) (ht : t ≤ i)
    (hdegree : windowDegree i r s = (i - t) * i) (hno : ¬ Common n i j),
    n ^ t ≤ (2 * i.factorial) * smallPrimePart n i :=
  @Math.B699.CriticalPadeHeight.critical_small_part_lower

example : ∀ {n U C Y t : ℕ} (hU : 0 < U)
    (hlower : n ^ t ≤ C * U)
    (hcapacity : U ^ 1000 * Y ^ 10 ≤ n ^ (1000 * t)),
    Y ^ 10 ≤ C ^ 1000 :=
  @Math.B699.CriticalPadeHeight.critical_budget_bound

example : ∀ (n i p : ℕ) (hp : p.Prime),
    0 < primeComponent n i p :=
  @Math.B699.CriticalPadeHeight.primeComponent_pos

example : ∀ {n i p : ℕ} (hn : 0 < n),
    primeComponent n i p ≤ n :=
  @Math.B699.CriticalPadeHeight.primeComponent_le

example : ∀ (n i : ℕ),
    smallPrimePart n i = ((Finset.range i).filter Nat.Prime).prod (primeComponent n i) :=
  @Math.B699.CriticalPadeHeight.smallPrimePart_eq_product

example : ∀ (n i : ℕ),
    0 < smallPrimePart n i :=
  @Math.B699.CriticalPadeHeight.smallPrimePart_pos

example : ∀ {n i p : ℕ} (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime),
    ∃ a C : ℕ, a < i ∧ 1 ≤ C ∧ primeComponent n i p * C = n - a :=
  @Math.B699.CriticalPadeHeight.exists_prime_window

example : ∀ {n i p C Y : ℕ}
    (hproduct : primeComponent n i p * C ≤ n) (hcofactor : Y ^ 10 ≤ C ^ 1000),
    (primeComponent n i p) ^ 1000 * Y ^ 10 ≤ n ^ 1000 :=
  @Math.B699.CriticalPadeHeight.component_cofactor_capacity

example : ∀ {n i p Y : ℕ} (hn : 0 < n)
    (hp : p.Prime) (hpi : p < i)
    (hcapacity : (primeComponent n i p) ^ 1000 * Y ^ 10 ≤ n ^ 1000),
    (smallPrimePart n i) ^ 1000 * Y ^ 10 ≤ n ^ (1000 * smallPrimeCount i) :=
  @Math.B699.CriticalPadeHeight.smallPrimePart_capacity

example : ∀ {n a : ℕ} (hn : 66 ≤ n) (ha : a < 34),
    (n + 1) / 2 ≤ n - a ∧ n - a ≤ 2 * ((n + 1) / 2) :=
  @Math.B699.CriticalPadeHeight.window_bounds

example : ∀ {n a b : ℕ} (ha : a < 34) (hb : b < 34),
    |((n - a : ℕ) : ℤ) - ((n - b : ℕ) : ℤ)| ≤ 33 :=
  @Math.B699.CriticalPadeHeight.integer_window_gap33

example : ∀ {n : ℕ} (hheight : (2 : ℕ) ^ 15360 ≤ n),
    1122 ≤ n ∧ (2 : ℕ) ^ 15359 ≤ (n + 1) / 2 :=
  @Math.B699.CriticalPadeHeight.large_height_bounds

example : ∀ {n i : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hheight : (2 : ℕ) ^ 15360 ≤ n),
    (primeComponent n i 2) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ 1000 ∨
      (primeComponent n i 5) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ 1000 :=
  @Math.B699.CriticalPadeHeight.actual_two_five_component_capacity

example : ∀ {n i : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hheight : (2 : ℕ) ^ 15360 ≤ n),
    (smallPrimePart n i) ^ 1000 * ((n + 1) / 2) ^ 10 ≤
      n ^ (1000 * smallPrimeCount i) :=
  @Math.B699.CriticalPadeHeight.actual_small_part_capacity

example : 2 * (34 : ℕ).factorial ≤ (2 : ℕ) ^ 129 :=
  @Math.B699.CriticalPadeHeight.factorial_34_bound

example : ∀ {i : ℕ} (hi : i ≤ 34),
    2 * i.factorial ≤ (2 : ℕ) ^ 129 :=
  @Math.B699.CriticalPadeHeight.factorial_bound

example : ∀ {Y i : ℕ} (hi : i ≤ 34)
    (hY : (2 : ℕ) ^ 15359 ≤ Y) (hbound : Y ^ 10 ≤ (2 * i.factorial) ^ 1000),
    False :=
  @Math.B699.CriticalPadeHeight.height_budget_contradiction

example : ∀ {n i j r s t : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlambda : 2 * s - r = i) (ht : t ≤ i)
    (hdegree : windowDegree i r s = (i - t) * i) (hcount : smallPrimeCount i = t)
    (hno : ¬ Common n i j),
    n < (2 : ℕ) ^ 15360 :=
  @Math.B699.CriticalPadeHeight.critical_noCommon_below_15360

example : 2 * 18 - 8 = (28 : ℕ) ∧
    windowDegree 28 8 18 = (28 - 9) * 28 ∧ smallPrimeCount 28 = 9 :=
  @Math.B699.CriticalPadeHeight.i28_parameters

example : 2 * 20 - 9 = (31 : ℕ) ∧
    windowDegree 31 9 20 = (31 - 10) * 31 ∧ smallPrimeCount 31 = 10 :=
  @Math.B699.CriticalPadeHeight.i31_parameters

example : 2 * 22 - 10 = (34 : ℕ) ∧
    windowDegree 34 10 22 = (34 - 11) * 34 ∧ smallPrimeCount 34 = 11 :=
  @Math.B699.CriticalPadeHeight.i34_parameters

example : ∀ {n j : ℕ}
    (hij : 28 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 28 j),
    n < (2 : ℕ) ^ 15360 :=
  @Math.B699.CriticalPadeHeight.actual_i28_below_15360

example : ∀ {n j : ℕ}
    (hij : 31 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 31 j),
    n < (2 : ℕ) ^ 15360 :=
  @Math.B699.CriticalPadeHeight.actual_i31_below_15360

example : ∀ {n j : ℕ}
    (hij : 34 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 34 j),
    n < (2 : ℕ) ^ 15360 :=
  @Math.B699.CriticalPadeHeight.actual_i34_below_15360

example (n i p : ℕ) : primeComponent n i p = p ^ ((n.choose i).factorization p) := rfl

-- Original Common expanded: inclusive prime threshold and both complete binomials.
example : ∀ (n j : ℕ), 28 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 28 ≤ p ∧ p ∣ Nat.gcd (n.choose 28) (n.choose j)) →
    n < (2 : ℕ) ^ 15360 := @Math.B699.CriticalPadeHeight.actual_i28_below_15360

-- Original Common expanded: inclusive prime threshold and both complete binomials.
example : ∀ (n j : ℕ), 31 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 31 ≤ p ∧ p ∣ Nat.gcd (n.choose 31) (n.choose j)) →
    n < (2 : ℕ) ^ 15360 := @Math.B699.CriticalPadeHeight.actual_i31_below_15360

-- Original Common expanded: inclusive prime threshold and both complete binomials.
example : ∀ (n j : ℕ), 34 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 34 ≤ p ∧ p ∣ Nat.gcd (n.choose 34) (n.choose j)) →
    n < (2 : ℕ) ^ 15360 := @Math.B699.CriticalPadeHeight.actual_i34_below_15360

