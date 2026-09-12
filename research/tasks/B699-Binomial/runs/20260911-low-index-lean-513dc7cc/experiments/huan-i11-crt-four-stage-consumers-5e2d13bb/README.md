# Four-stage CRT consumer candidate

This source-only candidate connects the 24 existing complete-grid
CompleteComposer.rectangle_check roots to the fixed I11CrtStep API. It does
not redefine PairGridData, cutoffCheck, pairGridCheck, SixPairGrids, or any
checker, and it does not re-decide a grid.

The four stage modules are:

- candidate/lean/I11CRTConsumers/Stage00.lean
- candidate/lean/I11CRTConsumers/Stage01.lean
- candidate/lean/I11CRTConsumers/Stage02.lean
- candidate/lean/I11CRTConsumers/Stage03.lean

Each module defines six typed PairGridData values, proves the two metadata
cutoffs, proves pairGridCheck_of_parts from the existing
CompleteComposer.rectangle_check, proves stageConstantsCheck from the
NumericMetadata certificate, and constructs a typed SixPairGrids value.
Every public root has a fully qualified #print axioms entry.

AllStages.lean defines four actual_i11_next_height connections:

- Stage00 H/M/T to Stage01.H
- Stage01 H/M/T to Stage02.H
- Stage02 H/M/T to Stage03.H
- Stage03 H/M/T to Stage04.H

The max computations are reduced using the actual M and upper values, then the
existing NumericMetadata next_height theorem supplies the exact successor.
The final roots are
Math.B699.I11CRTConsumers.AllStages.initial_to_stage04, with conclusion
n < Stage04.H, and initial_to_29294603, with conclusion n < 29294603. Their
only mathematical inputs are hij : 11 < j, hjn : j ≤ n / 2,
hno : ¬ Common n 11 j, and hn109 : n < 2^109.

Imports point at the future run lean module names for the existing
CompleteComposer sources. The source manifest records the 24 composer paths
and SHA-256 values from the complete-grid candidate, the pinned
NumericMetadata path and SHA, every generated source SHA, and the exact
Stage00 through Stage04 H/M/T values. This package has not been compiled by
Lean.