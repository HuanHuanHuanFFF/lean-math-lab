# Actual original-input membership interface

```lean
theorem actual_i11_candidateMem (data : SixPairGrids)
    {n j H M : ℕ} {candidates : List NatInterval}
    (hconstants : stageConstantsCheck H M = true)
    (check23 : pairGridCoverCheck 2 3 H M data.grid23 candidates = true)
    (check25 : pairGridCoverCheck 2 5 H M data.grid25 candidates = true)
    (check27 : pairGridCoverCheck 2 7 H M data.grid27 candidates = true)
    (check35 : pairGridCoverCheck 3 5 H M data.grid35 candidates = true)
    (check37 : pairGridCoverCheck 3 7 H M data.grid37 candidates = true)
    (check57 : pairGridCoverCheck 5 7 H M data.grid57 candidates = true)
    (hsmall : coverCheck 24 (max M 109) candidates = true)
    (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j) (hnH : n < H) : candidateMem n candidates
```

No power equations, cofactors, n interval endpoints or candidate membership are inputs. They are derived on the large branch from the accepted actual bounded-cofactor theorem. The finite check hypotheses are not supplied numerically by this experiment.

`common_of_terminal_grid_checks` adds only `candidateIntervalsCheck candidates witnesses=true` and eliminates hno by contradiction, yielding Common n11j for every legal n<H,j. This is still conditional on complete finite certificates and is not a new original-index result.
