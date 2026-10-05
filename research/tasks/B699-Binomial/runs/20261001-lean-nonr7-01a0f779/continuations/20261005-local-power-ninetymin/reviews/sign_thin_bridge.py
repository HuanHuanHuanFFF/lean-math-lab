"""Sign only the actual two-source direct-middle Gap bridge after S binding."""
import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
STOP = datetime.fromisoformat('2026-10-05T09:34:27+00:00')

if __name__ == '__main__':
    path = Path(sys.argv[1])
    raw = path.read_bytes()
    b = json.loads(raw)
    now = datetime.now(timezone.utc)
    if now >= STOP or b['status'] != 'independent-local-power-source-object-AX-replay-binding-passed':
        raise ValueError('Missing timely complete S binding')
    if {Path(r['sourcePath']).stem for r in b['compilerBindings']} != {'LocalPowerFiniteBridge', 'LocalPowerFiniteBridgeLiteral'}:
        raise ValueError('Thin decision requires exactly the reviewed producer/literal pair')
    ax = {k: v for row in b['compilerBindings'] for k, v in row['axioms']['actualAxioms'].items()}
    if len(ax) != 4 or len(b['normalReplayBindings']) != 2:
        raise ValueError('Thin complete AX or normal replay inventory differs')
    sig = {'status': 'accepted-direct-middle-gap-conditional-bridge',
           'verifier': '/root/local_power_verification', 'taskClass': 'complex established semantic/dependency/object verification',
           'model': 'gpt-6.1-sol', 'reasoningEffort': 'xhigh', 'signedUtc': now.isoformat(), 'hardDeadlineUtc': STOP.isoformat(),
           'binding': path.name, 'bindingSha256': hashlib.sha256(raw).hexdigest(),
           'fixedSourceCommit': b['fixedSourceCommit'], 'actualRunId': b['runId'], 'artifactId': b['artifactId'],
           'archiveSha256': b['archiveSha256'], 'nativeMemberCount': b['nativeMemberCount'],
           'acceptedStageScopes': b['stageScopes'], 'acceptedSources': [
               {'path': r['sourcePath'], 'sha256': r['compiler']['sourceSha256'], 'objectSha256': r['compiler']['objectSha256']}
               for r in b['compilerBindings']],
           'actualCompleteTransitiveAxioms': ax, 'freshAXRootCount': 4,
           'normalCheckerExits': [r['receipt']['exitCode'] for r in b['normalReplayBindings']],
           'LPFullBoundSupplied': True, 'SmallLPSupplied': True, 'TailLPSupplied': True,
           'Round2ConditionalConsumersSupplied': True, 'DirectFiniteMiddleBridgeSupplied': True,
           'remainingInputsForTailGap': ['actual psi DifferenceBudget for all Real x>=14400000000'],
           'remainingInputsForGapAtTenMillion': ['actual psi DifferenceBudget',
               'actual Nat Prime finiteMiddleGap for 122568684<=y<14400000000',
               'InitialSegment for 10000000<=y<122568684 (previously accepted, still explicit in this thin theorem)'],
           'FinitePsiOrCrossWindowInputRequiredByThinBridge': False,
           'PsiSupplySupplied': False, 'genuineInfiniteGapSupplied': False,
           'unconditionalCompleteOriginalIndexIncrement': 0, 'preservedCompleteOriginalScope': '{1,2,11,29} union [35,30000]',
           'R7Changed': False, 'kernelRerunByVerifier': False, 'checkerMeaning': b['checkerMeaning'],
           'largeOriginalLegacyAccepted': False,
           'mathematicalReview': 'S raw literal retains every remaining supplier, actual Prime, strict lower witness and Nat subtraction; reuse of LP/R2 signed scopes does not prove those suppliers'}
    out = path.with_name(path.name.replace('-INDEPENDENT-BINDING.json', '-INDEPENDENT-ACCEPTED.json'))
    out.write_text(json.dumps(sig, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': sig['status'], 'signature': str(out), 'AXRoots': 4, 'originalIndexIncrement': 0}))
