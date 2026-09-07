import Mathlib.Algebra.BigOperators.Finprod
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
Exact rational certificates about one auxiliary approximation, not a solution
of B686. The product uses the original factors n+1,...,n+k.
The corresponding real square-root error is between 4*(5/256) and 5*(5/256)
at k=10,n=10^3; the signed-square inequalities below certify this claim.
-/
namespace B686Round8Independent

def blockProduct (k : ℕ) (n : ℚ) : ℚ :=
  ∏ i ∈ Finset.range k, (n + i + 1)

def sqrtApprox10 (n : ℚ) : ℚ :=
  n ^ 5 + (55 / 2) * n ^ 4 + (2255 / 8) * n ^ 3 +
    (21175 / 16) * n ^ 2 + (353947 / 128) * n + (496705 / 256)

/-- Exact residual identity; degree 4 is lower than the degree-5 approximation. -/
theorem sqrt_approx10_residual (n : ℚ) :
    sqrtApprox10 n ^ 2 - blockProduct 10 n =
      (81125 / 512) * (n + 11 / 2) ^ 4 -
      (5457375 / 16384) * (n + 11 / 2) ^ 2 + 893025 / 1024 := by
  norm_num [blockProduct, Finset.prod_range_succ, sqrtApprox10]
  ring

/-- Signed-square bracket at n=k^3. This is a counterexample to an auxiliary
sub-lattice-error claim at that scale, not a B686 witness. -/
theorem sqrt_approx10_squared_bracket_at_cubic_scale :
    0 < sqrtApprox10 (10 ^ 3) - 5 * (5 / 256 : ℚ) ∧
    (sqrtApprox10 (10 ^ 3) - 5 * (5 / 256 : ℚ)) ^ 2 < blockProduct 10 (10 ^ 3) ∧
    blockProduct 10 (10 ^ 3) < (sqrtApprox10 (10 ^ 3) - 4 * (5 / 256 : ℚ)) ^ 2 := by
  norm_num [blockProduct, Finset.prod_range_succ, sqrtApprox10]

#print axioms sqrt_approx10_residual
#print axioms sqrt_approx10_squared_bracket_at_cubic_scale

end B686Round8Independent
