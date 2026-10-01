# General sieve upper-bound independent review

Verifier `/root/runtime_review`, GPT-6.1 Sol/xhigh, 2026-10-01 16:49 UTC. **Accepted:** the conditional general correctness interface in `../tail/SieveBound.lean`, SHA256 `7d13cbe31d66ab8ce7d578021e9503114ffc3e7b726a4add5fe1655d648c83cd`.

Metadata correction: the earlier draft minute 16:52 was estimated; replaced with the live clock/checkpoint minute 16:49. Fixed proof source and execution evidence bytes were not changed; accepted scope is unchanged.

Fixed evidence `../tail/verification/20261001T164449086Z/stage-manifest.json`. Source, actual execution snapshot, object, receipt, stdout and all stage member hashes independently match. Actual exit 0, source unchanged, 12.149 seconds, tree working-set peak 1083.76 MiB, Native 0x2030, pinned `-j1 -M3132 -DElab.async=false`; actual public axiom output is exactly propext, Classical.choice, Quot.sound.

I read the source and actual full type: for a nonempty finite P of natural primes, each ≤b, inclusive `Nat.primeCounting b ≤ P.card − 1 + (survivors P b).card`. Survivors are exactly integers 1…b divisible by none of P. The proof maps every prime ≤b either into P or into the survivor set with 1 removed, proves 1 is a survivor using primality, and uses finite cardinal inequalities. Nonempty P supplies the positive cardinal needed to move the subtraction into P.card−1; no unsigned subtraction or b=0 boundary is hidden.

This is a proved sieve correctness bridge. It supplies neither an evaluated inclusion-exclusion formula nor the 115 concrete π(b)≤T bounds. No additional original B699 region or complete index is accepted from this lemma.
