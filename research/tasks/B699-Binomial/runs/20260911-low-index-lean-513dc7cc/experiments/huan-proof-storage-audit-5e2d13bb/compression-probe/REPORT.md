# NTFS compression probe plan

Read-only feasibility check. No compact /C, compact /U, hardlink, replace, delete, or Lean command was run.

D: is NTFS according to the read-only Win32_LogicalDisk probe. The v20 object cutoff is 20260912T000040732118Z (2026-09-12T00:00:40.733326+00:00); all selected objects are earlier and are outside the active directory.

## Bounded candidates

| source module | bytes | SHA-256 | file identity | compact /Q result |
|---|---:|---|---|---|
| research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/Factorial/Factorial25D17.lean | 34,146,696 | f78f9bc01ecde2b9e574fa013aa03861c33a1443a2221ad25cc486b14e276a0d | (6520186894911489219, 562949955802894) | 0 compressed; 1 not compressed; ratio 1.0 |
| research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/Growth/I11ThreeTwoLeaves/QLeaf003.lean | 15,383,696 | f6a3dd74e326d890ea48dd2579d356753818ccc494da75c79b6e9b1750766724 | (6520186894911489219, 281474979180420) | 0 compressed; 1 not compressed; ratio 1.0 |
| research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/Growth/I11ThreeTwoLeaves/QLeaf004.lean | 15,369,648 | 664a9c4808d455cd8deb99236e947f0cf7dc121ef5cc494445c109e646f5321d | (6520186894911489219, 281474979180423) | 0 compressed; 1 not compressed; ratio 1.0 |

Selected total logical bytes: 64,900,040. Each selected object currently has 2 ended paths in its file-identity group; every path and identity is recorded in compression-plan.json.

The three candidates are successful evidence outputs: Factorial25D17, ThreeTwo QLeaf003, and ThreeTwo QLeaf004. The plan records the evidence path, source SHA, output SHA, and every same-identity link.

## Feasibility and safe execution boundary

NTFS supports per-file compression, and all three probes are currently uncompressed. The actual compressed size is intentionally unknown until a supervised measurement; no savings estimate is asserted.

A later bounded run may apply compression only to these exact three paths after rerunning compression_probe_plan.py and confirming v20 state, timestamp boundary, SHA-256, size, file identity, source/evidence references, and all same-identity links. It should then query compact /Q again, recompute SHA and file IDs for every link, and verify source/log/evidence bytes and paths remain unchanged.

The plan preserves hardlink groups by recording every path. If NTFS compression changes the shared file identity, all recorded links must be rechecked together. Any mismatch aborts the operation. No other CRT object, run, worktree, source, log, or evidence is in scope.

Plan status: READ_ONLY_NTFS_COMPRESSION_PLAN_NO_MUTATION.
