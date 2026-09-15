# B699 Pro A — three-digit whole-row consumers

Read REPORT.md, SOURCE_ADOPTION.md, FAILURE_BOUNDARIES.md and notes/PROOFS.md.

First verify the archived bytes (before log regeneration):

    python3 code/check_manifest.py

Then run only the new exact receiving path:

    python3 code/reproduce.py

Python standard library only. It runs byte checks, new finite obligations, new diagnostics, a symbolic-method boundary check and damaged-certificate tests. It does not run old certificates, discovery, Lean, the network or repository commands.

`code/make_certificate.py` is the recorded certificate generator and is not in the receiving path. `code/math_core.py` provides `rational_unit_consumer` (no factorization of the rough gcd) and `source_consumer` (symbolic source parameters; large primes require an exact primality certificate).

FAILURE/NO_CONCLUSION is not NC9. Low-segment all-n statements retain the frozen A9-FINITE dependency. R7 and 58 families are unchanged.
