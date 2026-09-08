/- Mechanical adapter for the sliced canonical-owner provider.  This is a
   projection of the exact upstream conclusion; it adds no existence claim. -/
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced.Erdos686CanonicalOwnerMatrix
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced.CanonicalOwnerDensityInterface


namespace B686CanonicalVendor
namespace CanonicalOwnerDensity

open Erdos686.Erdos686Variant

theorem systemInput_of_sliced_external
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
