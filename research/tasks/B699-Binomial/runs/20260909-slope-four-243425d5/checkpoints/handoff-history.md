# HANDOFF — B699 n=4j

Checkpoint 1, 2026-09-09. Research is in progress; this is a recoverable record,
not a claim of complete resolution.

Target: every natural 1<=i<j admits a prime p>=i dividing both binom(4j,i)
and binom(4j,j). The inclusive boundary p=i is retained.

Current paper result: the actual complete avoiding part D divides
K4(i)*binom(j,ceil(i/4)) for i>=3, with the residue-class-sensitive K4 defined
in derivation.md. This is not a squarefree substitution for D.

Next consumer: combine this with four-block Vandermonde and the adopted
EEES square advantage. Next tasks: exact diagnostics, uniform height bound,
and only a mathematically derived finite certificate if feasible.

Environment actually tested: Python 3.13.5; SymPy 1.14.0; writable /mnt/data;
GitHub read connector works. A direct requests download from raw GitHub failed
DNS; no source bytes were downloaded that way. Browser tool is available but
not yet used. No Lean, Git branch, push, agent or other-session operation.

Resume at derivation.md; experiments/ will contain only actually executed code.

Checkpoint 2 update: T4 passed all recorded finite diagnostics. The selected
route is now elementary E4/H4, not the EEES route. H4 proves a positive-degree
height bound for every i>=3. Small i=1,2 are proved directly with p=2.
The two explicit failed stronger claims are preserved in attempts.md.
Next: derive a practical uniform linear bound and its finite closure, keeping
any published prime estimates or the adopted large-i theorem explicit.

Checkpoint 3 update: a practical uniform reduction is proved:
noCommon => 4j<4096i => j<=132245 and n<=528980.
All 1021 low-index H4 cutoff checks ran successfully; higher i are treated
analytically with Dusart's theta/pi bounds. The proof no longer needs either
EEES or the previously adopted i>=1,000,000 exclusion. The published prime
estimates remain external mathematical dependencies. Finite closure pending.

Checkpoint 4: finite generator completed. The derived domain compressed to
i<=35, n<=14940, then 2848 original residual pairs, all with prime witnesses;
3 use p=i. See finite-cover.json and witnesses.json. A separate exact checker
is the remaining validation task, not another mathematical search.
