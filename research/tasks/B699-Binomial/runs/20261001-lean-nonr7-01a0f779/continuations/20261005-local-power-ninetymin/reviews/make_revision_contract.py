"""Freeze a separately inspected source revision without replacing prior contracts.

Usage: python make_revision_contract.py PREVIOUS OUTPUT RUNTIME_SPEC REASON [SIGNATURE ...]
Roots and target paths stay fixed; a changed statement needs fresh independent review.
"""
import hashlib
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())

if __name__ == '__main__':
    previous, output, runtime_spec, reason, *signatures = sys.argv[1:]
    out = HERE / output
    if out.exists():
        raise ValueError('Refuse overwriting independent fixed-source contract')
    c = json.loads((HERE / previous).read_bytes())
    revisions = []
    for row in c['sources']:
        raw = (ROOT / row['path']).read_bytes()
        roots = re.findall(r'^#print axioms (\S+)\s*$', raw.decode('utf-8-sig'), re.M)
        if roots != row['roots']:
            raise ValueError('AX target change requires a separately reviewed contract')
        digest = hashlib.sha256(raw).hexdigest()
        if digest != row['sha256']:
            revisions.append({'path': row['path'], 'priorSha256': row['sha256'], 'newSha256': digest})
        row.update(bytes=len(raw), sha256=digest)
    for name in signatures:
        path = HERE / name
        s = json.loads(path.read_bytes())
        if not s['status'].startswith('accepted-'):
            raise ValueError('Missing named independent origin acceptance')
        c['acceptedOrigins'][s['archiveSha256']] = {'signaturePath': path.relative_to(ROOT).as_posix()}
    legacy = HERE / 'OLD-THETA-DEFS-REUSE-BINDING.json'
    if legacy.exists():
        raw = legacy.read_bytes()
        b = json.loads(raw)
        c['acceptedOrigins'][b['archiveSha256']] = {'reuseBindingPath': legacy.relative_to(ROOT).as_posix(),
                                                   'reuseBindingSha256': hashlib.sha256(raw).hexdigest()}
    c.update(reviewedUtc=datetime.now(timezone.utc).isoformat(), runtimeSpecPath=runtime_spec,
             priorContract=previous, sourceRevisionReason=reason, changedSourceBindings=revisions)
    out.write_text(json.dumps(c, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'contract': str(out), 'reviewedRevisions': len(revisions), 'namedOrigins': len(c['acceptedOrigins'])}))
