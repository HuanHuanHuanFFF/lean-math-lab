"""Prepare typed/axiom roots and exact small diagnostics; never run Lean or Git."""
from pathlib import Path
from datetime import datetime, timezone
from math import comb, factorial, isqrt
import argparse
import hashlib
import importlib.util
import json
import re

HERE = Path(__file__).resolve().parent
RUN = HERE.parents[1]
ROOT = RUN.parents[4]
NS = 'Math.B699.CriticalPadeHeight.'
IMPL = ['Structure', 'Components', 'Windows', 'Constants', 'Final']
PREFIX = 'research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
OWN = PREFIX + '.experiments.«huan-critical-height-three-indices-5e2d13bb»'
GAP = PREFIX + '.experiments.«huan-two-five-gap33-5e2d13bb»'
GAPDIR = RUN / 'experiments/huan-two-five-gap33-5e2d13bb'


def sha(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()


def rel(p):
    return p.relative_to(ROOT).as_posix()


def put(name, data):
    (HERE / name).write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')


def modpath(module):
    return ROOT / (module.replace('«', '').replace('»', '').replace('.', '/') + '.lean')


def declarations():
    out = []
    for module in IMPL:
        text = (HERE / (module + '.lean')).read_text(encoding='utf-8')
        for m in re.finditer(r'^(theorem|def)\s+(\w+)\s*([\s\S]*?)(?=:=)', text, re.M):
            kind, name, header = m.groups()
            out.append({'module': module, 'kind': kind, 'name': name, 'header': header.rstrip()})
    assert len(out) == 25 and sum(x['kind'] == 'theorem' for x in out) == 24
    return out


def typed_statement(header):
    depth = 0
    for index, char in enumerate(header):
        if char in '({[':
            depth += 1
        elif char in ')}]':
            depth -= 1
        elif char == ':' and depth == 0:
            binders, result = header[:index].strip(), header[index + 1:].strip()
            return ('∀ ' + binders + ',\n    ' if binders else '') + result
    raise AssertionError(header)


def make_audits(decls):
    for module in IMPL:
        roots = [NS + x['name'] for x in decls if x['module'] == module]
        s = 'import ' + OWN + '.' + module + '\n\n'
        s += '\n'.join('#print axioms ' + name for name in roots) + '\n'
        (HERE / (module + 'Audit.lean')).write_text(s, encoding='utf-8')
    typed = ('import ' + OWN + '.Final\n\n'
             'set_option autoImplicit false\nset_option relaxedAutoImplicit false\n'
             'open Math.B699.CriticalPadeHeight B699LowIndex B699LargePrimeStructure\n\n')
    for d in decls:
        if d['kind'] == 'theorem':
            typed += 'example : ' + typed_statement(d['header']) + ' :=\n  @' + NS + d['name'] + '\n\n'
    typed += ('example (n i p : ℕ) : primeComponent n i p = '
              'p ^ ((n.choose i).factorization p) := rfl\n\n')
    for i in (28, 31, 34):
        typed += f'''-- Original Common expanded: inclusive prime threshold and both complete binomials.
example : ∀ (n j : ℕ), {i} < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ {i} ≤ p ∧ p ∣ Nat.gcd (n.choose {i}) (n.choose j)) →
    n < (2 : ℕ) ^ 15360 := @Math.B699.CriticalPadeHeight.actual_i{i}_below_15360

'''
    (HERE / 'TypedAudit.lean').write_text(typed, encoding='utf-8')
    unified = 'import ' + OWN + '.TypedAudit\n\n'
    unified += '\n'.join('#print axioms ' + NS + x['name'] for x in decls) + '\n'
    (HERE / 'Audit.lean').write_text(unified, encoding='utf-8')


def receipt_rows(name):
    p = RUN / ('verification/huan-prerequisites/' + name + '.json')
    r = json.loads(p.read_text(encoding='utf-8'))
    assert sha(ROOT / r['root']) == r['source_sha256']
    e = ROOT / r['evidence']
    d = json.loads(e.read_text(encoding='utf-8'))
    assert d['success'] is True and d['exit_code'] == 0 and d['failure'] is None
    records = {x['source'].replace('\\', '/'): x
               for x in d['reuse_records'] + d['compile_records']}
    return ({'receipt': rel(p), 'receipt_sha256': sha(p), 'evidence': rel(e),
             'evidence_sha256': sha(e), 'source_commit': d['source_commit']}, records)


def source_map():
    gf = GAPDIR / 'FREEZE.json'
    frozen = json.loads(gf.read_text(encoding='utf-8'))
    for name, rec in frozen['files'].items():
        assert sha(GAPDIR / name) == rec['sha256'], ('changed gap artifact', name)
    evidence, known = [], {}
    for name in ['i11-two-five-actual-instance', 'i11-actual-cubic-bridge',
                 'i11-small-prime-localization', 'i11-component-ceil-half']:
        desc, rows = receipt_rows(name)
        evidence.append(desc)
        for key, value in rows.items():
            known.setdefault(key, (value, desc['evidence']))
    sources = {}
    todo = [HERE / (m + '.lean') for m in IMPL]
    seen = set()
    while todo:
        p = todo.pop()
        key = rel(p)
        if key in seen:
            continue
        seen.add(key)
        text = p.read_text(encoding='utf-8')
        assert '.lean.WinAssign.' not in text
        if p.parent == HERE:
            pass
        elif p.parent == GAPDIR:
            assert p.name in frozen['files']
            sources[key] = {'sha256': sha(p), 'status': 'frozen complete candidate; parent serial acceptance required',
                            'freeze': rel(gf), 'freeze_sha256': sha(gf)}
        else:
            assert key in known, ('no successful source binding found', key)
            rec, ev = known[key]
            assert sha(p) == rec['source_sha256_before'] == rec['source_sha256_after'], key
            assert rec['exit_code'] == 0 and not rec['timed_out'] and rec['failure'] is None, key
            log = ROOT / rec['log']
            assert sha(log) == rec['log_sha256'], key
            sources[key] = {'sha256': sha(p), 'status': 'current source and old successful log hashes checked',
                            'evidence': ev, 'log': rel(log), 'log_sha256': sha(log),
                            'recorded_output_sha256': rec['output_sha256'],
                            'output_bytes_rehashed_by_worker': False}
        for module in re.findall(r'^import\s+(\S+)', text, re.M):
            q = modpath(module)
            if q.exists():
                todo.append(q)
            else:
                assert module.startswith(('Mathlib.', 'Lean.')), module
    return {
        'status': 'source correspondence and old receipt binding, not new kernel acceptance',
        'receipts': evidence, 'sources': dict(sorted(sources.items())),
        'gap33_freeze': {'path': rel(gf), 'sha256': sha(gf)},
        'pins': {rel(ROOT / name): sha(ROOT / name) for name in ['lean-toolchain', 'lake-manifest.json']},
        'target_mapping': {p.name: rel(RUN / 'lean/CriticalPadeHeight' / p.name)
                           for p in sorted(HERE.glob('*.lean'))},
        'imports_only_rewrites': {OWN: PREFIX + '.lean.CriticalPadeHeight',
                                  GAP: PREFIX + '.lean.TwoFiveGap33'},
        'namespace_unchanged': NS[:-1], 'uses_WinAssign': False,
    }


def prime(p):
    return p >= 2 and all(p % q for q in range(2, isqrt(p) + 1))


def valuation(n, p):
    assert n > 0 and prime(p)
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def small_diagnostics():
    rows = [(28, 9, 8, 18), (31, 10, 9, 20), (34, 11, 10, 22)]
    result = []
    for i, t, r, s in rows:
        count = sum(prime(p) for p in range(i))
        degree = s * (s + 1) + (i - r - 1) * (i - r) // 2
        assert 2 * s - r == i and degree == (i - t) * i and count == t
        result.append({'i': i, 't': t, 'r': r, 's': s, 'degree': degree,
                       'lambda': i, 'small_primes': [p for p in range(i) if prime(p)]})
    assert 2 * factorial(34) <= 2 ** 129
    assert 34 * 33 == 1122 <= 2 ** 11 and 11 <= 15360
    assert 15359 * 10 == 153590 > 129000 == 129 * 1000
    windows = 0
    for n in range(66, 301):
        y = (n + 1) // 2
        for a in range(34):
            assert y <= n - a <= 2 * y
            windows += 1
    gaps = 0
    for n in range(101):
        for a in range(34):
            for b in range(34):
                assert abs(max(n - a, 0) - max(n - b, 0)) <= 33
                gaps += 1
    localizations, zero_exponents, inclusive_index_checks = 0, 0, 0
    primes = [p for p in range(2, 38) if prime(p)]
    trace = hashlib.sha256()
    for i, _, _, _ in rows:
        for n in range(i, 161):
            choose = comb(n, i)
            for p in primes:
                exponent = valuation(choose, p)
                index_exponent = valuation(i, p)
                full = p ** (exponent + index_exponent)
                a = next(a for a in range(i) if (n - a) % full == 0)
                raw = p ** exponent
                cofactor = (n - a) // raw
                assert a < i and cofactor >= 1 and raw * cofactor == n - a
                assert raw <= n
                localizations += 1
                zero_exponents += exponent == 0
                inclusive_index_checks += p == i
                trace.update(f'{i},{n},{p},{exponent},{index_exponent},{a},{cofactor}\n'.encode())
    return {'level': 'exact bounded diagnostics; not unrestricted proof', 'rows': result,
            'factorial_bound': {'2*34!': str(2 * factorial(34)), 'power': 129,
                                 'largest_integer_bits': (2 ** 129).bit_length()},
            'window_checks': windows, 'gap_checks_including_zero_and_truncation': gaps,
            'localization_checks': localizations, 'zero_valuation_cases': zero_exponents,
            'p_equal_i_cases': inclusive_index_checks, 'trace_sha256': trace.hexdigest(),
            'million_bit_closed_powers_evaluated': False,
            'source_sha256': {m + '.lean': sha(HERE / (m + '.lean')) for m in IMPL}}


def static_checks(decls):
    old = json.loads((HERE / 'PRESERVED_INPUTS.json').read_text(encoding='utf-8'))
    for name, digest in old.items():
        assert sha(HERE / name) == digest, ('protected input changed', name)
    for p in HERE.glob('*.lean'):
        text = p.read_text(encoding='utf-8')
        assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*(axiom|unsafe)\b', text, re.M), p
        assert text.count('(') == text.count(')') and text.count('/-') == text.count('-/'), p
        assert 'WinAssign' not in text
        for module in re.findall(r'^import\s+(\S+)', text, re.M):
            assert modpath(module).exists() or module.startswith(('Mathlib.', 'Lean.')), module
    roots = re.findall(r'^#print axioms\s+(\S+)', (HERE / 'Audit.lean').read_text(), re.M)
    assert roots == [NS + d['name'] for d in decls]
    typed = (HERE / 'TypedAudit.lean').read_text(encoding='utf-8')
    assert len(re.findall(r'^example\b', typed, re.M)) == 28
    for i in (28, 31, 34):
        d = next(x for x in decls if x['name'] == f'actual_i{i}_below_15360')
        h = d['header']
        assert len(re.findall(r'\(h\w+\s*:', h)) == 3
        assert f'(hno : ¬ Common n {i} j)' in h
        assert 'n < (2 : ℕ) ^ 15360' in h
        assert f'p.Prime ∧ {i} ≤ p ∧ p ∣ Nat.gcd (n.choose {i}) (n.choose j)' in typed


def auditor():
    spec = importlib.util.spec_from_file_location('frozen_gap_checker', GAPDIR / 'check_candidate.py')
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module.parse_axioms


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--freeze', action='store_true')
    parser.add_argument('--log', type=Path)
    args = parser.parse_args()
    decls = declarations()
    expected = [NS + d['name'] for d in decls]
    audit = auditor()
    good = '\n'.join("'%s' depends on axioms: [propext, Classical.choice, Quot.sound]" % n for n in expected)
    audit(good, expected)
    rejected = 0
    for bad in [good.split('\n', 1)[1], good.replace('propext', 'sorryAx', 1),
                good.replace('propext', 'External.bad', 1), good + '\nerror: type mismatch',
                good + '\n' + good.split('\n', 1)[0]]:
        try:
            audit(bad, expected)
        except AssertionError:
            rejected += 1
    assert rejected == 5
    if args.log:
        print(json.dumps(audit(args.log.read_text(encoding='utf-8'), expected), indent=2))
        return
    if not (HERE / 'FREEZE.json').exists():
        make_audits(decls)
    static_checks(decls)
    inputs = source_map()
    exact = small_diagnostics()
    if (HERE / 'FREEZE.json').exists():
        frozen = json.loads((HERE / 'FREEZE.json').read_text(encoding='utf-8'))
        for name, rec in frozen['files'].items():
            assert sha(HERE / name) == rec['sha256'], name
        assert inputs == json.loads((HERE / 'SOURCE_MAP.json').read_text(encoding='utf-8'))
        assert exact == json.loads((HERE / 'exact-checks.json').read_text(encoding='utf-8'))
        print(json.dumps({'frozen_artifacts_unchanged': True, 'source_bindings_unchanged': True,
                          'protected_inputs_unchanged': True, 'new_Lean_runs': 0}))
        return
    put('SOURCE_MAP.json', inputs)
    put('exact-checks.json', exact)
    put('expected-axioms.json', {'roots': expected, 'allowed': ['propext', 'Classical.choice', 'Quot.sound'],
                                'negative_controls_rejected': rejected})
    put('STATIC_CHECK.json', {'utc': datetime.now(timezone.utc).isoformat(), 'success': True,
                              'public_theorems': 24, 'public_definition_roots': 1,
                              'typed_checks': 28, 'unified_axiom_roots': 25,
                              'input_sources': len(inputs['sources']), 'new_Lean_runs': 0,
                              'protected_inputs_unchanged': True})
    if args.freeze:
        put('FREEZE.json', {'utc': datetime.now(timezone.utc).isoformat(),
                            'status': 'FROZEN_COMPLETE_CANDIDATE_PROOF_TEXT_UNCOMPILED',
                            'owner': '/root/two_five_gap33', 'start_utc': '2026-09-12T09:26:09Z',
                            'checkpoint_utc': '2026-09-12T09:46:09Z', 'no_total_deadline': True,
                            'final_roots': [NS + f'actual_i{i}_below_15360' for i in (28, 31, 34)],
                            'new_Lean_runs': 0, 'new_Git_runs': 0, 'new_original_B_results': 0,
                            'files': {p.name: {'sha256': sha(p), 'bytes': p.stat().st_size}
                                      for p in sorted(HERE.iterdir()) if p.is_file()}})
    print(json.dumps({'success': True, 'sources': len(inputs['sources']), 'public_roots': 25,
                      'typed_checks': 28, 'frozen': (HERE / 'FREEZE.json').exists()}))


if __name__ == '__main__':
    main()
