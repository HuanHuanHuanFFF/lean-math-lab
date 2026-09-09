# Independent three-stage finite-cover check

`check.py` independently reconstructs the two-colour cover from
`p,Q,A` families. It performs trial-division primality checks, exact height
and M certificates, all `Q < hi` enumeration including empty A ranges,
per-prime interval merging, and two-pointer intersections for every pair of
distinct prime colours. A layer with only one colour is allowed to contribute
no intersection; the record-wide union must still match the reported cover.

`check_all.py` runs that check and then independently verifies:

1. `topprime-residual.json`: the input is exactly the small-n boundary plus
   the two-colour cover, every deletion prime is independently prime with
   `p > i` and `p <= L <= R < p+i`, and deletion plus residual intervals form
   an exact partition.
2. `actual-v-filter.json`: the 67 residual `(i,n)` pairs are exact, every
   `C(n,i)` is recomputed, all p<i factors are divided out directly to obtain
   `U,V`, and the exact `K*V^lambda > n^E` comparison is checked.

Replay:

```text
C:\Python314\python.exe -B check_all.py --cover ..\..\..\..\..\..\..\..\notes\heights\two-colour-cover.json --topprime ..\..\..\..\..\..\..\..\notes\heights\topprime-residual.json --actual-v ..\..\..\..\..\..\..\..\notes\heights\actual-v-filter.json --tamper-test
```

The paths in the command are relative to this directory; using the absolute
paths recorded in `run-20260909T070526Z/command.txt` is clearer on Windows.
This finite evidence does not run Lean, enumerate `j`, or prove the original
unbounded B699 statement.
