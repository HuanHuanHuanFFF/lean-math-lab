import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
Research draft: algebraic reduction of B686 / Four at k=5.
Kernel-checked with Lean 4.33.1 in the 2026-09-07 Work session after
repairing the Work container's /proc executable-path lookup.
These identities do not assert nonexistence of the requested natural triple.
The gcd/positivity bridge and exhaustive quotient-curve analysis remain open.
-/

namespace B686K5Reduction

def p5 (t : ℤ) : ℤ := (t + 1) * (t + 2) * (t + 3) * (t + 4) * (t + 5)

def centered (x : ℤ) : ℤ := x ^ 5 - 5 * x ^ 3 + 4 * x

def fifth (a b : ℤ) : ℤ := a ^ 5 - 4 * b ^ 5

def third (a b : ℤ) : ℤ := a ^ 3 - 4 * b ^ 3

def linear (a b : ℤ) : ℤ := a - 4 * b

def sextic (a b : ℤ) : ℤ :=
  9 * a ^ 6 + 64 * a ^ 5 * b - 200 * a ^ 3 * b ^ 3 +
    64 * a * b ^ 5 + 144 * b ^ 6

theorem center_identity (t : ℤ) : p5 t = centered (t + 3) := by
  unfold p5 centered
  ring

theorem scaling_identity (a b g : ℤ) :
    centered (g * a) - 4 * centered (g * b) =
      g * (fifth a b * g ^ 4 - 5 * third a b * g ^ 2 + 4 * linear a b) := by
  unfold centered fifth third linear
  ring

theorem primitive_quadratic (a b g : ℤ) (hg : g ≠ 0)
    (h : centered (g * a) = 4 * centered (g * b)) :
    fifth a b * g ^ 4 - 5 * third a b * g ^ 2 + 4 * linear a b = 0 := by
  have hz : g * (fifth a b * g ^ 4 - 5 * third a b * g ^ 2 +
      4 * linear a b) = 0 := by
    rw [← scaling_identity, h, sub_self]
  exact (mul_eq_zero.mp hz).resolve_left hg

theorem scale_divisibility (a b g : ℤ)
    (h : fifth a b * g ^ 4 - 5 * third a b * g ^ 2 + 4 * linear a b = 0) :
    g ^ 2 ∣ 4 * linear a b := by
  refine ⟨5 * third a b - fifth a b * g ^ 2, ?_⟩
  calc
    4 * linear a b = g ^ 2 * (5 * third a b - fifth a b * g ^ 2) +
        (fifth a b * g ^ 4 - 5 * third a b * g ^ 2 + 4 * linear a b) := by ring
    _ = g ^ 2 * (5 * third a b - fifth a b * g ^ 2) := by rw [h, add_zero]

theorem discriminant_identity (a b u : ℤ) :
    (2 * fifth a b * u - 5 * third a b) ^ 2 - sextic a b =
      4 * fifth a b * (fifth a b * u ^ 2 - 5 * third a b * u + 4 * linear a b) := by
  unfold fifth third linear sextic
  ring

theorem discriminant_square (a b g : ℤ)
    (h : fifth a b * g ^ 4 - 5 * third a b * g ^ 2 + 4 * linear a b = 0) :
    (2 * fifth a b * g ^ 2 - 5 * third a b) ^ 2 = sextic a b := by
  have hu : fifth a b * (g ^ 2) ^ 2 - 5 * third a b * g ^ 2 +
      4 * linear a b = 0 := by
    calc
      _ = fifth a b * g ^ 4 - 5 * third a b * g ^ 2 + 4 * linear a b := by ring
      _ = 0 := h
  have hi := discriminant_identity a b (g ^ 2)
  rw [hu, mul_zero] at hi
  exact sub_eq_zero.mp hi

theorem norm_identity (a b : ℤ) :
    sextic a b = 9 * third a b ^ 2 + 64 * a * b * (a ^ 2 - b ^ 2) ^ 2 := by
  unfold sextic third
  ring

-- This rational point has n=2/3, m=5/3 and is NOT an admissible triple.
theorem rational_boundary_example :
    (14 / 3 : ℚ) ^ 5 - 5 * (14 / 3 : ℚ) ^ 3 + 4 * (14 / 3 : ℚ) =
      4 * ((11 / 3 : ℚ) ^ 5 - 5 * (11 / 3 : ℚ) ^ 3 + 4 * (11 / 3 : ℚ)) := by
  norm_num

-- Read the actual outputs on a working toolchain before recording axiom sets.
#print axioms primitive_quadratic
#print axioms scale_divisibility
#print axioms discriminant_square
#print axioms norm_identity
#print axioms rational_boundary_example

end B686K5Reduction
