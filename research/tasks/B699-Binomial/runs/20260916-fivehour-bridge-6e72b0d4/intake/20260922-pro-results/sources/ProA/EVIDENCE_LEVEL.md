# EVIDENCE LEVEL

## What is included
- Original byte-preserved evidence ZIPs for all six research rounds.
- Fully expanded copies of every original ZIP payload.
- REPORT / PROOFS / FAILURE_BOUNDARIES / HANDOFF and run-state documents when present.
- Discovery, experiment, replay and acceptance code exactly as packaged in each round.
- Exact certificates, deterministic outputs and logs exactly as packaged.
- SOURCE_ADOPTION / SOURCE_MANIFEST material when present.
- Internal `MANIFEST.sha256` files.
- External clean-replay receipts for all six rounds.
- The session input Overview used for continuation.

## Evidence grade
The mathematical grade is:
**author paper proof + deterministic exact finite certificates + same-session cross-implementation / clean replay, conditional on explicitly frozen adopted inputs**.

This package does NOT upgrade any result to:
- Lean/kernel verification,
- independent external full-chain peer review,
- a complete proof of B699,
- a recovered actual factorization of G,
- or an original-problem counterexample.

No repository modification, commit, push, merge, PR, release, or publication was performed while creating this total package.
