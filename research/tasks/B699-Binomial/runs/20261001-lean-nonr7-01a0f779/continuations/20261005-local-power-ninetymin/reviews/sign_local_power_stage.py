"""Record S's explicit scoped decision after independent binding and semantic review.

Usage: python sign_local_power_stage.py BINDING PREREQUISITES|LP-MASTER|LP-ENDPOINTS|CONDITIONAL-R2
"""
import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
STOP = datetime.fromisoformat('2026-10-05T09:34:27+00:00')

if __name__ == '__main__':
    path, decision = Path(sys.argv[1]), sys.argv[2]
    raw = path.read_bytes()
    b = json.loads(raw)
    if datetime.now(timezone.utc) >= STOP or b['status'] != 'independent-local-power-source-object-AX-replay-binding-passed':
        raise ValueError('Missing timely complete technical binding')
    stems = {Path(r['sourcePath']).stem for r in b['compilerBindings']}
    modes = {
        'PREREQUISITES': ('accepted-local-prime-power-prerequisites', False, False, False),
        'LP-MASTER': ('accepted-unconditional-actual-local-prime-power-bound', True, False, False),
        'LP-ENDPOINTS': ('accepted-unconditional-actual-local-prime-power-endpoint-bounds', True, True, False),
        'CONDITIONAL-R2': ('accepted-round2-consumers-with-explicit-remaining-suppliers', True, True, True),
    }
    status, master, endpoints, r2 = modes[decision]
    required = 'LocalPowerRound2' if r2 else ('LocalPowerEndpoint' if endpoints else ('LocalPowerMaster' if master else None))
    if required and not {required, required + 'Literal'} <= stems:
        raise ValueError('Decision exceeds compiled source/literal scope')
    ax = {k: v for row in b['compilerBindings'] for k, v in row['axioms']['actualAxioms'].items()}
    sig = {'status': status, 'verifier': '/root/local_power_verification',
           'taskClass': 'complex established semantic/dependency/object verification',
           'model': 'gpt-6.1-sol', 'reasoningEffort': 'xhigh', 'signedUtc': datetime.now(timezone.utc).isoformat(),
           'hardDeadlineUtc': STOP.isoformat(), 'binding': path.name,
           'bindingSha256': hashlib.sha256(raw).hexdigest(), 'fixedSourceCommit': b['fixedSourceCommit'],
           'actualRunId': b['runId'], 'artifactId': b['artifactId'], 'archiveSha256': b['archiveSha256'],
           'nativeMemberCount': b['nativeMemberCount'], 'acceptedStageScopes': b['stageScopes'],
           'acceptedSources': [{'path': r['sourcePath'], 'sha256': r['compiler']['sourceSha256'],
                                'objectSha256': r['compiler']['objectSha256']} for r in b['compilerBindings']],
           'actualCompleteTransitiveAxioms': ax, 'freshAXRootCount': len(ax),
           'normalCheckerExits': [r['receipt']['exitCode'] for r in b['normalReplayBindings']],
           'LPFullBoundSupplied': master, 'SmallLPSupplied': endpoints, 'TailLPSupplied': endpoints,
           'Round2ConditionalConsumersSupplied': r2, 'PsiSupplySupplied': False,
           'genuineInfiniteGapSupplied': False, 'unconditionalCompleteOriginalIndexIncrement': 0,
           'preservedCompleteOriginalScope': '{1,2,11,29} union [35,30000]',
           'kernelRerunByVerifier': False, 'checkerMeaning': b['checkerMeaning'], 'R7Changed': False,
           'mathematicalReview': 'S independently checked the pinned literal/raw-definition source statements and exact scope; C executed compile and normal replay',
           'remainingUnboundedParameters': ['x/y in the missing actual psi supplier', 'i', 'n', 'j'],
           'remainingObligations': ['actual local psi increment supply', 'new finite middle gap or finite psi certification', 'full infinite Gap', 'R7 and low 23']}
    out = path.with_name(path.name.replace('-INDEPENDENT-BINDING.json', '-INDEPENDENT-ACCEPTED.json'))
    out.write_text(json.dumps(sig, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': status, 'signature': str(out), 'AXRoots': len(ax), 'originalIndexIncrement': 0}))
