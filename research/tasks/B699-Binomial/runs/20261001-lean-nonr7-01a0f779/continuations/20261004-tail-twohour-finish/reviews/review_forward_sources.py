"""Freeze exact zero-new-prime finite Gap source obligations; no Lean execution."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p/'.git').exists())
BASE = HERE.parent
OLD90 = BASE.parent/'20261004-tail-ninetymin'

def row(path):
    raw = path.read_bytes()
    text = raw.decode('utf-8-sig')
    if re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b', text):
        raise RuntimeError('Forbidden source construct')
    roots = re.findall(r'^#print axioms (\S+)\s*$', text, re.M)
    if not roots or len(roots) != len(set(roots)):
        raise RuntimeError('Missing/duplicate AX inventory')
    return {'path': path.relative_to(REPO).as_posix(), 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest(), 'roots': roots}

sources = [row(OLD90/'supply/RatioForward.lean'), row(OLD90/'supply/Gap10000Legacy.lean')]
sources += [row(BASE/'supply'/name) for name in ('FixedForward.lean','GapLowerLegacy.lean','Gap13000Legacy.lean','Gap15000Legacy.lean')]
scopes = []
for label, intervals in (('Lower', ((19995885,20482069,'gap_fixed_initial_exact'),(19995885,40956329,'gap_10000_extended_initial_exact'))), ('13000', ((20482069,53399837,'gap_13000_initial_exact'),(19995885,53399837,'gap_13000_extended_initial_exact'))), ('15000', ((20482069,61439401,'gap_15000_initial_exact'),(19995885,61439401,'gap_15000_extended_initial_exact')))):
    path = HERE/('Gap'+label+'ExactLegacy.lean')
    text = path.read_text(encoding='utf-8-sig')
    sources.append(row(path))
    for lo, hi, name in intervals:
        expected = r'theorem '+name+r' \(y : Nat\)\s*\(hlo : '+str(lo)+r' ≤ y\) \(hhi : y < '+str(hi)+r'\) :\s*∃ p : Nat, p.Prime ∧ y < p ∧ 4095 \* \(p - y\) ≤ y'
        if re.search(expected, text) is None:
            raise RuntimeError('Exact Gap literal does not match fixed interval')
        scopes.append({'root': 'B699TailFinishVerify20261004.'+name, 'lowerInclusive': lo, 'upperExclusive': hi, 'integerYCount': hi-lo, 'extraMathematicalInputs': []})

result = {'status': 'independent-source-reviewed-not-kernel-accepted', 'verifier': '/root/tail2h_verification', 'utc': datetime.now(timezone.utc).isoformat(), 'sources': sources, 'scopeObligations': scopes, 'newPrimalityObligations': 0, 'expectedNetFiniteGapYCountFromOldMaximum': 61439401-19995885-(40956329-20482069), 'expectedNewLowerYCount': 20482069-19995885, 'acceptedOriginalIndexIncrement': 0, 'proofRationale': 'Finite additive PrimeChain provides strict successor p with p-y<=4883; 4095*4883=19995885<=y. Old relative-chain near_after then concatenates at20482069, with upper endpoint excluded. Conditional chain helper is separate from unconditional concrete interval consumers.', 'mainTailSourcesRemainFrozen': True, 'actualKernelAcceptanceHere': False, 'unboundedGapSupplied': False, 'remainingGaps': ['10M<=y<19995885 apart from separately accepted pilot [10M,10146761)', 'y>=61439401 and actual uniform theta/psi inputs remain unbounded', 'R7/low23/full-unbounded i unchanged'], 'scriptSha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
(HERE/'FORWARD-SOURCE-READY.json').write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
print('9 source obligations / 6 exact finite Gap literals source-ready; no kernel acceptance')
