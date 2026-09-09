import B686CanonicalVendor.ErdosProblems.Erdos686CanonicalOwnerMatrix
import B686CanonicalVendor.CanonicalOwnerDensityInterface

namespace B686CanonicalVendor
namespace CanonicalOwnerDensity

open Erdos686.Erdos686Variant

/-
This theorem only repackages the exact external matrix conclusion into the
small consumer input shape.  It introduces no new existence or arithmetic
claim; if the external provider is unavailable, this file must remain
blocked rather than being replaced by an axiom.
-/
theorem systemInput_of_external
    {k n d : ℕ}
    (hk4 : 4 ≤ k)
    (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    Nonempty (SystemInput (blockProduct k n) k n d) := by
  obtain ⟨t, data, ht, hfour, hresidual, hlower, hupper,
      hlowerFactor, hupperFactor, hshifted, hpairs, hglobal⟩ :=
    exists_canonicalOwnerSystem hk4 hd heq
  exact ⟨{
    distinguished := t
    cell := canonicalOwnerCell data
    lowerResidual := canonicalLowerResidual data
    upperResidual := canonicalUpperResidual data
    residual := canonicalOwnerResidual data
    distinguished_mem := ht
    distinguished_four_dvd := hfour
    residual_dvd_factorial := hresidual
    lower_residual_product := hlower
    upper_residual_product := hupper
    lower_factorization := hlowerFactor
    upper_factorization := hupperFactor
    shifted_difference_dvd := hshifted
    cells_pairwise_coprime := hpairs
    global_product := hglobal }⟩

end CanonicalOwnerDensity
end B686CanonicalVendor
