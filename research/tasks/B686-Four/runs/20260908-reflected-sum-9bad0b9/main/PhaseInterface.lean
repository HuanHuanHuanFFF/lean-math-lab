import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.Tactic.Linarith
import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.PrimeSynchronization

/-!
Real fractional phases and the finite prime sum. This proves only that an
original solution annihilates a test function with the stated support.
Existence of a smooth test function, its integral bound, and prime sampling
asymptotics are not asserted by this module.
-/

namespace B686Round9

open scoped BigOperators

theorem phase_rectangle_to_residues (n m p : ℕ) (hp : 0 < p)
    (hn : (3/4 : ℝ) < Int.fract ((n : ℝ) / p))
    (hm : Int.fract ((m : ℝ) / p) < (1/2 : ℝ)) :
    3*p < 4*(n%p) ∧ 2*(m%p) < p := by
  rw [Int.fract_div_natCast_eq_div_natCast_mod] at hn hm
  have hpR : (0 : ℝ) < p := by exact_mod_cast hp
  have hnR := (lt_div_iff₀ hpR).mp hn
  have hmR := (div_lt_iff₀ hpR).mp hm
  constructor
  · have h : (3 : ℝ)*p < 4*(n%p : ℕ) := by linarith
    exact_mod_cast h
  · have h : (2 : ℝ)*(m%p : ℕ) < p := by linarith
    exact_mod_cast h

/-- Only the nonzero set is constrained; no unjustified smoothness or
equidistribution assumption is hidden in this predicate. -/
def HasMismatchSupport (W : ℝ → ℝ → ℝ) : Prop :=
  ∀ u v, W u v ≠ 0 →
    ((3/4 : ℝ) < Int.fract u ∧ Int.fract v < (1/2 : ℝ)) ∨
    ((3/4 : ℝ) < Int.fract v ∧ Int.fract u < (1/2 : ℝ))

theorem prime_sample_eq_zero (k n m p : ℕ) (W : ℝ → ℝ → ℝ)
    (hk : 2 ≤ k) (hp : p.Prime) (hlo : 2*k ≤ p) (hhi : p ≤ 4*k)
    (heq : blockProduct k m = 4 * blockProduct k n)
    (hW : HasMismatchSupport W) : W ((n : ℝ)/p) ((m : ℝ)/p) = 0 := by
  by_contra hnz
  have hbad := hW _ _ hnz
  apply no_bidirectional_mismatch_of_four_eq k n m p hk hp hlo hhi heq
  rcases hbad with ⟨hn, hm⟩ | ⟨hm, hn⟩
  · exact Or.inl (phase_rectangle_to_residues n m p hp.pos hn hm)
  · exact Or.inr (phase_rectangle_to_residues m n p hp.pos hm hn)

noncomputable def primeSampleSum (k n m : ℕ) (W : ℝ → ℝ → ℝ) : ℝ :=
  ∑ p ∈ (Finset.Icc (2*k) (4*k)).filter Nat.Prime, W ((n : ℝ)/p) ((m : ℝ)/p)

theorem primeSampleSum_eq_zero (k n m : ℕ) (W : ℝ → ℝ → ℝ)
    (hk : 2 ≤ k) (heq : blockProduct k m = 4 * blockProduct k n)
    (hW : HasMismatchSupport W) : primeSampleSum k n m W = 0 := by
  apply Finset.sum_eq_zero
  intro p hp
  obtain ⟨hI, hPrime⟩ := Finset.mem_filter.mp hp
  obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hI
  exact prime_sample_eq_zero k n m p W hk hPrime hlo hhi heq hW

/-- info: 'B686Round9.phase_rectangle_to_residues' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms phase_rectangle_to_residues
/-- info: 'B686Round9.prime_sample_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_sample_eq_zero
/-- info: 'B686Round9.primeSampleSum_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms primeSampleSum_eq_zero

end B686Round9
