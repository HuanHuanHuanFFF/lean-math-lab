"""R8 targeted source/probes; no frozen input or numeric field is overwritten."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import re

here = Path(__file__).resolve().parent
repair = here.parent
repo = next(p for p in here.parents if (p / 'AGENTS.md').is_file())
probes = here / 'probes'
probes.mkdir(exist_ok=True)

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def relative(path):
    return path.relative_to(repo).as_posix()

records = []
whole = {}
for identifier, expected, group_count in [
    ('Middle185_322', '86bde0c265cf2a66f2fc8d821aa6f0401bcb585cfc61aa8f94f58eb3e11a1e48', 57),
    ('Middle323_999', 'b1cba5457a990d216667b64f24be16aa67cb41f17faa9d2e095d71f1fbd13aa8', 6),
]:
    old_path = repair / ('full-factorial/' + identifier + '.lean')
    assert sha(old_path) == expected
    old = old_path.read_text(encoding='utf-8')
    pattern = r'(def sg\d+ : Group \d+ := ⟨(\d+),\d+,by\n)  exact join_sound \(ss:=\(\[\n(.*?)\] : List \(Segment (\d+) (true|false)\)\)\) \(by decide\) \(by decide \+kernel\)⟩'
    def replace(m):
        return m[1] + '  let ss : List (Segment ' + m[4] + ' ' + m[5] + ') := [\n' + m[3] + ']\n  exact join_sound (p:=' + m[2] + ') (ss:=ss) (by decide) (by decide +kernel)⟩'
    new, count = re.subn(pattern, replace, old, flags=re.S)
    assert count == group_count
    assert new.count('  group_sound (gs:=groups)') == 1
    new = new.replace('  group_sound (gs:=groups)', '  group_sound (p:=2) (gs:=groups)', 1)
    inverse_pattern = r'(def sg\d+ : Group \d+ := ⟨(\d+),\d+,by\n)  let ss : List \(Segment (\d+) (true|false)\) := \[\n(.*?)\]\n  exact join_sound \(p:=\2\) \(ss:=ss\) \(by decide\) \(by decide \+kernel\)⟩'
    inverse = re.sub(inverse_pattern, lambda m: m[1] + '  exact join_sound (ss:=([\n' + m[5] + '] : List (Segment ' + m[3] + ' ' + m[4] + '))) (by decide) (by decide +kernel)⟩', new, flags=re.S)
    inverse = inverse.replace('  group_sound (p:=2) (gs:=groups)', '  group_sound (gs:=groups)', 1)
    assert inverse == old
    target = here / (identifier + '.lean')
    target.write_text(new, encoding='utf-8', newline='\n')
    whole[identifier] = new
    records.append({'id': identifier, 'oldPath': relative(old_path), 'oldSha256': expected,
        'path': relative(target), 'sha256': sha(target), 'bytes': target.stat().st_size,
        'changedGroupProofApplications': count, 'numericFieldsAndAllOtherBytesInversePatchIdentical': True,
        'change': 'typed localss first, then bind join_sound p to the same Group.lo; final group_sound p=2',
        'LeanCompiled': False, 'proofAccepted': False})

def profile_header(source):
    source, count = re.subn(r'^set_option maxHeartbeats \d+$', 'set_option maxHeartbeats 400000', source, flags=re.M)
    assert count == 1
    return source + '\nset_option profiler true\nset_option profiler.threshold 100\n'

probe_records = []
def save(identifier, source, root, purpose, details):
    path = probes / (identifier + '.lean')
    path.write_text(source, encoding='utf-8', newline='\n')
    probe_records.append({'id': identifier, 'path': relative(path), 'sha256': sha(path), 'bytes': path.stat().st_size,
        'root': root, 'wallTimeoutSeconds': 180, 'heartbeatLimit': 400000, 'threads': 1,
        'purpose': purpose, 'details': details, 'proofAccepted': False})

middle = whole['Middle185_322']
prefix = middle[:middle.index('def sg0 :')]
sg0 = middle[middle.index('def sg0 :'):middle.index('def sg1 :')]
source = profile_header(prefix) + sg0 + '\ntheorem checked : N6.PrimeChain 184 sg0.lo sg0.hi := sg0.chain\nend Contribution.Middle185\n'
source = source.replace('Contribution.Middle185', 'Contribution.R8MiddleGroupFirst128FixedP')
save('MiddleGroupFirst128FixedP', source, 'Contribution.R8MiddleGroupFirst128FixedP.checked',
     'same first128 original segments; complete typedss and bound p before closed proof checks, not full S',
     {'segments': 128, 'lo': 2, 'hi': 359311, 'explicitP': True, 'sourceDataUnchanged': True})

middle = whole['Middle323_999']
prefix = middle[:middle.index('def sg0 :')]
height_prefix = middle[middle.index('structure HeightRow where'):middle.index('def hr0 :')]
block = middle[middle.index('def hr32 :'):middle.index('def hr33 :')]
source = profile_header(prefix) + height_prefix + block + '\ntheorem checked : heightCheck 835 851 hr32=true := by decide +kernel\nend Contribution.Middle323\n'
source = source.replace('Contribution.Middle323', 'Contribution.R8MiddleHeight842Block16')
save('MiddleHeight842Block16', source, 'Contribution.R8MiddleHeight842Block16.checked',
     'same original835..850 height rows; isolate known i842 area, not full S',
     {'heightIndices': [835, 850], 'heightRows': 16, 'originalCountAndRawHeightProofsUnchanged': True})

old_high_path = repair / 'numeric/High1000_30000.lean'
assert sha(old_high_path) == '992c467eacbb421c7a453ffbe8873d11d28adb957c56b6a24ee60778e6244ea2'
high = old_high_path.read_text(encoding='utf-8')
fuel = (repair / 'numeric/FueledCoprime.lean').read_text()
fuel = fuel[fuel.index('def fueledCoprime'):fuel.index('end Contribution.')]
start = high.index('def primeCheck (p : Nat)')
high = high[:start] + fuel + '\n' + high[start:]
high = high.replace('else decide (2 ≤ p ∧ p < 11086*11086 ∧ Nat.gcd p F=1)',
    'else decide (2 ≤ p ∧ p < 11086*11086) && fueledCoprime 64 p F', 1)
old_he = '''  · have he : 2 ≤ p ∧ p < 11086*11086 ∧ Nat.gcd p F=1 :=
      of_decide_eq_true (by simpa only [primeCheck,if_neg hs] using hc)'''
new_he = '''  · have hf : (2 ≤ p ∧ p < 11086*11086) ∧ fueledCoprime 64 p F=true := by
      simpa only [primeCheck,if_neg hs,Bool.and_eq_true,decide_eq_true_eq] using hc
    have he : 2 ≤ p ∧ p < 11086*11086 ∧ Nat.gcd p F=1 :=
      ⟨hf.1.1,hf.1.2,fueledCoprime_sound hf.2⟩'''
assert high.count(old_he) == 1
high = high.replace(old_he, new_he, 1)
prefix = high[:high.index('def ad0 :')]
first = high[high.index('def ad0 :'):high.index('def ad1 :')].splitlines()[1].rstrip(',')
source = profile_header(prefix) + 'def firstPart : Part addEdge := ' + first + '\ntheorem checked : Chain addEdge 2 28351 := firstPart.chain\nend Contribution.Range\n'
source = source.replace('Contribution.Range', 'Contribution.R8HighFirstPartFuel')
save('HighFirstPartFuel', source, 'Contribution.R8HighFirstPartFuel.checked',
     'same firstadd Part32 nodes/prelude/F_eq, conditional fuel gcd; High137 cause not assumed',
     {'copiedPrimeNodes': 32, 'lo': 2, 'hi': 28351, 'factorial': 11085, 'fuel': 64,
      'exhaustedFuelFalse': True, 'uniform64SufficiencyAssumed': False, 'F_eqOnce': True})
manifest = {'createdAtUtc': datetime.now(timezone.utc).isoformat(), 'owner': '/root/b699_contribution_environment',
    'diagnosisOnly': True, 'proofAccepted': False, 'hardDeadlineUtc': '2026-10-06T23:30:25Z',
    'executionOrder': [r['id'] for r in probe_records], 'probes': probe_records,
    'acceptanceBoundary': 'targeted diagnostic types only, no original S or full-source acceptance',
    'frozenWholeRepairs': records}
(here / 'PROBE-REQUEST.json').write_text(json.dumps(manifest, indent=2) + '\n', encoding='utf-8', newline='\n')
(here / 'SOURCE-FREEZE.json').write_text(json.dumps({'records': records, 'proofAccepted': False}, indent=2) + '\n', encoding='utf-8', newline='\n')
print(json.dumps({'manifestSha256': sha(here / 'PROBE-REQUEST.json'), 'probes': probe_records, 'wholeSourceRepairs': records}))
