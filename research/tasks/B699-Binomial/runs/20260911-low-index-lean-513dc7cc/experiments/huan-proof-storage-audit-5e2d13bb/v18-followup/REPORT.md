# v18 follow-up exact-content hardlink plan

Read-only plan only. No hardlink, replace, delete, or content mutation was performed.

v18 was completed before this scan; the plan excludes the current v19 boundary 20260911T235437363723Z (v19 started 2026-09-11T23:54:37.365088+00:00). All paths remain within the dedicated current-run tools root.

## Totals

- Ended object links: 24,156; identity groups: 4,166.
- Logical bytes: 8,527,080,024; current unique physical bytes: 1,692,444,944.
- Exact-content duplicate groups: 27; paths: 1,215.
- Potential same-volume hardlink saving: 81,495,656 bytes.

Every path, current SHA-256, size, st_dev/st_ino, source references, and canonical target is in duplicate-hardlink-plan.json. The plan keeps successful and failed source/log/evidence bytes and paths. The prior 95,023,000-byte failed-object recovery plan was not executed or changed.

## Focused prefixes

- I11ThreeTwo: 7 groups, 19 paths, 14,899,000 potential bytes.
- Growth: 3 groups, 12 paths, 13,676,832 potential bytes.
- CrtStage0Pair23: 0 groups, 0 paths, 0 potential bytes.
- CofactorCriterion: 1 groups, 294 paths, 566,664 potential bytes.

The v18 ThreeTwo degree38-related leaf/batch objects are included only when their timestamp is before the v19 cutoff. The exact ELeaf/QLeaf and batch paths are listed in the JSON; no current v19 object is included.

## Recheck and execution guard

duplicate-hardlink-recheck.json reports RECHECK_PASS_NO_MUTATION. Before any separately authorized execution, rerun the script, re-read v19 state and active directories, verify every listed path SHA/size/file ID and same-root target, then use a same-directory temporary hardlink plus os.replace only for noncanonical paths. A success-referenced path may be canonical and is never removed.

D free bytes at this scan: 560,689,152.
