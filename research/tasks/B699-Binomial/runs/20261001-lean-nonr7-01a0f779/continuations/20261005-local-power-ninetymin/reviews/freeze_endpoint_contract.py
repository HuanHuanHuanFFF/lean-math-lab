"""Freeze S-reviewed revised width/master and endpoint/R2 literal statements."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())
NEW = HERE.parent.relative_to(ROOT).as_posix() + '/'
OLD = NEW.replace('20261005-local-power-ninetymin/', '20261005-lean-halfhour/')

if __name__ == '__main__':
    previous = json.loads((HERE / 'REVIEW-CONTRACT-v1.json').read_bytes())
    scopes = {Path(r['path']).stem: r['scope'] for r in previous['sources'] if '/supply/' in r['path']}
    scopes.update({
        'LocalPowerMonotonic': 'All real 16<=A<=x: log(rx)/sqrt(x) and log(rx)^2/x bounded by values at A',
        'LocalPowerEndpoint': 'Actual prime-power error: x>=1e8 gives increment<=x/300000; x>=14.4e9 gives increment<=x/1e7; no suppliers in these final roots',
        'LocalPowerRound2': 'Conditional true-theta/actual-prime/uniform Gap consumers: SmallLP/TailLP discharged; actual psi DifferenceBudget, real finite psi [T0,C], I0 remain explicit',
    })
    rows = []
    for stem, scope in scopes.items():
        producer = (OLD if stem in {'LocalPowerDecomposition', 'LocalPowerThetaInterval'} else NEW) + 'supply/' + stem + '.lean'
        for path in [producer, NEW + 'reviews/' + stem + 'Literal.lean']:
            raw = (ROOT / path).read_bytes()
            roots = re.findall(r'^#print axioms (\S+)\s*$', raw.decode('utf-8-sig'), re.M)
            if not roots or len(roots) != len(set(roots)):
                raise ValueError('Missing or duplicate complete AX roots')
            row = {'path': path, 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest(), 'roots': roots, 'scope': scope}
            if '/reviews/' in path:
                row['literalFor'] = producer
            rows.append(row)
    origins = {}
    for name in ['DECOMPOSITION', 'THETA-FINITE-SUMS']:
        sig_path = HERE / (name + '-INDEPENDENT-ACCEPTED.json')
        sig = json.loads(sig_path.read_bytes())
        origins[sig['archiveSha256']] = {'signaturePath': sig_path.relative_to(ROOT).as_posix()}
    contract = {'verifier': '/root/local_power_verification', 'reviewedUtc': datetime.now(timezone.utc).isoformat(),
                'runtimeSpecPath': NEW + 'runtime/endpoint-stage-spec.json', 'sources': rows, 'acceptedOrigins': origins}
    dest = HERE / 'REVIEW-CONTRACT-v3.json'
    if dest.exists():
        raise ValueError('Refuse replacing frozen contract')
    dest.write_text(json.dumps(contract, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'contract': str(dest), 'sources': len(rows), 'AXRoots': sum(len(r['roots']) for r in rows)}))
