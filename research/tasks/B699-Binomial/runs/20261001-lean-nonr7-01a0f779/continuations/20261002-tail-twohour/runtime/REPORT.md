# Two-hour resource control and independent validation

Owner `/root/runtime_review`, user-selected GPT-6.1 Sol/xhigh. Baseline `8685508c19d73a0dbf8e07339b72bac35e6899ce`, same branch; no commit/push/branch action by this task. Budget starts 2026-10-01 17:18:06 UTC, original hard stop 19:18:06 UTC, mathematical freeze 19:12. Older source/controllers/evidence/stop snapshots are preserved.

Live start: 17:19:42 available physical 1.586 GiB, commit 35.139 GiB, CPU busy 32.83%, D free 36.272 GiB; no Lean job. 17:20:25 physical 1.868/commit35.798/D36.270; 17:20:44 lock free. Heavy source checks wait for physical >=3072 MiB, tree working-set cap1792, Lean M3132, available commit>=4096, runtime physical reserve900, one global FileStream lock, Idle/affinity3, Lean -j1/Elab.async=false. Each task <=300 seconds and no later than the original deadline. All new logs/cache/temp on D. No large download or library build.

Fixed toolchain 4.33.1 and all nine package source/cache paths are reused. seed-objects.ps1 copies only project objects with actual prior success/exit0, unchanged current source hash and matching object hash, including available exact sidecars; no library cache copy. Both frozen rounds contribute 98 unique project modules, 58,578,944 bytes per owned object root. Reuse receipts distinguish object reuse from new compilation. Caller OutputRoot is first in LEAN_PATH to avoid research prefix shadowing. Worker roots are tail/objects and gap/objects; independent verifier owns runtime/objects.

## Calibrated light tasks

Pure Lean/Omega definition and fixed row probes use a single calibrated 1536 MiB start /512 MiB tree cap; the difference leaves1024 MiB above the900 reserve. This was based on prior same-import RowsNumeric462.38 MiB. Actual new PrunedCount/NumericProbe peaks443.91/444.08 MiB, exit0. The maximal whole-tree numeric row exceeded512 (514.55 MiB), exit124; no mathematical acceptance. The executor changed to bounded DAG/leaf workload instead of raising the physical cap. A same-cap split-max probe is permitted; generated integers are candidate proof literals until kernel proof and recurrence equivalence are checked.

GapAdapter receives one calibrated2304 start/1280 tree probe, based on the exact frozen CofactorCriterion root1039.19 MiB plus new pure-Nat interval helpers. It retains900 reserve and4096 commit. Its first attempt only failed the start gate, without starting Lean. New general Real/Gap roots retain the heavy gate unless independently calibrated. Published DS inputs remain explicit unproved premises.

Light Python generator/audit commands are256 tree/1200 start only when the actual workload has small prior or bounded size. C:/Python314/python.exe is an existing runtime, not a new installation; -B and process-local TEMP/TMP/PYTHONDONTWRITEBYTECODE keep new output on D. Command -Source captures script bytes/hash as well as actual executable/arguments and source-after hash. All generation/audits share the global lock.

## Actual checker discovery and limits

Found the pinned distribution's bin/leanchecker.exe (115200 bytes). No alternative independent implementation was found in the fixed bin directory, PATH or checker-named .tools directories. The elan/bin copy is a toolchain proxy, not evidence of a second kernel. Fixed source reference: https://github.com/leanprover/lean4/blob/v4.33.1/src/LeanChecker.lean . This executable replays declarations with the same Lean kernel; its normal mode trusts imported module environments, and --fresh replays all constants from an exact single module's imported environment. It is not an independent kernel implementation.

The --help discovery attempt ignored the unknown flag and selected the repository manifest default Lean_math_lab, producing missing-olean exit1. A bare module string with hyphens could not resolve; exact module identifiers need their Lean «quoted» segments. These are invocation failures, not proof rejection.

Actual normal replay succeeded at 17:26 for frozen RowsNumeric: leanchecker -v research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.RowsNumeric . Exit0,20.33 seconds, tree peak382.91 MiB, actual stdout identifies the replayed module, native flags0x2030. This proves the checker is runnable; it does not accept new pruning semantics or final original statements.

Final acceptance requires this verifier to freshly compile the fixed original consumer source, run an explicit complete-type consumer check and reject any unexpected transitive axiom, and actually replay the new fixed numeric/terminal object with leanchecker. The final record will state exactly which modules were replayed, whether --fresh was used, and the remaining trust boundary. No second-kernel claim or CI substitute.

## Closed result and stop

Final ratio-region acceptance completed19:17:22 UTC, before hard19:18:06: independently fresh exact source, canonical all-natural n/i/j type with i≥1000/n≥4096i and full legal j, refusal transitive axioms exactly standard3, normal pinned checker all actual exit0. Details reviews/final-original-ratio.md and runtime/final-RatioOriginal1000-validation.json; raw3 receipt/stdout/stderr/source/controller byte copies in verification/final-ratio-original. All115 algorithm values/source correspondence, generic complete-floor identity, Core/modern binding and actual inclusive π(b)≤T were independently accepted. This closes the concrete count obligation and strengthens the original ratio region; all-n i≥4883 still depends on unproved gap/finite supply. No complete original index added.

Resource-driven reductions preserved every failed attempt. One fixed8926B NormNum.Prime source leaf was compiled then5 exact artifacts613848B connected; no downloads/large package/cache rebuild. Stop receipt19:18:43 reports127 own recorded child identities/live0/terminated0/lockfree,physical3.378GiB/D35.975GiB. Proof/checker had already ended19:17:22. Postdeadline work only copies already completed evidence and fixes administrative records; no new mathematical acceptance. Unreviewed Gap Real/DS/sparse execution packages remain independent-review pending.
