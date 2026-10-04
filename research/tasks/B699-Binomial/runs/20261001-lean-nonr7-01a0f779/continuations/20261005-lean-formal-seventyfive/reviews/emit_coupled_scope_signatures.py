"""Emit separately named scopes from this round's accepted historical combined binding."""
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
START = datetime.fromisoformat('2026-10-04T16:35:50+00:00')
DEADLINE = datetime.fromisoformat('2026-10-04T17:50:50+00:00')
if not START <= datetime.now(timezone.utc) < DEADLINE:
    raise RuntimeError('Authorized new review window not active')
path = HERE / 'TINY-ALL-INDEPENDENT-ACCEPTED.json'
sig = json.loads(path.read_text(encoding='utf-8-sig'))
bound = HERE / sig['binding']
if hashlib.sha256(bound.read_bytes()).hexdigest() != sig['bindingSha256']:
    raise RuntimeError('Coupled actual binding bytes differ')
if sig['freshAXRootCount'] != 7 or sig['normalCheckerExits'] != [0] * 4 or sig['acceptedOriginalUpper'] != 30000:
    raise RuntimeError('Actual four-source seven-AX complete combined acceptance missing')
if 'B699TailFinishVerify20261004.theta_initial_exact' not in sig['actualFiniteGapLiteralTypes']:
    raise RuntimeError('Actual exact whole theta finite initial missing')
if set(sig['actualOriginalLiteralTypes']) != {'B699TailFinishVerify20261004.complete_30000_exact', 'B699TailFinishVerify20261004.all_upto_30000_exact'}:
    raise RuntimeError('Actual exact original30000 declarations missing')
for label in ('THETA-INITIAL', 'TAIL30000'):
    target = HERE / (label + '-INDEPENDENT-ACCEPTED.json')
    if target.exists():
        raise RuntimeError('Refuse overwriting prior scope signature')
    scoped = {
        **sig,
        'coupledAcceptance': path.name,
        'coupledAcceptanceSha256': hashlib.sha256(path.read_bytes()).hexdigest(),
        'scopeSignatureMode': 'Two scope records for one historical four-source combined verification; no repeated kernel execution',
        'signedUtc': datetime.now(timezone.utc).isoformat(),
        'scopeEmitterSha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }
    if label == 'THETA-INITIAL':
        scoped.update(
            status='accepted-entire-theta-finite-initial',
            completeOriginalScope='This signature covers finite Gap10M<=y<122568684 without extra mathematical inputs. Complete original30000 has a separately named coupled TAIL30000 scope.',
            newCompleteOriginalIndexCountFrom15000=0,
            originalCoverageIsInherited=True,
        )
    else:
        scoped.update(newCompleteOriginalIndexCountFrom15000=15000, originalCoverageIsInherited=False)
    target.write_text(json.dumps(scoped, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print('Emitted finite-initial and original30000 scope records from one historical combined acceptance')
