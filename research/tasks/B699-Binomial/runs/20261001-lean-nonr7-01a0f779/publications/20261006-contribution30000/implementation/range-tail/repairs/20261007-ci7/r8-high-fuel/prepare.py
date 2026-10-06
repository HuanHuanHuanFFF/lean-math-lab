"""Static whole High candidate, reusing exactly the frozen diagnostic algorithm."""
from pathlib import Path
import hashlib
import json
import re

here = Path(__file__).resolve().parent
repair = here.parent
repo = next(parent for parent in here.parents if (parent / 'AGENTS.md').is_file())
old_path = repair / 'numeric/High1000_30000.lean'
probe_path = repair / 'r8-fixedp/probes/HighFirstPartFuel.lean'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

assert sha(old_path) == '992c467eacbb421c7a453ffbe8873d11d28adb957c56b6a24ee60778e6244ea2'
assert sha(probe_path) == 'c7882984bbcf2f03290b4fbc46aae0950aa59d04fbde8c0946e3623c9b6eb371'
old = old_path.read_text(encoding='utf-8')
probe = probe_path.read_text(encoding='utf-8')
old_start = old.index('def primeCheck (p : Nat)')
old_end = old.index('inductive Chain ', old_start)
new_start = probe.index('def fueledCoprime')
new_end = probe.index('inductive Chain ', new_start)
replacement = probe[new_start:new_end]
old_block = old[old_start:old_end]
new = old[:old_start] + replacement + old[old_end:]
assert new[:old_start] == old[:old_start]
assert new[new.index('inductive Chain '):] == old[old_end:]
assert new.replace(replacement, old_block, 1) == old
target = here / 'High1000_30000.lean'
target.write_text(new, encoding='utf-8', newline='\n')

blocks_pattern = r'^def ((?:ad|rd)\d+) : List \(Part (addEdge|ratioEdge)\) := \[\n(.*?)\]\n'
old_blocks = re.findall(blocks_pattern, old, re.M | re.S)
new_blocks = re.findall(blocks_pattern, new, re.M | re.S)
assert old_blocks == new_blocks and len(old_blocks) == 10
part_pattern = r'^⟨(\d+),\[([0-9,]*)\],by decide \+kernel,by decide \+kernel⟩,?$'
parts = []
for name, relation, block in old_blocks:
    for line in block.splitlines():
        match = re.fullmatch(part_pattern, line)
        assert match, line[:120]
        successors = [int(number) for number in match[2].split(',') if number]
        parts.append({'group': name, 'relation': relation, 'lo': int(match[1]), 'successors': successors})
suffix = old[old.index('theorem common_1000_30000 '):]
assert new[new.index('theorem common_1000_30000 '):] == suffix
record = {
    'owner': '/root/b699_contribution_environment',
    'oldPath': old_path.relative_to(repo).as_posix(), 'oldSha256': sha(old_path),
    'frozenProbePath': probe_path.relative_to(repo).as_posix(), 'frozenProbeSha256': sha(probe_path),
    'path': target.relative_to(repo).as_posix(), 'sha256': sha(target), 'bytes': target.stat().st_size,
    'change': 'reuse the exact frozen probe fuel/checker/soundness section; all other source bytes identical',
    'inversePatchBytesIdentical': True, 'sameReplacementAsFrozenProbe': True,
    'allOriginalPartGroupsByteIdentical': True, 'partGroups': len(old_blocks), 'parts': len(parts),
    'successorNodeOccurrences': sum(len(part['successors']) for part in parts),
    'allFAndFiniteSieveAndAnalyticPreludeBytesIdentical': True,
    'allFinalConsumerBytesIdentical': True,
    'publicRoots': ['Contribution.Range.common_1000_30000', 'Contribution.Range.common_gcd_1000_30000'],
    'indices': [1000, 30000],
    'scope': 'all legal Nat n/i/j, i<j<=n/2, actual same Prime p>=i dividing both complete choose',
    'fuelExhaustionReturnsFalse': True, 'uniform64SufficiencyAssumed': False,
    'soundness': 'ordinary fuel induction proves Nat.gcd=1 conditionally; original Prime proof and roots unchanged',
    'LeanCompiled': False, 'kernelReplayed': False, 'independentLiteralStd3Accepted': False,
    'smallProbeActualResult': 'pending', 'proofAccepted': False,
}
(here / 'SOURCE-FREEZE.json').write_text(json.dumps(record, indent=2) + '\n', encoding='utf-8', newline='\n')
print(json.dumps(record))
