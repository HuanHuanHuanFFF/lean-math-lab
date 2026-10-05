"""Freeze three actual integral/moment probes without untested mass/Logan identities."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())

if __name__ == '__main__':
    c = json.loads((HERE / 'WEIGHT-REVIEW-CONTRACT.json').read_bytes())
    c['sources'] = []
    for stem, scope in {
        'EtaBetaMoments': 'All Nat m,n: actual interval integral0..1 t^m(1-t)^n = m!n!/(m+n+1)!; no moment assumption',
        'EtaMomentReduction': 'All Nat n: actual interval integral-1..1 (1-u^2)^n =2*4^n*n!^2/(2n+1)!; exact original R2 (2.3) m0',
        'EtaIntegralSeries': 'Actual Lebesgue Icc[-eps,eps] positive full series HasSum of integrals to integral of full kernelSeries, using summable81^n/n! dominated convergence; no swap hypothesis',
    }.items():
        producer = HERE.parent / ('supply/' + stem + '.lean')
        for file in [producer, HERE / (stem + 'Literal.lean')]:
            raw = file.read_bytes()
            roots = re.findall(r'^#print axioms (\S+)\s*$', raw.decode('utf-8-sig'), re.M)
            if len(roots) != 1:
                raise ValueError('Precise single-root probe changed')
            row = {'path': file.relative_to(ROOT).as_posix(), 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest(),
                   'roots': roots, 'scope': scope}
            if file.parent == HERE:
                row['literalFor'] = producer.relative_to(ROOT).as_posix()
            c['sources'].append(row)
    for name in ['ETA-KERNEL', 'ETA-WEIGHT']:
        p = HERE / (name + '-INDEPENDENT-ACCEPTED.json')
        s = json.loads(p.read_bytes())
        c['acceptedOrigins'][s['archiveSha256']] = {'signaturePath': p.relative_to(ROOT).as_posix()}
    c.update(reviewedUtc=datetime.now(timezone.utc).isoformat(),
             runtimeSpecPath=HERE.parent.relative_to(ROOT).as_posix() + '/runtime/moments-stage-spec.json',
             runtimeDriverPath=HERE.parent.relative_to(ROOT).as_posix() + '/runtime/moments-stage.py',
             priorContract='WEIGHT-REVIEW-CONTRACT.json', untestedMassAndFourierIdentityNotSupplied=True)
    out = HERE / 'MOMENTS-REVIEW-CONTRACT.json'
    if out.exists():
        raise ValueError('Refuse replacing frozen probe contract')
    out.write_text(json.dumps(c, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'contract': str(out), 'freshSourceCount': len(c['sources']), 'expectedAXRootCount': 6}))
