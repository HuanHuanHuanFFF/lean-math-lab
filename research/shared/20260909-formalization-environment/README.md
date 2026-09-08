# Fresh formalization environment

The directory name `20260909-formalization-environment` is a setup-date label
that was created one day late. The recorded runs are UTC `20260908` runs; keep
this directory identity when reproducing or extending the evidence.

Before compiling, use this worktree's fixed toolchain and package checkouts.
Do not rely on `.tools/elan`, package objects, or a project build from another
worktree:

```bash
export ELAN_HOME="$PWD/.tools/elan"
export PATH="$PWD/.tools/elan/bin:$PATH"
test "$(cat lean-toolchain)" = "leanprover/lean4:v4.33.1"
bash scripts/lean-work.sh lean --version
bash scripts/lean-work.sh lake --version
```

The first `lean-work.sh lean --version` call also checks the procfs-compatible
wrapper. On hosts with the known procfs mismatch it creates the process-local
`.tools/lean-work/proc-self.so` shim on demand; this is expected, and does not
change the Lean kernel. If the fixed toolchain is absent, restore
`leanprover/lean4:v4.33.1` inside this worktree's `ELAN_HOME` before running a
verifier. If a package checkout is absent or dirty, restore a clean detached
checkout at the exact revision in `lake-manifest.json`; do not run `lake
update`, edit the manifest, or silently use a checkout from another worktree.

The nine package pins are:

| package | manifest revision |
| --- | --- |
| `mathlib` | `0df444a360eaa60ab8c11dca51a86af692955474` |
| `plausible` | `b7eb3304aeae834b12dda98993a37f6a41f6f0bb` |
| `LeanSearchClient` | `5f4d51b81cbd3f6b32b156bfad9056621a040404` |
| `importGraph` | `16f02aa7642864af59f1ff0e384a015994db9118` |
| `proofwidgets` | `4be2e3d5087eeb272cf5a8853b8f9dd025ef5957` |
| `aesop` | `3448c0bcc5ce01b2d1546e483ec3620e32df3d0e` |
| `Qq` | `92c15be17b7caf78c2ad767ec40f89052d908d81` |
| `batteries` | `4488d40d070b9700d4d5a6aa342f0d40c31b2a2d` |
| `Cli` | `6130a47896ce867c6a4a55373441e59e565bad0f` |

Every checkout under `.lake/packages/` must have the corresponding manifest
HEAD and a clean status. The fresh verifier records these HEAD and cleanliness
checks before accepting a result.

For a read-only pin preflight, run:

```bash
python3 - <<'PY'
import json
import subprocess
from pathlib import Path

manifest = json.loads(Path("lake-manifest.json").read_text())
for package in manifest["packages"]:
    path = Path(manifest["packagesDir"]) / package["name"]
    head = subprocess.check_output(
        ["git", "-C", str(path), "rev-parse", "HEAD"], text=True
    ).strip()
    dirty = subprocess.check_output(
        ["git", "-C", str(path), "status", "--porcelain=v1"], text=True
    ).strip()
    if head != package["rev"] or dirty:
        raise SystemExit(f"pin or cleanliness failure: {package['name']}")
    print(package["name"], head)
PY
```

If the Lean toolchain is missing, restore only the declared toolchain in this
worktree with `elan toolchain install leanprover/lean4:v4.33.1` under the
`ELAN_HOME`/`PATH` exports above, then repeat the version check. Package
restoration likewise means a clean checkout at each manifest revision; it does
not mean regenerating pins with `lake update`.

`fresh-root.py` is the reusable focused compiler entry point for new research
runs. It loads the repository's existing `scripts/verify-research-runs.py`
module without changing that historical verifier. The adapter accepts arbitrary
Lean roots with `--root`, computes their transitive project source closure,
runs the repository source policy, checks every `lake-manifest.json` checkout
against its pinned HEAD and clean status, verifies Lean 4.33.1 through
`scripts/lean-work.sh`, overlays only pinned package objects, and recompiles the
project closure into fresh objects.

From the repository root:

```bash
python3 research/shared/20260909-formalization-environment/fresh-root.py \
  --root research/tasks/B677-Lcm/runs/20260908-formalization-92c221/lean/Foo.lean
```

Repeat `--root` for roots in the same run. For guarded accepted roots, repeat
`--guards N` in the same order. Each invocation writes evidence to a new
`verification/<UTC>/` directory for a single run; roots from multiple runs
write to a new `research/shared/20260909-formalization-environment/runs/<UTC>/`
directory. An explicit `--output` is accepted only below one of those
locations; the new batch runs also permit their owned
`verification/sampling/<UTC>/` and `verification/baseline/<UTC>/` subtrees for
topic-owned audits. Lean objects always go to the matching fresh
`.lake/formalization-environment/<UTC>/olean/` directory. `LEAN_PATH` contains
only that fresh object root; package cache objects are symlinked below it and
are accepted only after manifest HEAD checks. No project object from an older
`.lake/build` is used as validation.

The closure guard has an explicit allowlist for the three
`20260908-formalization-92c221` runs (B677, B686, B699) and the two adopted
B686 runs (`20260908-lcm-distance-7cab35e` and
`20260908-reflected-sum-9bad0b9`). This permits the authorized cross-run
imports while rejecting unrelated or historical runs.

Do not treat a standalone `lake env lean -o ...` command as a full
verification. Without an explicitly isolated `LEAN_PATH`, Lake/Lean can find
an older project object and produce a result that is not a fresh closure
build. For a one-file diagnostic only, set `LEAN_PATH` to a newly allocated
object root and use the pinned wrapper; the diagnostic remains non-acceptance
evidence:

```bash
stamp="$(date -u +%Y%m%dT%H%M%SZ)"
objects=".lake/formalization-environment/diagnostic-$stamp/olean"
source="path/to/Foo.lean"
output="$objects/${source%.lean}.olean"
mkdir -p "$(dirname "$output")"
export LEAN_PATH="$PWD/$objects"
bash scripts/lean-work.sh lean -DautoImplicit=false \
  -o "$PWD/$output" "$source"
```

Formal acceptance always uses `fresh-root.py` or a dedicated fresh runner
such as `verify_finite.py`/`extend_fresh_finite.py`. Those runners allocate a
new object root, overlay only pinned package artifacts, compile the exact
source closure, and record the policy, pins, source hashes, object hashes, and
guard results.
