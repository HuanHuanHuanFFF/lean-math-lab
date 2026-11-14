"""Only repair the actual rowPi empty-list proof; preserve all numeric data."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json

here = Path(__file__).resolve().parent
repair = here.parent
repo = next(p for p in here.parents if (p / 'AGENTS.md').is_file())

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def repair_nil(source):
    start = source.index('theorem rowPi :')
    end = source.index('theorem largeN ', start)
    old = source[start:end]
    assert old.count('True.intro') == 1
    fixed = old.replace('True.intro', '(by intro x hx; cases hx)', 1)
    new = source[:start] + fixed + source[end:]
    assert new.replace(fixed, old, 1) == source
    return new

old_whole = repair / 'r8-high-fuel/High1000_30000.lean'
old_probe = repair / 'r8-fixedp/probes/HighFirstPartFuel.lean'
assert sha(old_whole) == '9f7cdfcd023efa7412df9a910268bca7ab8691d0809bbde4b306fc990f4dfa85'
assert sha(old_probe) == 'c7882984bbcf2f03290b4fbc46aae0950aa59d04fbde8c0946e3623c9b6eb371'
whole = here / 'High1000_30000.lean'
whole.write_text(repair_nil(old_whole.read_text()), encoding='utf-8', newline='\n')
identifier = 'HighFirstPartFuelNil'
probe = here / (identifier + '.lean')
probe_source = repair_nil(old_probe.read_text()).replace('Contribution.R8HighFirstPartFuel', 'Contribution.R8HighFirstPartFuelNil')
probe.write_text(probe_source, encoding='utf-8', newline='\n')
root = 'Contribution.R8HighFirstPartFuelNil.checked'
manifest = {
    'createdAtUtc': datetime.now(timezone.utc).isoformat(), 'owner': '/root/b699_contribution_environment',
    'diagnosisOnly': True, 'proofAccepted': False, 'hardDeadlineUtc': '2026-10-06T23:30:25Z',
    'executionOrder': [identifier], 'probes': [{
        'id': identifier, 'path': probe.relative_to(repo).as_posix(), 'sha256': sha(probe),
        'bytes': probe.stat().st_size, 'root': root, 'wallTimeoutSeconds': 180,
        'heartbeatLimit': 400000, 'threads': 1,
        'purpose': 'same complete first32-node Part with actual rowPi nil error repaired; not fullS acceptance',
        'details': {'sameAllFirstPartNodes': True, 'fuelExhaustionFalse': True,
                    'uniform64SufficiencyAssumed': False, 'nilProof': 'intro x hx; cases hx'},
    }],
}
(here / 'PROBE-REQUEST.json').write_text(json.dumps(manifest, indent=2) + '\n', encoding='utf-8', newline='\n')
freeze = {
    'owner': '/root/b699_contribution_environment', 'actualFailureRunId': 37541019143,
    'actualFailure': 'rowPi True.intro has True but expected forall x in emptyList, primeCounting bound',
    'oldWholePath': old_whole.relative_to(repo).as_posix(), 'oldWholeSha256': sha(old_whole),
    'path': whole.relative_to(repo).as_posix(), 'sha256': sha(whole), 'bytes': whole.stat().st_size,
    'oldProbePath': old_probe.relative_to(repo).as_posix(), 'oldProbeSha256': sha(old_probe),
    'probePath': probe.relative_to(repo).as_posix(), 'probeSha256': sha(probe),
    'inversePatchBytesIdentical': True,
    'allOriginalPartNodesAndHeightAndRowCountsAndProofsPreserved': True,
    'onlyNewWholeChange': 'rowPi terminal True.intro becomes ordinary empty-membership elimination',
    'publicRoots': ['Contribution.Range.common_1000_30000', 'Contribution.Range.common_gcd_1000_30000'],
    'scope': '1000..30000; alllegalNat n/i/j; actualsamePrime>=i divides bothcompletechoose',
    'LeanCompiled': False, 'kernelReplayed': False, 'Std3Accepted': False, 'proofAccepted': False,
}
(here / 'SOURCE-FREEZE.json').write_text(json.dumps(freeze, indent=2) + '\n', encoding='utf-8', newline='\n')
print(json.dumps({'freeze': freeze, 'probeManifestSha256': sha(here / 'PROBE-REQUEST.json')}))
