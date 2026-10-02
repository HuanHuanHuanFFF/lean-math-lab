# Runtime recovery: fixed-source one-hour continuation

Owner: `runtime_recovery_sol`, complex cross-script execution/debugging, `gpt-6.1-sol / xhigh`. The runtime task, source baseline `d094fd1e54a27d45f1c38b8897e67486ab2a8ad6`, and original 09:25:29–10:25:29 UTC budget continue unchanged. This report does not replace the historical `STOP-CHECKPOINT.md`.

## Local preparation and actual rejection

The verified Native `GlobalMemoryStatusEx` sampler was copied from the fixed previous controller. Actual available physical memory was 0.727 GiB at 09:50:54, 0.812 GiB at 09:53:20, 0.569 GiB at 09:54:48, and 0.374 GiB at 10:01:37 UTC. The earlier Counter/WMI difference remains unexplained; it is not a start clearance. No unrelated process was stopped.

New scripts parse successfully and write only the new continuation's owned runtime/tools paths. The shared global compile lock, original 10:25:29 UTC deadline, Idle priority, affinity mask 3, `-j1`, `-M3132`, async=false, 900 MiB running physical reserve, 4096 MiB commit margin, and local D: 20 GiB reserve remain. Only heavy 3072/1792 MiB and historical source-bound light 1800/768 MiB startup/tree profiles are accepted.

The actual ChainCore light-profile invocation was rejected at 09:54:18 with 778698752 physical bytes available; `childStarted=false`, no Lean exit or object. Exact raw files and source snapshot are preserved in `local-preflight/`, with `local-preflight-map.json`. The local lock was free and no owned proof/checker process was observed at the subsequent check.

`environment-byte-receipt.json` binds the Lean 4.33.1 declaration, nine live package revisions, manifest hash, executable hashes, and the exact NormNum.Prime source plus five existing artifacts (613848 bytes). `object-reuse.json` records 178 source/receipt/object/sidecar-verified historical objects copied into the new private prefix, 83345032 bytes. The private prefix has no Mathlib shadow. These are current byte/environment checks and historical-object reuse, not new mathematical acceptance.

## First narrow CI: actual cache guard stop

Source commit: `68dcfb03844a7cfff460394c12f9f1487fa66781`. Run: [36993633549](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/runs/36993633549), job 110795258988. Checkout, fixed ten-source preflight, and pinned Lean installation succeeded. Setup took approximately 43 seconds; the controlled focused-cache command then ran 56.9945 seconds.

The cache process tree reached 2139443200 bytes (2040.33 MiB), exceeding the fixed 1792 MiB guard; the controller stopped it with exit -9. Available memory remained about 15002898432 bytes and no cgroup memory quota applied. This was a guard stop, not a demonstrated system OOM. Its specific child phase is unknown: stderr records the nine dependency clones/checkouts, with no completed cache or proof result. No source in the ten-file mathematical closure was compiled by this run.

Artifact 11220084104 contains all 15 mapped ordinary members. Original ZIP: `D:\ResearchArtifacts\b699-finite-onehour\b699-finite-onehour-36993633549.zip`, 13085 bytes, SHA256 `443b493d6d8a8c585c9fa5df6485fd2708a6ad02a8469a9439878fcf7d67195b`. Exact ordinary files are in `ci/36993633549/`; the archive digest and every member of its byte manifest were checked. `ci/36993633549-intake.json` is the member-level map. The ZIP remains outside the checkout and Git.

## Authorized retry preparation

Root authorized a cache-only fixed profile based on the actual approximately 14 GiB available memory: startup 5120 MiB, process tree 3072 MiB, LEAN_NUM_THREADS=1. Proof compilation retains 3072/1792 MiB and all original proof/reserve/deadline restrictions. The mathematical ten-source/50-root manifest is unchanged; every root must produce complete actual dependency output with a subset of the three allowed standard axioms. Any unexpected axiom or duplicate is rejected; actual exact lists are recorded, without requiring all three axioms to occur.

At Root's 10:12:57 checkpoint, the remaining job budget was narrowed from twelve to eight minutes. The executable checkout-before cutoff is now 10:16:29 UTC, allowing the job to finish by 10:24:29; the original absolute 10:25:29 deadline is unchanged. The source manifest's original lastJobStart field remains historical metadata; the workflow implements the current cutoff. Runner SHA256: `f12734b5de5766199bb56936832f5fac0eb94967ec6bcb044e138fb21c95d4bd`; workflow SHA256: `de799ac0096a45734fa512c9f6c1e81150d80f779aacf5cdc35af92ada682545`. The latest mathematical source manifest SHA256 is `8a00c25b51134fc1b37efcc248c4099cf03107664dcf3a82af4ddbeb7b67e3c2`.

State at the preparation checkpoint: retry was prepared and handed to Root for ordinary push. This was not a started or accepted proof. The subsequent actual result is recorded below.

## Second narrow CI: cache success, source-byte rejection

Source commit `f639d4a64d0e7919aff221db285a97d19deaa024`, run [36994418404](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/runs/36994418404), job 110797744650, created 10:15:01 UTC. The job passed the 10:16:29 checkout-before gate and ran under the eight-minute budget. The focused three-import cache succeeded in 83.65575 seconds, with peak tree RSS 1830699008 bytes and minimum available memory 14926721024 bytes. Its actual output records 614 files downloaded and decompressed. Nine dependency revision checks also succeeded.

The next source-byte guard rejected NormNum.Prime at 10:17:09 UTC. No file in the mathematical ten-source closure was compiled, and no new axiom audit or normal checker replay ran. This guard used the exact Windows materialization hash for a Linux checkout. The worker's cross-platform byte binding was therefore wrong; the failed result is preserved rather than relabeled as success.

Read-only diagnosis found clean Git source status with index LF and Windows worktree CRLF. The Windows materialization is 8926 bytes, SHA256 `d49b3419be815ca4eb4cc35a38a6ca9f56769daf54fb7fcb1a0cb554ff6d4460`. Streaming the exact `Mathlib/Tactic/NormNum/Prime.lean` blob from fixed package commit `0df444a360eaa60ab8c11dca51a86af692955474` produced 8719 bytes, SHA256 `3d326681e08ba979f2102e6196c5fb4b9b0f01bbb1db3e21aed54190d1ae00f6`, and Git exit 0. The latter is exactly the CRLF-to-LF normalization of the current Windows source. The canonical raw blob and `normnum-prime-cross-platform-source-map.json` preserve this correspondence. The failed remote runner did not log the actual remote leaf source hash; that gap is explicit.

Artifact 11221450118: 26509 bytes, SHA256 `82dd74f6c96a7983971245ef9ce868d0ab8bed49bb915c9e28994c465c74b748`. The original ZIP is `D:\ResearchArtifacts\b699-finite-onehour\b699-finite-onehour-36994418404.zip`. All 42 ordinary members and every supplied byte-manifest entry are mapped and verified in `ci/36994418404/` and `ci/36994418404-intake.json`. No proof objects are present. No further CI route, source edit, or proof check was started after the failure.

Current status at 10:21:26 UTC: environment/cache preparation has current evidence; the new mathematical candidates and typed roots remain uncompiled and unaccepted. No new original-problem region, all-index supply, or global Gap theorem is accepted. The next bounded recovery is to use the canonical LF source hash with an explicit raw-byte platform mapping, retaining the standard-axiom refusal and exact source/receipt/object bindings. It requires a newly authorized execution budget. Mathematical acceptance remains the named semantic verifier's responsibility.

## Frozen continuation entry and final administrative observation

At Root's explicit instruction, the existing source-binding bug was repaired statically without launching a proof or CI job. The next runner streams `git show` for the exact pinned canonical source, validates its raw SHA256 and size, and requires the actual remote working source to equal those raw bytes. The Windows materialization hash remains historical provenance. The unchanged ten mathematical sources and fifty roots were compared against the second artifact's manifest. AST, JSON and YAML checks passed; this is `nextcheck-ready-not-run`, independently reviewed by semantic_verify_sol in `reviews/normnum-pinned-blob-independent-map.json` and `reviews/FINAL-PENDING.json`.

Current runner SHA256 `ba671c15a592fecef38bc3c16e84dfa028cf6484b7ba96f0d988bd3bc5ab5f8c`; current manifest SHA256 `910ad1fd5401dd312c9b21268b23d6c3839dfa48bfe5c3871c27137611a68644`. Workflow SHA256 `e95b238f7b90948f0ea3988e4866b4e9d38b3639a4d8bb1910b6190f2d4f3c46`: manual dispatch only, retaining the expired checkout-before gate and original hard deadline. Ordinary final publication therefore does not trigger another job.

The original deadline was 10:25:29 UTC. No proof or checker was active then; the last owned CI had already ended at 10:17:10. The single final local administrative observation is timestamped 10:25:43.877 UTC, not relabeled as 10:25:29. It records zero registered active/terminated PIDs, the shared lock free, physical memory available 1.000 GiB and D: available 30.993 GiB. Fresh read-only API snapshots report both owned jobs completed/failure. `stop-receipt.json` and `ci/deadline-status.json` preserve the observations. There was no proof/checker invocation after the deadline. Actual new mathematical compilations and new kernel acceptances are both zero.
