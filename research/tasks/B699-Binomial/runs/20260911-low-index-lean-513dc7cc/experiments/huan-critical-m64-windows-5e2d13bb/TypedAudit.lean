import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-m64-windows-5e2d13bb».TypedBaseAudit
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-m64-windows-5e2d13bb».Height

set_option autoImplicit false
set_option relaxedAutoImplicit false
open Math.B699.CriticalM64Windows B699LowIndex B699LargePrimeStructure

example : ∀ (n i : ℕ),
    Prop :=
  @Math.B699.CriticalM64Windows.BoundedM64Pair

example : ∀ {n i p a A : ℕ} (hp : p.Prime)
    (hw : M64Window n i p a A) (hheight : n < (2 : ℕ) ^ 15360),
    fullExponent n i p ≤ 15359 :=
  @Math.B699.CriticalM64Windows.window_fullExponent_le

example : ∀ {n i : ℕ} (hpair : M64Pair n i)
    (hheight : n < (2 : ℕ) ^ 15360),
    BoundedM64Pair n i :=
  @Math.B699.CriticalM64Windows.bounded_pair_of_height

example : ∀ {n j : ℕ} (hn : 4096 < n)
    (hij : 28 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 28 j),
    BoundedM64Pair n 28 :=
  @Math.B699.CriticalM64Windows.actual_i28_bounded_windows

example : ∀ {n j : ℕ} (hn : 4096 < n)
    (hij : 31 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 31 j),
    BoundedM64Pair n 31 :=
  @Math.B699.CriticalM64Windows.actual_i31_bounded_windows

example : ∀ {n j : ℕ} (hn : 4096 < n)
    (hij : 34 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 34 j),
    BoundedM64Pair n 34 :=
  @Math.B699.CriticalM64Windows.actual_i34_bounded_windows

example : ∀ {n j : ℕ}, 4096 < n → 28 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 28 ≤ p ∧ p ∣ Nat.gcd (n.choose 28) (n.choose j)) →
    BoundedM64Pair n 28 := @Math.B699.CriticalM64Windows.actual_i28_bounded_windows

example : ∀ {n j : ℕ}, 4096 < n → 31 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 31 ≤ p ∧ p ∣ Nat.gcd (n.choose 31) (n.choose j)) →
    BoundedM64Pair n 31 := @Math.B699.CriticalM64Windows.actual_i31_bounded_windows

example : ∀ {n j : ℕ}, 4096 < n → 34 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 34 ≤ p ∧ p ∣ Nat.gcd (n.choose 34) (n.choose j)) →
    BoundedM64Pair n 34 := @Math.B699.CriticalM64Windows.actual_i34_bounded_windows
