/- leanprover/lean4:v4.29.1 mathlib v4.29.1 -/
import ErdosProblems.Erdos686LocalJetFactorAllocation

/-!
Kernel-audit entrypoint for the corrected local factor-allocation theorem.
The implementation and ordinary proofs live in the production module.
-/

open Erdos686 Erdos686.Erdos686Variant

#check supportDifferential_mul
#check supportDifferentialAt_mul
#check local_jet_product_identities
#check local_jet_allocates_to_right_of_left_value_ne_zero
#check local_jet_simple_left_factor_forces_right_value
#check product_has_full_jet_of_left_and_right_values_zero
#check product_has_full_jet_of_left_full_jet
