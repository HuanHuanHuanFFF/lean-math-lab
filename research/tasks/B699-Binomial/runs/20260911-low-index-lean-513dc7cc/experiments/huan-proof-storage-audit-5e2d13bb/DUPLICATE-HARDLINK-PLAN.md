# Exact-content hardlink deduplication plan

This is a dry-run plan only. No hardlink, replace, delete, or content mutation was performed.

Scope cutoff: v17 started at 2026-09-11T23:03:28.353235+00:00; object timestamp cutoff is 20260911T230328352100Z. All object directories at or after that boundary and all active timestamp prefixes are excluded.

## Exact totals

- Ended object links: 23,386; identity groups: 4,525.
- Logical bytes in scope: 7,479,512,320; current unique physical bytes: 1,537,189,808.
- Content duplicate groups: 100; candidate paths: 7,298.
- Potential physical saving after replacing noncanonical identical files with same-volume hardlinks: 156,808,352 bytes.

Every group in the plan carries each path, current SHA-256, file identity, size, success-evidence references, and the selected canonical target in duplicate-hardlink-plan.json. All paths are below the dedicated run tools root.

## Requested focused prefixes

- I11ThreeTwo: 0 duplicate groups, 0 paths, 0 potential bytes.
- CofactorCriterion: 1 duplicate groups, 282 paths, 7,366,632 potential bytes.
- I11SmallPrimes: 2 duplicate groups, 128 paths, 278,816 potential bytes.
- CrtStage0Pair23: 2 duplicate groups, 10 paths, 3,026,424 potential bytes.
- Growth: 3 duplicate groups, 27 paths, 270,056 potential bytes.

No exact-content duplicate group for I11ThreeTwo was found in the ended pre-v17 scope. The verified QLeaf000 object and the v17 ELeaf001/current-chain objects therefore remain separate in this plan; current v17 objects were excluded by the cutoff.

## Largest groups

| bytes per identity | identity groups | paths | potential saving | SHA-256 |
|---:|---:|---:|---:|---|
| 1,483,408 | 9 | 11 | 11,867,264 | df4f893a13237be579194af2038d57ce544d4f155ff5c02979aa52b5ef53a72d |
| 658,448 | 14 | 193 | 8,559,824 | 3c09335314be516bf22f4c6f17bed1d44e5797ba159d64d103909997e41c0ed4 |
| 594,008 | 15 | 256 | 8,316,112 | e000153c88f0f996ce79c4ed2a13b9d662c753d65e1ad4545de5002b2a62dcf4 |
| 636,400 | 14 | 193 | 8,273,200 | 00a7b1bd99f07f4fc7f6fa4f19b9a3feb099a82f01a909db7b59aed84b30e7d7 |
| 873,144 | 10 | 11 | 7,858,296 | 827fd965c7ef8f4bf8ef43076104d4a22498da98fdf1792c0f42983160f6f9c8 |
| 566,664 | 14 | 282 | 7,366,632 | fabd97ac3a10c3da4b22c5279e6368e1489e22850e046a9d5626d5b35887125d |
| 530,248 | 14 | 253 | 6,893,224 | aa70e7edfa72cdf13e4e600ce23fedaef0be8c52e1f8b54d03e081f0956a4175 |
| 520,624 | 14 | 282 | 6,768,112 | b577c6c4bb96627e654decd78e138334a2b0366f121f0fed6c4e0c3ac66842a0 |
| 735,872 | 10 | 11 | 6,622,848 | ba9be75f7662cb5112816e68013530a77c24840ea1d7c0a7022c473351ccb182 |
| 432,520 | 15 | 236 | 6,055,280 | e813b1440c3c6821c7a030c4f7dcd05a10432827ff37693fe6bb99b2e3868d70 |
| 423,920 | 14 | 216 | 5,510,960 | fcfd4af3ae6dc302ec3b75286773399b0fbe2d752fbccdcbcf80590c67281ca5 |
| 413,744 | 14 | 193 | 5,378,672 | 1b9e45dcde24ecf66f972449e0231fc9cb519e2ccd815de8586d7e4c4bfdfa7e |
| 411,880 | 14 | 193 | 5,354,440 | 5ec288cbf80db9d5a9d1819cae8671cf161e01966dab8d00f3d222d3aff49ef0 |
| 368,920 | 15 | 256 | 5,164,880 | e06ac7377b66e06936845202422a9dab1384fd307b072e6e10de964d83a7a9bb |
| 359,712 | 15 | 236 | 5,035,968 | c0f95334b064d0dbc044c7c3c2e1505f96dd11657cd0412ac8ce2e59ca5560be |
| 4,206,552 | 2 | 9 | 4,206,552 | 1308507c22311663f9fadd47af6692d63d8e7701a77851a3e1420c6c5ab8bdb0 |
| 3,520,968 | 2 | 53 | 3,520,968 | f08209399acb14a94cfc82051734621e018c6c1e516d1ef9dbb29ef8d3cec455 |
| 241,600 | 15 | 212 | 3,382,400 | 730718ddbd51c422eb346e17b6b8669ff0ad2047375dfb4830b9b898130dc050 |
| 228,104 | 15 | 236 | 3,193,456 | 304419a052b3874278c128a9d2b948af0e9144a84d055511f4324c90f2c13211 |
| 244,520 | 14 | 193 | 3,178,760 | f723f2aeb8e37b2959144f7c76aa987b66323fe2add447d2971cac2d21546921 |

## Execution guard

Before any future authorized cleanup, rerun duplicate_hardlink_plan.py and require duplicate-hardlink-recheck.json to report RECHECK_PASS_NO_MUTATION. Recheck the v17 state and cutoff, active states, every path SHA/size/file ID, canonical target location, and source references. A success-referenced path may serve as the canonical hardlink target and is never removed. For each noncanonical path, an implementation may create a same-directory temporary hardlink and atomically replace the original only after all checks; this report does not execute that step.

The prior failed-object 95,023,000-byte recovery plan remains separate and was not used or changed.
