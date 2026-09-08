import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced.CanonicalOwnerMatrixAdapter

/-! Stable entry point for the B686 canonical-owner provider.

The vendor modules retain the upstream mathematical namespaces.  This file
only exposes the sliced provider and its consumer adapter through the run's
standard repository module path; it does not import the historical full
`Erdos686` file or any density consumer.
-/

/- The source theorem and the consumer projection are checked separately so a
   future provider replacement cannot silently change either API. -/
/-- info: 'Erdos686.Erdos686Variant.exists_canonicalOwnerSystem' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms Erdos686.Erdos686Variant.exists_canonicalOwnerSystem

/-- info: 'B686CanonicalVendor.CanonicalOwnerDensity.systemInput_of_sliced_external' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms B686CanonicalVendor.CanonicalOwnerDensity.systemInput_of_sliced_external

#check @B686CanonicalVendor.CanonicalOwnerDensity.systemInput_of_sliced_external
