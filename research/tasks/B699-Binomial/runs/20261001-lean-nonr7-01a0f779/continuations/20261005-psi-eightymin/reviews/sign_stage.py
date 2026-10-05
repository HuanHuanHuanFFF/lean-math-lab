"""Sign S's precise stage decision after a complete source/object/raw/AX/replay binding."""
import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path

STOP = datetime.fromisoformat('2026-10-05T11:37:11+00:00')

if __name__ == '__main__':
    path, mode = Path(sys.argv[1]), sys.argv[2]
    raw = path.read_bytes()
    b = json.loads(raw)
    now = datetime.now(timezone.utc)
    if now >= STOP or b['status'] != 'independent-local-power-source-object-AX-replay-binding-passed':
        raise ValueError('Missing timely complete binding')
    wanted = 'PsiSmoothing' if mode == 'PSI' else 'LocalPowerOriginalLegacy'
    chosen = [r for r in b['compilerBindings'] if Path(r['sourcePath']).stem in {wanted, wanted + 'Literal'}]
    if len(chosen) != 2:
        raise ValueError('Missing independently reviewed producer/literal pair')
    ax = {k: v for r in chosen for k, v in r['axioms']['actualAxioms'].items()}
    if len(ax) != 8:
        raise ValueError('Missing complete four producer plus four literal AX roots')
    sig = {'status': 'accepted-actual-psi-smoothing-prerequisite' if mode == 'PSI'
           else 'accepted-conditional-original-tail-two-supply-routes',
           'verifier': '/root/local_power_verification', 'taskClass': 'complex established semantic/dependency/object verification',
           'model': 'gpt-6.1-sol', 'reasoningEffort': 'xhigh', 'signedUtc': now.isoformat(), 'hardDeadlineUtc': STOP.isoformat(),
           'binding': path.name, 'bindingSha256': hashlib.sha256(raw).hexdigest(),
           'fixedSourceCommit': b['fixedSourceCommit'], 'actualRunId': b['runId'], 'artifactId': b['artifactId'],
           'archiveSha256': b['archiveSha256'], 'nativeMemberCount': b['nativeMemberCount'],
           'acceptedSources': [{'path': r['sourcePath'], 'sha256': r['compiler']['sourceSha256'],
                                'objectSha256': r['compiler']['objectSha256']} for r in chosen],
           'acceptedScope': 'Actual psi is the finite vonMangoldt sum; its normalized nonnegative integrable compact weighted average has endpoint bounds and inward difference <= actual psi increment. Concrete w/eps, mass proof, explicit formula and analytic lower estimate remain.' if mode == 'PSI'
           else 'Actual F0 discharges I0; full legal Nat n,i,j with i>=4883 yields same actual Prime p>=i dividing both full chooses, conditional on actual psi DifferenceBudget plus either finite real psi[T0,C] or Nat finiteMiddleGap[T0,B). No extra LP/I0 input.',
           'actualCompleteTransitiveAxioms': ax, 'freshAXRootCount': 8,
           'normalCheckerExits': [r['receipt']['exitCode'] for r in b['normalReplayBindings']
                                  if any(r['phase'] == c['phase'] + '-normal-checker' for c in chosen)],
           'PsiSmoothingPrerequisiteSupplied': mode == 'PSI', 'ConcreteSmoothingKernelSupplied': False,
           'ConcreteKernelMassProofSupplied': False, 'PsiDifferenceBudgetSupplied': False,
           'OriginalConditionalConsumersSupplied': mode != 'PSI', 'I0DischargedInNewOriginalConsumer': mode != 'PSI',
           'I0HistoricalRecompileIncrement': 0, 'genuineInfiniteGapSupplied': False,
           'unconditionalCompleteOriginalIndexIncrement': 0, 'preservedCompleteOriginalScope': '{1,2,11,29} union [35,30000]',
           'R7Changed': False, 'kernelRerunByVerifier': False, 'checkerMeaning': b['checkerMeaning']}
    if sig['normalCheckerExits'] != [0, 0]:
        raise ValueError('Producer/literal normal replay scope differs')
    out = path.with_name(path.name.replace('-INDEPENDENT-BINDING.json', '-INDEPENDENT-ACCEPTED.json'))
    out.write_text(json.dumps(sig, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': sig['status'], 'signature': str(out), 'AXRoots': 8, 'originalIndexIncrement': 0}))
