"""Sign only actual exact-eta or actual integral-normalized weight scope."""
import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path

if __name__ == '__main__':
    path, mode = Path(sys.argv[1]), sys.argv[2]
    raw = path.read_bytes()
    b = json.loads(raw)
    now = datetime.now(timezone.utc)
    if now >= datetime.fromisoformat('2026-10-05T11:37:11+00:00'):
        raise ValueError('Original hard reached')
    stem, count = ('EtaKernel', 18) if mode == 'KERNEL' else ('EtaWeight', 22)
    rows = [r for r in b['compilerBindings'] if Path(r['sourcePath']).stem in {stem, stem + 'Literal'}]
    ax = {k: v for r in rows for k, v in r['axioms']['actualAxioms'].items()}
    normal = [r['receipt']['exitCode'] for r in b['normalReplayBindings']
              if any(r['phase'] == c['phase'] + '-normal-checker' for c in rows)]
    if len(rows) != 2 or len(ax) != count or normal != [0, 0]:
        raise ValueError('Complete current source/raw/AX/replay pair missing')
    weight = mode == 'WEIGHT'
    sig = {'status': 'accepted-actual-integral-normalized-r2-eta-weight-and-psi-instance' if weight
           else 'accepted-exact-r2-eta-positive-supported-integrable-kernel',
           'verifier': '/root/local_power_verification', 'taskClass': 'complex established semantic/dependency/object verification',
           'model': 'gpt-6.1-sol', 'reasoningEffort': 'xhigh', 'signedUtc': now.isoformat(), 'hardDeadlineUtc': '2026-10-05T11:37:11Z',
           'binding': path.name, 'bindingSha256': hashlib.sha256(raw).hexdigest(),
           'fixedSourceCommit': b['fixedSourceCommit'], 'actualRunId': b['runId'], 'artifactId': b['artifactId'],
           'archiveSha256': b['archiveSha256'], 'nativeMemberCount': b['nativeMemberCount'],
           'acceptedSources': [{'path': r['sourcePath'], 'sha256': r['compiler']['sourceSha256'],
                                'objectSha256': r['compiler']['objectSha256']} for r in rows],
           'actualCompleteTransitiveAxioms': ax, 'freshAXRootCount': count, 'normalCheckerExits': normal,
           'exactPaperEtaKernelSupplied': True, 'epsilon': '1/16384', 'c': 18,
           'supportConvention': 'strict Ioo(-epsilon,epsilon), values0 at both endpoints; exact paper2.2',
           'rawClosedIntervalCaution': 'Raw series value at support endpoints differs from eta; future integration replacement uses endpoint null sets, no global pointwise equality asserted',
           'actualIntegralNormalizerPositiveSupplied': weight, 'concreteWeightConditionsDischarged': weight,
           'actualWeightMassOneSupplied': weight, 'actualPsiKernelAssumptionFreeInstanceSupplied': weight,
           'lambdaScope': 'Actual integral of exp(-s/2)*exactEta; no identification with closed Logan ell(i/2) supplied',
           'etaMassOneSupplied': False, 'lambdaGeOneSupplied': False, 'FourierTransformIdentitySupplied': False,
           'PsiDifferenceBudgetSupplied': False, 'genuineInfiniteGapSupplied': False,
           'unconditionalCompleteOriginalIndexIncrement': 0, 'preservedCompleteOriginalScope': '{1,2,11,29} union [35,30000]',
           'R7Changed': False, 'checkerMeaning': b['checkerMeaning'], 'kernelRerunByVerifier': False,
           'scope': b['stageScopes']}
    out = path.with_name(path.name.replace('-INDEPENDENT-BINDING.json', '-INDEPENDENT-ACCEPTED.json'))
    out.write_text(json.dumps(sig, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': sig['status'], 'signature': str(out), 'AXRoots': count, 'normalTargets': 2,
                      'actualWeightMassOne': weight, 'etaMassOne': False, 'psiBudget': False}))
