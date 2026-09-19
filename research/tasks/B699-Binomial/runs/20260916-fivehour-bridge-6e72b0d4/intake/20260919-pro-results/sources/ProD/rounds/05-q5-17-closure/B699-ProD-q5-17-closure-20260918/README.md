# B699 Pro D · q5=17 full-row closure

Main theorem: for every E>=7 with E=1 mod6, n=17*5^E+5, all legal i6 targets are covered.
See REPORT.md for scope and PROOFS.md for the full paper argument.

## Replay

Python 3.10 or later, standard library only:

    python code/verify.py --json

Expected status:

    PASS_Q5_17_FULL_ROW_CLOSURE

The verifier checks SHA256SUMS when present, exact polynomial identities, theorem-instantiation
arithmetic, full residue-lift certificates, and all six rigorously finite terminal exponents.
It does not prove the cited published Bugeaud theorem, run Lean, scan to 10^12, or replay old research.

## Contents

- REPORT / PROOFS / SOURCE_ADOPTION / FAILURES / HANDOFF: result, proof, provenance and remaining scope.
- code/: exact verification and a native original-input witness-divisor API.
- evidence/: complete residue traces and finite terminal integer certificates.
- sources/: frozen-source metadata, explicit QIG restatement, and unchanged prior delivery documents.
- SHA256SUMS: hashes for every other content file; not self-hashed.

An external receipt records replay from the final ZIP's fresh extraction and the ZIP SHA-256.
No Lean, independent human review, repository write or general RES10 closure is claimed.
