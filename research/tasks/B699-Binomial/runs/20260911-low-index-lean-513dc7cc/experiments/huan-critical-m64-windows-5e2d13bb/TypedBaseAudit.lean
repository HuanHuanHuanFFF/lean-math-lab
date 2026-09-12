import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-m64-windows-5e2d13bb».Actual

set_option autoImplicit false
set_option relaxedAutoImplicit false
open Math.B699.CriticalM64Windows B699LowIndex B699LargePrimeStructure

example : ∀ (n i p : ℕ),
    ℕ :=
  @Math.B699.CriticalM64Windows.fullExponent

example : ∀ (i r s : ℕ),
    Prop :=
  @Math.B699.CriticalM64Windows.M64Parameters

example : ∀ (i r s : ℕ),
    Decidable (M64Parameters i r s) :=
  @Math.B699.CriticalM64Windows.instDecidableM64Parameters

example : ∀ (n i p a A : ℕ),
    Prop :=
  @Math.B699.CriticalM64Windows.M64Window

example : ∀ (n i p q A B : ℕ),
    ℤ :=
  @Math.B699.CriticalM64Windows.signedGap

example : ∀ (n i p q a b A B : ℕ),
    Prop :=
  @Math.B699.CriticalM64Windows.M64PairData

example : ∀ (n i : ℕ),
    Prop :=
  @Math.B699.CriticalM64Windows.M64Pair

example : M64Parameters 28 9 19 :=
  @Math.B699.CriticalM64Windows.m64_parameters_28

example : M64Parameters 31 10 21 :=
  @Math.B699.CriticalM64Windows.m64_parameters_31

example : M64Parameters 34 11 23 :=
  @Math.B699.CriticalM64Windows.m64_parameters_34

example : ∀ {n i p : ℕ} (hi : 1 ≤ i) (hin : i ≤ n)
    (hp : p.Prime) (hn : 4096 < n)
    (hlarge : n ≤ 64 * p ^ (n.choose i).factorization p),
    ∃ a A : ℕ, M64Window n i p a A :=
  @Math.B699.CriticalM64Windows.window_of_large_component

example : ∀ {n i p a A : ℕ} (hw : M64Window n i p a A),
    p ^ fullExponent n i p ∣ n - a :=
  @Math.B699.CriticalM64Windows.window_full_power_dvd

example : ∀ {n i p a A : ℕ} (hp : p.Prime)
    (hw : M64Window n i p a A),
    n ≤ 64 * p ^ fullExponent n i p :=
  @Math.B699.CriticalM64Windows.window_full_power_large

example : ∀ {n i p a A : ℕ} (hp : p.Prime)
    (hw : M64Window n i p a A),
    A ≤ 64 :=
  @Math.B699.CriticalM64Windows.window_cofactor_le_64

example : ∀ {n i p q a b A B : ℕ} (hn : 4096 < n) (hin : i ≤ n)
    (hp : p.Prime) (hq : q.Prime) (hpq : p ≠ q)
    (hP : M64Window n i p a A) (hQ : M64Window n i q b B),
    a ≠ b :=
  @Math.B699.CriticalM64Windows.offsets_ne

example : ∀ {n i p q a b A B : ℕ}
    (hP : M64Window n i p a A) (hQ : M64Window n i q b B),
    signedGap n i p q A B = (b : ℤ) - (a : ℤ) :=
  @Math.B699.CriticalM64Windows.window_signed_difference

example : ∀ {i a b : ℕ} (hi34 : i ≤ 34)
    (ha : a < i) (hb : b < i) (hab : a ≠ b),
    (1 : ℤ) ≤ |(b : ℤ) - (a : ℤ)| ∧ |(b : ℤ) - (a : ℤ)| ≤ 33 :=
  @Math.B699.CriticalM64Windows.offset_abs_gap_bounds

example : ∀ {n i p q a b A B : ℕ}
    (hn : 4096 < n) (hin : i ≤ n) (hi34 : i ≤ 34)
    (hp : p.Prime) (hpi : p < i) (hq : q.Prime) (hqi : q < i) (hpq : p < q)
    (hP : M64Window n i p a A) (hQ : M64Window n i q b B),
    M64PairData n i p q a b A B :=
  @Math.B699.CriticalM64Windows.pairData_of_ordered_windows

example : ∀ {n i j r s : ℕ} (hc : M64Parameters i r s)
    (hn : 4096 < n) (hij : i < j) (hjn : j ≤ n / 2) (hno : ¬ Common n i j),
    M64Pair n i :=
  @Math.B699.CriticalM64Windows.pair_of_m64_parameters

example : ∀ {n j : ℕ} (hn : 4096 < n)
    (hij : 28 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 28 j),
    M64Pair n 28 :=
  @Math.B699.CriticalM64Windows.actual_i28_m64_windows

example : ∀ {n j : ℕ} (hn : 4096 < n)
    (hij : 31 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 31 j),
    M64Pair n 31 :=
  @Math.B699.CriticalM64Windows.actual_i31_m64_windows

example : ∀ {n j : ℕ} (hn : 4096 < n)
    (hij : 34 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 34 j),
    M64Pair n 34 :=
  @Math.B699.CriticalM64Windows.actual_i34_m64_windows

example (n i p : ℕ) : fullExponent n i p =
    (n.choose i).factorization p + i.factorization p := rfl

example (n i p a A : ℕ) : M64Window n i p a A ↔
    a < i ∧ 1 ≤ A ∧ i.factorization p < ((n.choose i).factorization p + i.factorization p) ∧
    A * p ^ i.factorization p ≤ 64 ∧ n ≤ 64 * p ^ (n.choose i).factorization p ∧
    n = A * p ^ ((n.choose i).factorization p + i.factorization p) + a := Iff.rfl

example (n i p q A B : ℕ) : signedGap n i p q A B =
    ((A * p ^ ((n.choose i).factorization p + i.factorization p) : ℕ) : ℤ) -
    ((B * q ^ ((n.choose i).factorization q + i.factorization q) : ℕ) : ℤ) := rfl

example : ∀ {n j : ℕ}, 4096 < n → 28 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 28 ≤ p ∧ p ∣ Nat.gcd (n.choose 28) (n.choose j)) →
    M64Pair n 28 := @Math.B699.CriticalM64Windows.actual_i28_m64_windows

example : ∀ {n j : ℕ}, 4096 < n → 31 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 31 ≤ p ∧ p ∣ Nat.gcd (n.choose 31) (n.choose j)) →
    M64Pair n 31 := @Math.B699.CriticalM64Windows.actual_i31_m64_windows

example : ∀ {n j : ℕ}, 4096 < n → 34 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 34 ≤ p ∧ p ∣ Nat.gcd (n.choose 34) (n.choose j)) →
    M64Pair n 34 := @Math.B699.CriticalM64Windows.actual_i34_m64_windows
