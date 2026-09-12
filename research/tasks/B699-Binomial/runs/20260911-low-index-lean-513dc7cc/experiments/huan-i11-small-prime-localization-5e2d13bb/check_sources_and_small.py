"""Source-bound Windows receipt audit and bounded arithmetic sanity checks."""
from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
from math import comb, prod
import json
import re
import time

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
REPO = RUN.parents[4]
START = time.perf_counter()


def digest(path):
    data = path.read_bytes()
    return {'bytes': len(data), 'sha256': sha256(data).hexdigest()}


def vp(n, p):
    assert n > 0 and p >= 2
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


evidence_path = RUN / 'verification/20260911T004440769454Z/evidence.json'
evidence = json.loads(evidence_path.read_text(encoding='utf-8'))
assert evidence['success'] and evidence['exit_code'] == 0
assert evidence['all_new_project_closure_compiled']
assert 'windows' in evidence['toolchain']['observed']
closure_checked = 0
for item in evidence['source_closure']:
    path = REPO / item['source']
    actual = digest(path)['sha256']
    assert actual == item['source_sha256_before'] == item['source_sha256_after']
    closure_checked += 1

records = []
for name in ['SmallPartBound.lean', 'LargeSmallPowers.lean',
             'SmallPrimeLocalization.lean', 'SmallPowerIntervals.lean']:
    rec = next(x for x in evidence['compile_records'] if x['source'].endswith('/' + name))
    assert rec['exit_code'] == 0 and not rec['timed_out']
    path = REPO / rec['source']
    assert digest(path)['sha256'] == rec['source_sha256_before'] == rec['source_sha256_after']
    log_path = REPO / rec['log']
    assert digest(log_path)['sha256'] == rec['log_sha256']
    log = log_path.read_text(encoding='utf-8')
    roots = []
    for theorem, names in re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log, re.S):
        axioms = [x.strip() for x in names.split(',') if x.strip()]
        assert set(axioms) <= {'propext', 'Classical.choice', 'Quot.sound'}
        roots.append({'theorem': theorem, 'axioms': axioms})
    assert roots
    records.append({'source': rec['source'], **digest(path), 'exit_code': 0,
                    'log': rec['log'], 'log_sha256': rec['log_sha256'], 'roots': roots,
                    'directly_imported': name in ['LargeSmallPowers.lean', 'SmallPrimeLocalization.lean']})

primes = [p for p in range(2, 11) if all(p % d for d in range(2, p))]
assert primes == [2, 3, 5, 7]
windows_checked = 0
zero_valuation = 0
collisions = 0
examples = []
for n in range(11, 257):
    binomial = comb(n, 11)
    components = [p ** vp(binomial, p) for p in primes]
    U = prod(components)
    stripped = binomial
    for p in primes:
        while stripped % p == 0:
            stripped //= p
    assert U * stripped == binomial
    windows = []
    for p, A in zip(primes, components):
        assert 1 <= A <= n
        offset = next(a for a in range(11) if (n - a) % A == 0)
        C = (n - offset) // A
        assert 0 <= offset < 11 and C >= 1 and C * A == n - offset
        windows.append({'prime': p, 'valuation': vp(binomial, p), 'component': A,
                        'offset': offset, 'cofactor': C})
        windows_checked += 1
        zero_valuation += A == 1
    repeated = len({w['offset'] for w in windows}) < 4
    collisions += repeated
    assert U * prod(w['cofactor'] for w in windows) == prod(n - w['offset'] for w in windows)
    assert U * prod(w['cofactor'] for w in windows) <= n ** 4
    if n in [11, 12, 121, 256]:
        examples.append({'n': n, 'choose_n_11': binomial, 'U': U,
                         'p11_valuation_in_binomial': vp(binomial, 11),
                         'U_is_not_divisible_by_11': U % 11 != 0,
                         'windows': windows, 'offset_collision': repeated})
assert examples[0]['windows'] == [
    {'prime': p, 'valuation': 0, 'component': 1, 'offset': 0, 'cofactor': 11} for p in primes]
assert next(x for x in examples if x['n'] == 121)['p11_valuation_in_binomial'] > 0

# Check the generic multiplication/power bridge at small exponents; no 32-branch
# graph or actual i11 cofactor-cut data is evaluated here.
graph_checks = 0
for C in range(7):
    for A in range(7):
        for n in range(10):
            if C * A > n:
                continue
            for Y in range(7):
                for weight in range(4):
                    for exponent in range(6):
                        if Y ** weight <= C ** exponent:
                            assert A ** exponent * Y ** weight <= n ** exponent
                            graph_checks += 1

prefix = 'B699LowIndex.I11SmallPrimes.'
modules = []
for name in ['Components.lean', 'Window.lean', 'FourWindows.lean']:
    path = HERE / name
    text = path.read_text(encoding='utf-8')
    assert 'UNCOMPILED CANDIDATE' in text
    assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*axiom\s', text, re.M)
    declarations = []
    for line, row in enumerate(text.splitlines(), 1):
        match = re.match(r'(def|structure|theorem)\s+(\w+)', row)
        if match:
            declarations.append({'kind': match[1], 'name': prefix + match[2], 'line': line})
    audits = re.findall(r'^#print axioms (\S+)', text, re.M)
    assert sorted(audits) == sorted(x['name'] for x in declarations)
    modules.append({'file': name, **digest(path), 'declarations': declarations,
                    'audit_roots': audits, 'imports': re.findall(r'^import (\S+)', text, re.M)})
out = {'utc': datetime.now(timezone.utc).isoformat(),
       'status': 'Windows accepted-source audit and small exact checks; new Lean candidates not compiled',
       'primary_evidence': str(evidence_path.relative_to(REPO)),
       'primary_evidence_sha256': digest(evidence_path)['sha256'],
       'toolchain': evidence['toolchain'], 'current_source_closure_files_matched': closure_checked,
       'adopted_records': records, 'n_range': [11, 256], 'rows_checked': 246,
       'windows_checked': windows_checked, 'zero_valuation_windows': zero_valuation,
       'rows_with_repeated_offsets': collisions, 'examples': examples,
       'generic_small_power_bridge_checks': graph_checks,
       'candidate_modules': modules, 'total_new_audit_roots': sum(len(x['audit_roots']) for x in modules),
       'elapsed_seconds': round(time.perf_counter() - START, 6),
       'new_Lean_invocations': 0, 'new_original_indices': []}
(HERE / 'source-and-small-checks.json').write_text(json.dumps(out, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({k: out[k] for k in ['status', 'current_source_closure_files_matched',
                  'rows_checked', 'windows_checked', 'zero_valuation_windows',
                  'rows_with_repeated_offsets', 'generic_small_power_bridge_checks',
                  'total_new_audit_roots', 'elapsed_seconds']}, ensure_ascii=False))
