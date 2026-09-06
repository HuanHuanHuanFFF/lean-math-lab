import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
Local research artifact: the source recurrence equals the boundary-corrected
continuant expression for every n >= 1. This file does not formalize the
determinant, the complex root-sector argument, or log-concavity.

Source: Galvin--Sharpe, arXiv:2409.15555v5, Theorem 1.7.
The intended specialization is q = 1 + (ell - 1)*x, r = 1 + (ell - 2)*x.
We keep q and r independent to state the underlying algebraic identity.
-/
namespace M1Exploration

variable {R : Type*} [CommRing R]

/-- Fibonacci-type continuants, indexed to avoid negative natural indices. -/
def fibRec (a b : R) : ℕ → R
  | 0 => 0
  | 1 => 1
  | n + 2 => a * fibRec a b (n + 1) + b * fibRec a b n

/-- The source hypercomb recurrence with the two linear factors abstracted. -/
def hypercombRec (q r x : R) : ℕ → R
  | 0 => q + x
  | 1 => q * (q * r + 2 * x)
  | n + 2 => q * (r * hypercombRec q r x (n + 1) + x * hypercombRec q r x n)

/-- C_(n+1) expressed through three ordinary continuants. -/
def boundaryClosed (q r x : R) (n : ℕ) : R :=
  q * (fibRec (q * r) (x * q) (n + 2) +
    2 * x * fibRec (q * r) (x * q) (n + 1) +
    x ^ 2 * fibRec (q * r) (x * q) n)

theorem boundary_closed_recurrence (q r x : R) (n : ℕ) :
    boundaryClosed q r x (n + 2) =
      q * (r * boundaryClosed q r x (n + 1) + x * boundaryClosed q r x n) := by
  simp only [boundaryClosed, fibRec]
  ring

/-- For every n >= 1, the recurrence has the boundary-continuant form. -/
theorem hypercomb_boundary_closed (q r x : R) (n : ℕ) :
    hypercombRec q r x (n + 1) = boundaryClosed q r x n := by
  have h : ∀ m : ℕ,
      hypercombRec q r x (m + 1) = boundaryClosed q r x m ∧
      hypercombRec q r x (m + 2) = boundaryClosed q r x (m + 1) := by
    intro m
    induction m with
    | zero =>
      constructor <;> simp only [hypercombRec, boundaryClosed, fibRec] <;> ring
    | succ m ih =>
      constructor
      · exact ih.2
      · calc
          hypercombRec q r x (m + 3) =
              q * (r * hypercombRec q r x (m + 2) +
                x * hypercombRec q r x (m + 1)) := by rw [hypercombRec]
          _ = q * (r * boundaryClosed q r x (m + 1) +
                x * boundaryClosed q r x m) := by rw [ih.1, ih.2]
          _ = boundaryClosed q r x (m + 2) :=
            (boundary_closed_recurrence q r x m).symm
  exact (h n).1

/-- The n=2 boundary term is x^2; omitting it changes the source sequence. -/
theorem hypercomb_two (q r x : R) :
    hypercombRec q r x 2 =
      q * ((q * r) ^ 2 + 2 * x * (q * r) + x * q + x ^ 2) := by
  simp only [hypercombRec]
  ring

theorem hypercomb_one_specialization (a x : R) :
    hypercombRec (1 + (a + 1) * x) (1 + a * x) x 1 =
      1 + (3 * a + 4) * x + 3 * (a + 1) ^ 2 * x ^ 2 +
        (a + 1) ^ 2 * a * x ^ 3 := by
  simp only [hypercombRec]
  ring

/-- info: 'M1Exploration.boundary_closed_recurrence' depends on axioms: [propext] -/
#guard_msgs in
#print axioms boundary_closed_recurrence
/-- info: 'M1Exploration.hypercomb_boundary_closed' depends on axioms: [propext] -/
#guard_msgs in
#print axioms hypercomb_boundary_closed
/-- info: 'M1Exploration.hypercomb_two' depends on axioms: [propext] -/
#guard_msgs in
#print axioms hypercomb_two
/-- info: 'M1Exploration.hypercomb_one_specialization' depends on axioms: [propext] -/
#guard_msgs in
#print axioms hypercomb_one_specialization

end M1Exploration

