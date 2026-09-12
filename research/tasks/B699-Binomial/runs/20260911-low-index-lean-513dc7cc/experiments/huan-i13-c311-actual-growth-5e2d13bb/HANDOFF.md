# Actual c7d5 Q/E candidate handoff

This package is source-complete and independently checked with exact Python arithmetic. It is **not Lean accepted**. All writes were restricted to this package; no main-run lean file, old frozen package, other edge, threshold, seed or CRT data was changed. New Lean invocations:0.

The requested fixed input is P=243,Q=121,z=1/243,c=7,d=5,lambdaQ=451/100000,lambdaE=973/1000000. The future high-height consumer keeps n15360/Y15359 and original321/407 weights, but these Q/E candidate theorems themselves cover every naturalm>=1 and bothdelta=0,1, with no height, G, BFT estimate or GrowthTree hypothesis remaining in the final theorem.

## What is implemented

- `candidate/lean/Factorial/Factorial7D5.lean`: actual factorial recurrence, exact ten-degree all-positive certificate, delta ratio through accepted generic theorem, telescoping upper bound and exact m1 values33264/34650. The source theorem is Fdelta(m)<(2Fdelta(1)/beta)*beta^m for everym>=1; it does not assume this bound.
- `candidate/lean/Growth/I13C311Shared.lean`: typed literal seed/core/weight/lambda definitions.
- `candidate/lean/Growth/Leaves/`: Q6leaves at maximum depth5 and E2leaves at depth1. Every leaf is a separate module, with13actual gap coefficients, a complete polynomial identity, local core/weight cone proofs and bothdelta GrowthTree constructors. The actual affine gap polynomial is represented with coefficient `choose(12,k)*(lambda-bk)` in the unnormalized Bernstein basis.
- `candidate/lean/Growth/I13C311Leaves.lean`: imports only, for composition after leaf acceptance. It targets main-run `Growth/I13C311Leaves/<leaf>.lean`; the local staging folder is simply `Growth/Leaves/`. Use the source map rather than mirroring this one folder name blindly.
- `candidate/lean/Growth/I13C311Tree.lean`: genuine dyadic GrowthTree composition, four total trees,16fully-qualified leaf uses. No pointwise numerical fact is taken as a global cone hypothesis.
- `candidate/lean/I13C311QE/{Parameters,Numeric,Bounds,Audit}.lean`: actual m1 values and exact normalized constants; fixed trees; general majorant retaining its multiplicative constant; final actual normalized and coarse all-m bounds;19explicit final audit roots.

The final declarations in `Math.B699.I13C311QE` include

```text
actual_q_normalized_bound:
  |actualQ 7 5 delta m (1/243)| <= qNormalizedConstant delta * qBase^m
actual_e_normalized_bound:
  |actualE 7 5 delta m (1/243)| <= eNormalizedConstant delta * eBase^m
actual_q_bound:
  |actualQ 7 5 delta m (1/243)| <= (1/2)*qBase^m
actual_e_zero_bound:
  |actualE 7 5 0 m (1/243)| <= (11/100)*eBase^m
actual_e_one_bound:
  |actualE 7 5 1 m (1/243)| <= (1/2)*eBase^m
```

Here `qBase=beta(7,5)*lambdaQ`, `eBase=beta(7,5)*lambdaE`. All exact normalized constants are actually defined by m1 polynomial values and proved in `Numeric`; they are not abstract input fields. Generic helper theorems expose tree/cap premises, but the final theorems supply every such premise from the concrete candidate modules.

## Static and arithmetic validation

`verify_candidate.py` independently reconstructs the standard Bernstein coefficients by multiplying affine endpoint factors, rather than using the generator's power conversion/de Casteljau recurrence. It checks all104positive gap coefficients against the literal Lean source, full polynomial reconstruction, tamper rejection, all leaf intervals and complete [0,1] coverage. It checks bothdelta references exactly once per leaf, all16future module imports and the dependency graph, actual numeric literals, the factorial polynomial identity, typed annotations and absence of placeholder proof/axiom declarations.

The factorial independent check uses13distinct exact points together with the known degree<=12 to verify a polynomial identity; positive coefficients then give the allm>=1 claim. This is not extrapolation from a finite sequence sample.

`verify_sources.py` rechecks six accepted framework/G receipts and their current transitive source/object SHA bindings. Both prior frozen packages,18files total, remain byte-identical. SHA mappings, intended future targets and serial order are in `SOURCE_MAP.json`; the complete independent result is `independent-check.json`.

Static/source checking is not Lean type checking. The intended statements have explicit typed binders and `#print axioms` declarations, but all16new modules and the19root audit remain uncompiled. No Lean run was attempted.

## Integration and first acceptance sequence

Copy each file using `SOURCE_MAP.json / candidate_sources[*].future_target`, preserving bytes, and import only after checking the mappedSHA. In particular, map staged `Growth/Leaves/QLeaf000.lean` to future `Growth/I13C311Leaves/QLeaf000.lean`; the imports are already written for that final location.

Use one heavy Lean process at a time,1536MiB per small leaf. This is a source layout target, not measured memory use. A suitable sequence is the factorial module, Shared/Parameters/Numeric, individual Q/E leaves, Leaves aggregate, Tree, Bounds, and finally Audit. The exact topological order is recorded in the source map. Existing accepted framework objects should be reused only under their current source hashes. The parent owns queue integration and actual acceptance.

This candidate family is sufficient to remove the previous BFT Q/E dependency **if its actual compilation, source alignment and transitive axiom checks pass**. The actual Padé edge, G/selector/row connection, otheri13edges, weighted bridge and original theorem remain separate. No original i13 coverage is counted here. No new novelty claim is made.

## Review corrections and checkpoint

Before any freeze or Lean run, source inspection caught two local adaptation issues: the factorial hd increment inherited3and was corrected to5; definitions depending on actualQ/E were markednoncomputable. Neither erroneous draft was submitted for acceptance. The independent import checker initially mirrored the staging `Leaves` folder; it was corrected to use the explicit future `I13C311Leaves` mapping. These were candidate preparation corrections, not prior accepted-source edits.

This implementation started2026-09-12 04:07:54UTC. Checkpoints are every20minutes, not a deadline. `CHECKPOINT.json` records the actual elapsed time and final scope. After `FREEZE.json` exists, generators refuse mutations and both verification entrances remain read-only. Recheck with C:/Python314/python.exe -B and PYTHONUTF8=1.
