"""Freeze independent old original literal and new actual-psi smoothing literal."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())
OLD = HERE.parent.parent / '20261005-local-power-ninetymin'

if __name__ == '__main__':
    c = json.loads((HERE / 'THIN-REVIEW-CONTRACT.json').read_bytes())
    c['sources'] = []
    for producer, literal, scope in [
        (OLD / 'supply/LocalPowerOriginalLegacy.lean', OLD / 'reviews/LocalPowerOriginalLegacyLiteral.lean',
         'True F0 and complete original-tail consumer discharge I0. All legal Nat n,i,j with i>=4883; same actual Prime p>=i divides both full choose values. Remaining inputs: actual psi budget plus finite real psi, or actual psi budget plus Nat finiteMiddleGap.'),
        (HERE.parent / 'supply/PsiSmoothing.lean', HERE / 'PsiSmoothingLiteral.lean',
         'Actual psi finite vonMangoldt sum and real Lebesgue weighted smoothing. Weighted actual psi integrability; normalized nonnegative integrable weights give inward smoothing difference <= actual psi increment. No mock psi or budget hypothesis; no specific kernel/mass/analytic lower-bound supply.')]:
        p = producer.relative_to(ROOT).as_posix()
        for path in [producer, literal]:
            raw = path.read_bytes()
            roots = re.findall(r'^#print axioms (\S+)\s*$', raw.decode('utf-8-sig'), re.M)
            if len(roots) != 4 or len(set(roots)) != 4:
                raise ValueError('Independent four-root source targets changed')
            row = {'path': path.relative_to(ROOT).as_posix(), 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest(),
                   'roots': roots, 'scope': scope}
            if path == literal:
                row['literalFor'] = p
            c['sources'].append(row)
    sig_path = HERE / 'THIN-INDEPENDENT-ACCEPTED.json'
    sig = json.loads(sig_path.read_bytes())
    c['acceptedOrigins'][sig['archiveSha256']] = {'signaturePath': sig_path.relative_to(ROOT).as_posix()}
    c.update(reviewedUtc=datetime.now(timezone.utc).isoformat(),
             runtimeSpecPath=HERE.parent.relative_to(ROOT).as_posix() + '/runtime/legacy-stage-spec.json',
             priorContract='THIN-REVIEW-CONTRACT.json',
             kernelConditions='IntegrableOn w Icc[-eps,eps], nonnegative there, integral=1. Concrete weight and mass proof still missing.')
    out = HERE / 'SECOND-REVIEW-CONTRACT.json'
    if out.exists():
        raise ValueError('Refuse replacing fixed independent contract')
    out.write_text(json.dumps(c, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'contract': str(out), 'freshSources': len(c['sources']), 'AXCounts': [len(r['roots']) for r in c['sources']],
                      'runtimeSpec': c['runtimeSpecPath']}))
