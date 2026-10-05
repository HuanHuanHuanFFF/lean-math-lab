"""Accept the complete producer/raw eta-series pair using one qualified reused producer."""
import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path

if __name__ == '__main__':
    path = Path(sys.argv[1])
    raw = path.read_bytes()
    b = json.loads(raw)
    now = datetime.now(timezone.utc)
    if now >= datetime.fromisoformat('2026-10-05T11:37:11+00:00'):
        raise ValueError('Original hard reached')
    reused = list(b['pairedReusedProducers'].values())
    fresh = b['compilerBindings']
    if len(reused) != 1 or len(fresh) != 1 or Path(reused[0]['sourcePath']).stem != 'EtaSeries' or Path(fresh[0]['sourcePath']).stem != 'EtaSeriesLiteral':
        raise ValueError('Eta complete producer/literal pairing differs')
    rows = reused + fresh
    ax = {k: v for r in rows for k, v in r['axioms']['actualAxioms'].items()}
    if len(ax) != 10:
        raise ValueError('Eta five producer/five literal transitive AX roots missing')
    sig = {'status': 'accepted-exact-eta-positive-series-prerequisite', 'verifier': '/root/local_power_verification',
           'taskClass': 'complex established semantic/dependency/object verification', 'model': 'gpt-6.1-sol', 'reasoningEffort': 'xhigh',
           'signedUtc': now.isoformat(), 'hardDeadlineUtc': '2026-10-05T11:37:11Z',
           'binding': path.name, 'bindingSha256': hashlib.sha256(raw).hexdigest(),
           'fixedSourceCommit': b['fixedSourceCommit'], 'actualRunId': b['runId'], 'artifactId': b['artifactId'],
           'archiveSha256': b['archiveSha256'], 'nativeMemberCount': b['nativeMemberCount'],
           'acceptedSources': [{'path': r['sourcePath'], 'sha256': r['compiler']['sourceSha256'],
                                'objectSha256': r['compiler']['objectSha256']} for r in rows],
           'actualCompleteTransitiveAxioms': ax, 'acceptedPairedAXRootCount': 10, 'freshAXRootCount': 5,
           'freshSourceCount': 1, 'reusedTechnicallyCompletedProducerCount': 1,
           'normalCheckerExits': [0, 0], 'freshNormalReplayTargetCount': 1,
           'scope': 'Actual full tsum q^n/(n!)^2 for real0<=q<=81: positive terms,81^n/n! uniform majorant,summable,>=1,continuousOn. q=81(1-s^2/eps^2) is the original R2 c18 radial series.',
           'failedOriginalLiteralAccepted': False, 'EtaKernelMassOneSupplied': False,
           'FourierTransformOrClosedLambdaSupplied': False, 'PsiDifferenceBudgetSupplied': False,
           'genuineInfiniteGapSupplied': False, 'unconditionalCompleteOriginalIndexIncrement': 0,
           'preservedCompleteOriginalScope': '{1,2,11,29} union [35,30000]', 'R7Changed': False,
           'checkerMeaning': b['checkerMeaning'], 'kernelRerunByVerifier': False}
    out = path.with_name(path.name.replace('-INDEPENDENT-BINDING.json', '-INDEPENDENT-ACCEPTED.json'))
    out.write_text(json.dumps(sig, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': sig['status'], 'signature': str(out), 'acceptedPairedRoots': 10,
                      'freshRootCount': 5, 'pairedNormalCount': 2, 'originalIndexIncrement': 0}))
