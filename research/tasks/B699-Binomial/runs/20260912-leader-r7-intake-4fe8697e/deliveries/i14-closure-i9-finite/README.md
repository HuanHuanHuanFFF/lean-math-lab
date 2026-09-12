# B699 Pro A · i14 closed / i9 finite

**Paper proof + exact complete certificates; NOT Lean.**

Read `REPORT.md`, then `HANDOFF.md`. Main new result: i14 for **all legal n,j**.
Additional new result: i9 for **all n<2^4096 and all legal j**, not a global i9 closure.
Frozen C's prior 7-smooth i9 row family remains available with its original i10 dependency.

## Receiving replay

Run from this directory with Python 3 and a C++17 compiler plus GMP development libraries.
The actual receiving run used Python 3.13.5. `g++` must link `-lgmpxx -lgmp`.
Do not run Python with `-O`; the receivers deliberately use assertions.

```
python code/reproduce.py
```

Default is serial and performs **all 1,924 large-integer i14 block checks** and every
preferred downstream check. It does not invoke Padé/seed/block discovery searches.
It hash-verifies the two original ZIPs and safely extracts disposable copies to `cache/`.
It adopts the frozen content-family finite/tail certificates rather than rebuilding them.

```
python code/reproduce.py --alternate
```

Also receives the longer twelve-stage M-CRT route and its terminal candidate union.
This exact invocation was actually completed in this delivery: 20 stages, 535.565 seconds.
See `evidence/reproduction.json` and `logs/replay/`.

```
python code/reproduce.py --quick
```

A downstream smoke check that explicitly **skips** large i14 block arithmetic and uses
the archived full receiving result. Its success is NOT a new full-block replay.

```
python code/reproduce.py --inherited-content
```

Additionally invokes original A's full content replay (including its deterministic
prime/prefix caches and 2,284,358 finite blocks). This option was **not run in this
session**. It has a substantially larger cache/workload than the main new-chain replay.
Do not confuse adopting an earlier full result with independently rerunning it today.

## Layout and trust boundaries

`notes/PROOFS.md`: main i14 proof. `notes/I9_FINITE.md`: i9 finite theorem.
`evidence/direct/`: preferred i14 candidates and all-j consumers.
`evidence/blocks/`: all15 i14 prime-pair block certificates.
`evidence/i9/`: finite i9 profiles, blocks, candidates, consumers, exact method boundary.
The older accepted M-chain is in the root of `evidence/`; exploratory files are labelled.

`adopted/archives/` contains the original inputs byte-for-byte. `adopted/C-minimal/`
is the exact lightweight C receiving snapshot; invoke its dedicated
`verify_pade_divisor_interface.py` only, not its copied original full `reproduce.py`.
The complete original C workflow is in its bundled original ZIP.

GMP/Python/C++ are ordinary exact-arithmetic programs, not a proof assistant kernel.
Published BFT inputs and universal paper lemmas remain explicit proof dependencies.
No repository writes, Lean run, external review, or bounty submission occurred.

`MANIFEST.json` hashes all archived members except itself. Caches, binaries, pycache,
and obsolete process-ID files are deliberately excluded from the downloadable ZIP.
