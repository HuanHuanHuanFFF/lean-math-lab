"""Static byte/root/edge check only, kept separate from Lean acceptance."""
from datetime import datetime, timezone
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
meta = json.loads((HERE/'full-initial-candidates.json').read_text(encoding='utf-8'))
roots = []
total_bytes = 0
for source in meta['sources']:
    path = HERE/source['file']
    raw = path.read_bytes()
    assert len(raw) == source['bytes'], path
    assert hashlib.sha256(raw).hexdigest() == source['sha256'], path
    text = raw.decode('utf-8')
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b',text), path
    printed = re.findall(r'^#print axioms (\S+)$',text,re.M)
    assert printed == source['roots'], path
    if 'edgeCount' in source:
        values = [source['firstPrime']] + [int(x) for x in re.findall(r'^theorem prime\d+ : Nat\.Prime (\d+) := by norm_num$',text,re.M)]
        qs = [int(x) for x in re.findall(r'refine \.step \(q := (\d+)\)',text)]
        assert qs == values[1:], path
        assert values[-1] == source['lastPrime'] and len(qs) == source['edgeCount'], path
        assert all(p < q and 4095*q <= 4096*p for p,q in zip(values,values[1:])), path
    roots.extend(printed)
    total_bytes += len(raw)
assert len(roots) == len(set(roots))
result = dict(status='static-byte-root-edge-pass-not-kernel-acceptance',
              utc=datetime.now(timezone.utc).isoformat(), checkedLeanSources=len(meta['sources']),
              checkedRoots=len(roots), totalSourceBytes=total_bytes,
              maximumSourceBytes=max(s['bytes'] for s in meta['sources']),
              seed=10000019, lowerEndpoint=19997441, upperEndpoint=122879557,
              newPrimalityObligations=meta['newPrimalityObligations'],
              candidateMetadataSha256=hashlib.sha256((HERE/'full-initial-candidates.json').read_bytes()).hexdigest(),
              extraMathematicalInputs=[], kernelRunHere=False,
              checkerRunHere=False, independentAcceptanceHere=False)
(HERE/'full-initial-static-ready.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result))
