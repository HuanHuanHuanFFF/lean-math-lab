# Finite low-index classification

This experiment classifies exactly `3 <= i < 185` for
`t = pi(i - 1)`, with `S` defined by `i <= 4*t` and the positive-index class
defined by `i > 4*t`. The generator uses a sieve. `check.py` is deliberately
independent: it performs direct trial division for every integer from 2
through 184, checks the least-factor certificates and their minimality, then
recomputes every `t` and the interval partition.

The generated `result.json` contains all 182 index rows and all 183 integer
certificates. The finite result is:

```text
S          = [3,96] ∪ [98,100] ∪ [102,120]
positive   = [97,97] ∪ [101,101] ∪ [121,184]
zero       = {96,100,120}
```

Replay from this directory with:

```text
C:\Python314\python.exe -B generate.py --output result.json
C:\Python314\python.exe -B check.py --input result.json
```

This is finite supporting evidence only. It does not scan B699 triples and
does not prove an unrestricted mathematical statement.
