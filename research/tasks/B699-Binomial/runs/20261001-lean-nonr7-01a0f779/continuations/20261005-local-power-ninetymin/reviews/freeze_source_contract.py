"""Freeze independently reviewed source bytes and exact complete AX inventories."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())
NEW = HERE.parent.relative_to(ROOT).as_posix() + '/'
OLD = NEW.replace('20261005-local-power-ninetymin/', '20261005-lean-halfhour/')
SCOPES = {
    'LocalPowerDecomposition': 'Actual finite prime-power error decomposition over complete Icc2N; x>=2, local x>=1e8; interval count',
    'LocalPowerRootWidth': 'Real x>=0 and Nat k>=2; actual r=4096/4095 root width',
    'LocalPowerThetaInterval': 'Actual theta finite-prime interval mass upper bound, 1<=a<=b',
    'LocalPowerFiniteSums': 'Complete Icc2K reciprocal-square and reciprocal bounds; x>=1,k>=2 root<=sqrt',
    'LocalPowerMaster': 'Actual psi-theta local error <= sqrt(x)*log(rx)/4095 + log(rx)^2/(2log2), x>=2 and x>=1e8; no supplier',
}

if __name__ == '__main__':
    rows = []
    for stem, scope in SCOPES.items():
        producer = (OLD if stem in {'LocalPowerDecomposition', 'LocalPowerRootWidth', 'LocalPowerThetaInterval'} else NEW) + 'supply/' + stem + '.lean'
        for path in [producer, NEW + 'reviews/' + stem + 'Literal.lean']:
            raw = (ROOT / path).read_bytes()
            roots = re.findall(r'^#print axioms (\S+)\s*$', raw.decode('utf-8-sig'), re.M)
            if not roots or len(roots) != len(set(roots)):
                raise ValueError('Missing or duplicate AX roots: ' + path)
            row = {'path': path, 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest(), 'roots': roots, 'scope': scope}
            if '/reviews/' in path:
                row['literalFor'] = producer
            rows.append(row)
    contract = {'verifier': '/root/local_power_verification', 'reviewedUtc': datetime.now(timezone.utc).isoformat(),
                'runtimeSpecPath': NEW + 'runtime/stage-spec.json', 'sources': rows}
    dest = HERE / 'REVIEW-CONTRACT-v1.json'
    dest.write_text(json.dumps(contract, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'path': str(dest), 'sources': len(rows), 'AXRootCounts': [len(r['roots']) for r in rows]}))
