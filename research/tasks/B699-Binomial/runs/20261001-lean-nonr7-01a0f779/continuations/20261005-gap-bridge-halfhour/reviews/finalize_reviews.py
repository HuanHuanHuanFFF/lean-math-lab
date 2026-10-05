"""Freeze exact current scoped acceptance, pending source candidates and S inventory."""
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())
STOP = datetime.fromisoformat('2026-10-05T10:14:48+00:00')

if __name__ == '__main__':
    now = datetime.now(timezone.utc)
    if now >= STOP:
        raise ValueError('Original hard reached; no late acceptance metadata')
    path = HERE / 'THIN-INDEPENDENT-ACCEPTED.json'
    sig = json.loads(path.read_bytes())
    binding = HERE / sig['binding']
    if hashlib.sha256(binding.read_bytes()).hexdigest() != sig['bindingSha256']:
        raise ValueError('Signed Thin source/object binding changed')
    summary = {'verifier': '/root/local_power_verification', 'utc': now.isoformat(),
               'roundStartUtc': '2026-10-05T09:44:48Z', 'hardDeadlineUtc': STOP.isoformat(),
               'acceptedSignatures': [path.name], 'fixedSourceCommit': sig['fixedSourceCommit'],
               'actualRunId': sig['actualRunId'], 'artifactId': sig['artifactId'],
               'newAcceptedSourceCount': 2, 'newAcceptedProducerRootCount': 2, 'newAcceptedLiteralRootCount': 2,
               'newActualTransitiveAXRootCount': 4, 'newUniqueNormalReplayTargetCount': 2,
               'newNormalExits': sig['normalCheckerExits'], 'acceptedSources': sig['acceptedSources'],
               'acceptedScope': sig['acceptedStageScopes'], 'DirectFiniteMiddleBridgeSupplied': True,
               'FinitePsiOrCrossWindowInputRequiredByThinBridge': False,
               'RemainingInputs': sig['remainingInputsForGapAtTenMillion'],
               'OriginalLegacyDispatchCount': 0, 'OriginalLegacyLeanCount': 0,
               'PsiSmoothingDispatchCount': 0, 'PsiSmoothingLeanCount': 0,
               'LegacyAndPsiStatus': 'source-ready-independent-literal-prepared-not-compiled-not-accepted',
               'priorLPSourceCountReusedNotRecompiled': 16, 'priorLPAxiomRootCountReusedNotReaudited': 60,
               'PsiDifferenceBudgetSupplied': False, 'genuineInfiniteGapSupplied': False,
               'unconditionalCompleteOriginalIndexIncrement': 0,
               'preservedCompleteOriginalScope': '{1,2,11,29} union [35,30000]', 'R7Changed': False,
               'kernelRerunByVerifier': False, 'checkerMeaning': sig['checkerMeaning'],
               'executionFailureClass': 'unexecuted engineering admission/timing plan, no mathematical failure'}
    (HERE / 'FINAL-SUMMARY.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    members = []
    for p in sorted(HERE.rglob('*')):
        if not p.is_file() or '__pycache__' in p.parts or p.name == 'REVIEWS-INVENTORY.json':
            continue
        raw = p.read_bytes()
        members.append({'path': p.relative_to(ROOT).as_posix(), 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest()})
    out = HERE / 'REVIEWS-INVENTORY.json'
    out.write_text(json.dumps({'utc': now.isoformat(), 'members': members,
                              'excludedExactPath': 'REVIEWS-INVENTORY.json', 'scope': 'S ordinary files, no derived caches'},
                             ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    for row in members:
        raw = (ROOT / row['path']).read_bytes()
        if len(raw) != row['bytes'] or hashlib.sha256(raw).hexdigest() != row['sha256']:
            raise ValueError('Final S inventory drift')
    print(json.dumps({'source': sig['fixedSourceCommit'], 'signatures': 1, 'sources': 2, 'AXRoots': 4, 'normal': 2,
                      'inventoryMembers': len(members), 'inventorySha256': hashlib.sha256(out.read_bytes()).hexdigest()}))
