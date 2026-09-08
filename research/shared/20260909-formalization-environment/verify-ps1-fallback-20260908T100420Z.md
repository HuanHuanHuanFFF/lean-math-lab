# `verify.ps1` gate fallback

`command -v pwsh` and `command -v powershell` returned no executable in this
environment, so `scripts/verify.ps1` could not be invoked. The script itself
was inspected: it runs `check-lean-policy.py --roots Math Tests Examples`, a
project `lake build`, and then `lake env lean` once for every `.lean` file
recursively discovered below those three directories.

The equivalent fresh-object check used the pinned `fresh-root.py` adapter with
all 11 current roots under `Math/`, `Tests/`, and `Examples/`:

```bash
python3 research/shared/20260909-formalization-environment/fresh-root.py \
  --root Examples/CofactorCriterion.lean \
  --root Examples/IntervalLcm.lean \
  --root Examples/ReusingA071999.lean \
  --root Math/A071999.lean \
  --root Math/B677/IntervalLcm.lean \
  --root Math/B699/CofactorCriterion.lean \
  --root Math/Smoke.lean \
  --root Tests/A071999.lean \
  --root Tests/A071999Audit.lean \
  --root Tests/B677IntervalLcm.lean \
  --root Tests/B699CofactorCriterion.lean \
  --output research/shared/20260909-formalization-environment/runs/20260908T100420Z
```

The command returned `fresh-root success: True (exit 0)`. Its policy log
contains an exact closure of all 11 roots; all 11 fresh project objects were
written below `.lake/formalization-environment/20260908T100420Z/olean/`, with
14 pinned package imports linked only after the nine package HEAD/clean checks.
Lean was 4.33.1 and Lake was `5.0.0-src+819816b`.

The existing 15 `#guard_msgs` checks compiled successfully. Their source-level
counts and exact allowed axiom expectations are recorded in
`runs/20260908T100420Z/guard-audit.json`; `Math/A071999.lean` has one existing
unguarded `#print axioms`, which was compiled and recorded separately. No
historical `research/` exploration source was included in this gate.
