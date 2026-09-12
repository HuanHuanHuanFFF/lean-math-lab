import Mathlib.Data.Rat.BigOperators
import Mathlib.Data.Nat.Log

/-!
Exact rational endpoints of the frozen 96-term zero-boundary checker.
The public formulas are stable for every natural input; only positive inputs
are used mathematically. This candidate does not assert logarithm bounds yet.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.ZeroBoundaryLogBoxes

open scoped BigOperators

def partialSum (m : ℕ) (z : ℚ) : ℚ :=
  ∑ k ∈ Finset.range m, z ^ (2 * k + 1) / ((2 * k + 1 : ℕ) : ℚ)

def smallLower (z : ℚ) : ℚ := 2 * partialSum 96 z

def smallUpper (z : ℚ) : ℚ :=
  smallLower z + 2 * z ^ 193 / (193 * (1 - z ^ 2))

def coarseUpper (m : ℕ) (z : ℚ) : ℚ :=
  2 * partialSum m z + 2 * z ^ (2 * m + 1) / (1 - z ^ 2)

def scaleExponent (a : ℕ) : ℕ := Nat.log2 a

def scalePower (a : ℕ) : ℕ := 2 ^ scaleExponent a

def normalizedArgument (a : ℕ) : ℚ :=
  ((a : ℚ) - (scalePower a : ℚ)) / ((a : ℚ) + (scalePower a : ℚ))

def logLower (a : ℕ) : ℚ :=
  (scaleExponent a : ℚ) * smallLower (1 / 3) + smallLower (normalizedArgument a)

def logUpper (a : ℕ) : ℚ :=
  (scaleExponent a : ℚ) * smallUpper (1 / 3) + smallUpper (normalizedArgument a)

end Math.B699.ZeroBoundaryLogBoxes
