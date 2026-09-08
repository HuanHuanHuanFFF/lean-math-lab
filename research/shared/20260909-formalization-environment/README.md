# Fresh formalization environment

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

The lower-level command for one source, when a wrapper is unnecessary, is:

```bash
export ELAN_HOME="$PWD/.tools/elan"
export PATH="$PWD/.tools/elan/bin:$PATH"
export MATHLIB_CACHE_DIR="$PWD/.lake/mathlib-cache"
stamp="$(date -u +%Y%m%dT%H%M%SZ)"
source="path/to/Foo.lean"
out=".lake/formalization-environment/$stamp/olean/${source%.lean}.olean"
mkdir -p "$(dirname "$out")"
bash scripts/lean-work.sh lake env lean \
  -o "$out" "$source"
```

For imports between research files, mirror the source path below the fresh
object root and set `LEAN_PATH` to that root, as `fresh-root.py` does.
