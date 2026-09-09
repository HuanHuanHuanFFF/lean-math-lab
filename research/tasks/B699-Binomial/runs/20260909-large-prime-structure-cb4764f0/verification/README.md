# Fresh focused verifier

`verify.py` performs a direct, repeatable Lean check for selected project roots. It accepts an existing Lean 4.33.1 executable and an existing fixed package checkout; it never invokes Lake, installs packages, rebuilds package dependencies, or uses an earlier project object directory.

## Usage

From any working directory, run one command like:

```text
python verification/verify.py --lean <LEAN_EXE> --package-root .lake/packages --root research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean --memory-mb 1536 --timeout 120
```

`--root` is required and repeatable. Each root is a path relative to the repository and must be below `Math/` or `research/`. The repository is found from this script's location; pass `--project-root <REPOSITORY>` when that is not possible. The defaults are 1536 MB per Lean process and 120 seconds per command. The 1536 MB default is intentional for the current `Math/B699` resource envelope and can be overridden explicitly.

## Scope and outputs

The script reads the root `lean-toolchain` and `lake-manifest.json`, requires the pinned v4.33.1 toolchain and nine manifest packages, and checks each package's manifest revision against its Git `HEAD`. Both `HEAD` and clean-status checks pass `safe.directory` with `git -c` on that process only; no Git configuration is written. The public pin report records manifest revisions, input revisions, observed heads, clean status, and cache existence.

It discovers the exact project import closure recursively. Imports rooted in `Math/` or `research/` are source files; built-in and manifest package imports are fixed dependencies. Quoted Lean module components such as `«B699-Binomial»` are normalized for source lookup. The closure is compiled in dependency order into a fresh directory for the invocation:

```text
verification/<UTCstamp>/                 public evidence and sanitized logs
.tools/verification/<UTCstamp>/          ignored diagnostics, temporary files, and fresh olean files
```

The fixed package caches are read from `PACKAGE_ROOT/*/.lake/build/lib/lean`. `LEAN_PATH` contains only the fresh project olean directory followed by those fixed cache roots. `TEMP`, `TMP`, `TMPDIR`, and `MATHLIB_CACHE_DIR` all point below the new D-drive `.tools` directory. Lean is called directly with `-j1 -M1536`; no old project `.lake/build` output is added. Existing caches and prior verification directories are never removed.

`evidence.json` records the portable command forms (`LEAN`, `PACKAGE_ROOT`, `PROJECT_ROOT`), UTC timestamps, exit codes, timeouts, source hashes before and after each compile, output hashes, public log hashes, closure imports, package pins, cache checks, and the exact environment/safe-directory scope. Raw commands and local paths are retained only in ignored `.tools/verification/<UTCstamp>/diagnostic.json` and its logs.

## Policy and axiom audit

Before compiling, the exact project closure is scanned after masking nested block comments, line comments, and double-quoted strings. The scan rejects `sorry`, `sorryAx`, `admit`, `native_decide`, `new_axiom`, `newaxiom`, and explicit `axiom`/`constant` declarations. This is a lexical guard; Lean compilation remains the source of kernel evidence.

For every unguarded `#print axioms` command found in a compiled source, the checker parses the actual Lean output. Bracket lists may span lines; every observed list is retained with the declared name and is accepted only when all names are `propext`, `Classical.choice`, or `Quot.sound`. Missing output, extra output, count mismatches, `sorryAx`, and other axioms fail the run. `#guard_msgs` is counted as source metadata only: its output is never inferred or treated as printed evidence. The report records `declared_names`, `actual_printed`, the observed axiom lists, and `guarded_output_inferred: false`.

A final successful report sets `fixed_dependency_cache_reused: true`, `all_new_project_closure_compiled: true`, and `independent_checker_used: false`. Any compile failure, timeout, source mutation, output omission, policy violation, toolchain mismatch, missing fixed cache for an imported module, package pin mismatch, or dirty package checkout returns exit code 1. This implementation has not run Lean/Lake itself; the parent task should perform Python syntax checking and the real validation run with the pinned executable and package root.