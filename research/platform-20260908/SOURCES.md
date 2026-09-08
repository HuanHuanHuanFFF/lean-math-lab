# Platform source and dependency manifest

Recorded 2026-09-08 in the independent worktree. This directory contains
source correspondence and small factual bundle records, not a submitted
validator result. Apache-2.0 headers in the local `677-base.lean` and
`699-base.lean` snapshots are retained. No generic `*.log` exclusion is used.

## Pinned remote sources

| Component | Exact remote URL | Pin | Local cache status |
|---|---|---|---|
| Lean toolchain manager | <https://github.com/leanprover/elan.git> | commit `b6cec7e10fe4965a605aaf60d1cb4a5837f0462b`, version 4.2.3 | `.tools/elan` is present; Lean 4.33.1 toolchain is installed |
| Formal Conjectures | <https://github.com/google-deepmind/formal-conjectures.git> | base `7d1a8c9912747679d0093f6d1216420c33ee5ffa`; audited derived commit `8432eac998110a563e03df65a28c117e97c8c142` | `.tools/platform/formal-conjectures` present at the reconstructed pinned commit and clean; the official patch produced the recorded tree |
| Conjectures tasks | <https://github.com/conjectures-io/conjectures-tasks.git> | commit `68bb8ea0968994e0f36a2db015dbdbcc13902416` | `.tools/platform/conjectures-tasks` present at the pinned commit and clean |
| Lean mathlib | <https://github.com/leanprover-community/mathlib4.git> | commit `0df444a360eaa60ab8c11dca51a86af692955474` | project `.lake/packages/mathlib` present at the pinned commit |
| Comparator | <https://github.com/leanprover/comparator.git> | commit `68a064109f01c08f47c8edc9f51d6a2bbffaa188` | `.tools/platform/comparator` not present in this checkout |
| lean4export | <https://github.com/leanprover/lean4export.git> | commit `15f6055e299ad5b89345e533cc2192f4cc00f659` | `.tools/platform/lean4export` not present in this checkout |
| landrun | <https://github.com/Zouuup/landrun.git> | commit `5ed4a3db3a4ad930d577215c6b9abaa19df7f99f` | `.tools/platform/landrun` not present in this checkout |
| nanoda_lib | <https://github.com/ammkrn/nanoda_lib.git> | commit `f58f2f6d535e189a40fcb02ede8eb95f97a92d37`, `enabled=false` | not present; disabled by pins |

The Formal Conjectures patch is local because it is an audited input rather
than a fetched commit. Its SHA256 is
`853372293b16a79ea495a28909e6077d41e2c6402165c3c6233ea0747c919814`; applying
it to the pinned base yields the expected synthetic commit recorded in
`source-reconstruction.json`. The task source references are
<https://www.erdosproblems.com/677> and <https://www.erdosproblems.com/699>.

## Preserved local source facts

| Local file | Bytes | SHA256 | Handling |
|---|---:|---|---|
| `677-base.lean` | 1443 | `3202f95f675dbbf900b08d906f4ed7e5c47bb6d7f9ddab73029f7020506b456b` | keep; Apache-2.0 header |
| `699-base.lean` | 2146 | `8b1a74ad4b3d30c0ec89b35bcb28584ed726c242e957233965b80d7cddab689b` | keep; Apache-2.0 header |
| `reconstruct_sources.py` | 3985 | `b3fb1a4c64f837f53ffdcec2d719b7ecf2a1580815a513c4d38f89d0dcd0f57f` | keep; local hash and bundle verifier |
| `pins.lock.json` | 1936 | `ce67723dcadd1b758be52381486b71acd6bf218019fe0d2a08849d47f0aec394` | keep; exact pins |
| `formal-conjectures-audit-fixes.patch` | 8144 | `853372293b16a79ea495a28909e6077d41e2c6402165c3c6233ea0747c919814` | keep; audited patch input |
| `source-reconstruction.json` | 2787 | `1a99fc1a58f6deefd6b523e1406f182a621a87f193cb0970f86fed0d0c8c9761` | keep; decisive reconstruction facts |

The four bundle directories under `bundles/` contain small source snapshots,
trusted hashes, comparator configuration, and task metadata. Their detailed
file hashes remain in the bundle manifests and trusted-hashes files; these
records are kept. The local `.lean` snapshots and reconstruction script are
not ignored.

## Downloaded validator helper

`pin_dependencies.sh` was fetched in this round from the known upstream URL
<https://raw.githubusercontent.com/conjectures-io/conjectures-validator/main/scripts/pin_dependencies.sh>.
Its SHA256 is `c34a329ad79bdec855dfd6960c8b0263532bb5965d15140aa28d0191d7e28c90`.
The provenance is known; a redistribution license for this snapshot was not verified.
It therefore remains an ignored local reference. Our own `prepare_sources.py`
and `reconstruct_sources.py` implement the specific reproducible source audit
and remain public. This is a licensing-evidence boundary, not a claim that the
upstream helper or source repository does not exist.

At the initial audit, the Formal Conjectures dependency retained its base HEAD
with the official patch staged. After the user's05:12 commit/push authorization,
the preparer recreated the exact official synthetic commit object and checked
it out. Current HEAD is8432eac998110a563e03df65a28c117e97c8c142 and the dependency
is clean. No new mathematical contribution is attributed to that reproduced object.

No credentials or secret markers were found in the platform text/code/JSON
files. README paths, Python/platform version fields, and local cache paths are
machine metadata and should be normalized or omitted from public prose as
appropriate; they are not secrets. No file was deleted or moved while making
this manifest.
