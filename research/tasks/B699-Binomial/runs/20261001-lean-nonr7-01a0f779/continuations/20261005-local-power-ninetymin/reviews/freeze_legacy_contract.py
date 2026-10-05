"""Register inspected optional raw consumers as held, not compiled or accepted."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())
NEW = HERE.parent.relative_to(ROOT).as_posix() + '/'

if __name__ == '__main__':
    c = json.loads((HERE / 'REVIEW-CONTRACT-v8.json').read_bytes())
    for stem, scope in {
        'LocalPowerFiniteBridge': 'Conditional true tail Gap from actual psi budget; middle Nat Gap plus budget plus I0 yields full Gap. No finite real psi assumption in this route.',
        'LocalPowerOriginalLegacy': 'Conditional full original legal i>=4883 statement with same actual Prime p>=i dividing both complete choose values; LP and I0 discharged by accepted dependencies; budget plus finite real psi or finite Nat middle Gap remain.',
    }.items():
        producer = NEW + 'supply/' + stem + '.lean'
        for path in [producer, NEW + 'reviews/' + stem + 'Literal.lean']:
            raw = (ROOT / path).read_bytes()
            roots = re.findall(r'^#print axioms (\S+)\s*$', raw.decode('utf-8-sig'), re.M)
            if not roots or len(roots) != len(set(roots)):
                raise ValueError('Missing or duplicate held AX targets')
            row = {'path': path, 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest(),
                   'roots': roots, 'scope': scope, 'executionStatus': 'held-not-dispatched-not-compiled'}
            if '/reviews/' in path:
                row['literalFor'] = producer
            c['sources'].append(row)
    c.update(reviewedUtc=datetime.now(timezone.utc).isoformat(), priorContract='REVIEW-CONTRACT-v8.json',
             sourceRevisionReason='Register independently inspected optional raw consumers. Execution stays held under Root timing gate; no new proof acceptance.',
             changedSourceBindings=[])
    out = HERE / 'REVIEW-CONTRACT-v9.json'
    if out.exists():
        raise ValueError('Refuse replacing fixed independent contract')
    out.write_text(json.dumps(c, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print('v9: four optional held source/literal files registered; no compilation or acceptance')
