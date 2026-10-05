"""Emit separately named scopes from one already accepted tiny combined binding."""
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path
HERE=Path(__file__).resolve().parent
DEADLINE=datetime.fromisoformat('2026-10-04T15:31:38+00:00')
if datetime.now(timezone.utc)>=DEADLINE:
    raise RuntimeError('Recorded review deadline expired')
path=HERE/'TINY-ALL-INDEPENDENT-ACCEPTED.json'
sig=json.loads(path.read_text(encoding='utf-8-sig'))
bound=HERE/sig['binding']
if hashlib.sha256(bound.read_bytes()).hexdigest()!=sig['bindingSha256']:
    raise RuntimeError('Coupled actual binding bytes differ')
if sig['freshAXRootCount']!=7 or sig['normalCheckerExits']!=[0]*4 or sig['acceptedOriginalUpper']!=30000:
    raise RuntimeError('Actual4-source7AX complete combined acceptance missing')
if 'B699TailFinishVerify20261004.theta_initial_exact' not in sig['actualFiniteGapLiteralTypes']:
    raise RuntimeError('Actual exact whole theta finite initial missing')
if set(sig['actualOriginalLiteralTypes'])!={'B699TailFinishVerify20261004.complete_30000_exact','B699TailFinishVerify20261004.all_upto_30000_exact'}:
    raise RuntimeError('Actual exact30000 original declarations missing')
for label in ('THETA-INITIAL','TAIL30000'):
    target=HERE/(label+'-INDEPENDENT-ACCEPTED.json')
    if target.exists():
        raise RuntimeError('Refuse overwriting prior scope signature')
    scoped={**sig,'coupledAcceptance':path.name,'coupledAcceptanceSha256':hashlib.sha256(path.read_bytes()).hexdigest(),'scopeSignatureMode':'Two scope records for one actual4-source combined verification, no repeated mathematical execution','signedUtc':datetime.now(timezone.utc).isoformat()}
    if label=='THETA-INITIAL':
        scoped.update(status='accepted-entire-theta-finite-initial',completeOriginalScope='This signature covers actual finite Gap10M<=y<122568684 without extra mathematical inputs. Complete original30000 is the separately named coupled TAIL30000 scope.',newCompleteOriginalIndexCountFrom10000=0,originalCoverageIsInherited=True)
    target.write_text(json.dumps(scoped,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Emitted separate theta-finite-initial and original30000 scope records from one actual combined acceptance')
