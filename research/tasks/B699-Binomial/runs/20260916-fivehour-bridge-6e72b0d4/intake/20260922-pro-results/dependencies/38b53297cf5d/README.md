# B699 D / i=3 · Round 5 · COF40 / COMP1

Read REPORT.md for scope and result, PROOFS.md for the full all-parameter argument, FAILURES.md for exact failed models, and HANDOFF.md for the next session.

New cofactor: W_Delta=(Delta³-1)/v, distinct from the old w_old=1.

```
W_Delta>=2;
16Delta<W_Delta²+640W_Delta;
n<2^20Delta^12;
n<2^72W_Delta^24.
```

All statements concern the precisely frozen same-input minimal branch or the explicitly wider integer core. No global i3 solution, Lean or original counterexample is claimed.

Portable replay: `bash replay.sh`. See REPLAY.md for all entry points.
