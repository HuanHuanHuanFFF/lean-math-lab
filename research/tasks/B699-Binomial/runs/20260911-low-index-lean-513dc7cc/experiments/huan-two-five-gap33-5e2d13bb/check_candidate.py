"""Read source/evidence and run exact small checks; never invoke Lean or Git."""
from pathlib import Path
from fractions import Fraction
from datetime import datetime, timezone
import argparse
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
RUN = HERE.parents[1]
ROOT = RUN.parents[4]
NS = 'Math.B699.TwoFiveGap33.'
MODULE_PREFIX = 'research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
EXPERIMENT_MODULE = MODULE_PREFIX + '.experiments.«huan-two-five-gap33-5e2d13bb»'
TARGET_MODULE = MODULE_PREFIX + '.lean.TwoFiveGap33'
PUBLIC = [
    'rateRational_pow224_ge_128', 'actual_rate_pow329_gt_66', 'actual_rate_gt_66',
    'actual_integer_gap_budget', 'actual_q_gap33_twice_lt',
    'actual_integer_gap33_sum_lt', 'actual_two_five_strong_edge',
    'actual_two_five_weak_edge',
]
ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def rel(path):
    return path.relative_to(ROOT).as_posix()


def write_json(name, value):
    (HERE / name).write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n',
                             encoding='utf-8')


def module_path(module):
    return ROOT / (module.replace('«', '').replace('»', '').replace('.', '/') + '.lean')


def source_checks():
    files = sorted(HERE.glob('*.lean'))
    assert len(files) == 8, [p.name for p in files]
    declarations = []
    for p in files:
        text = p.read_text(encoding='utf-8')
        assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*(axiom|unsafe)\b', text, re.M), p
        assert text.count('(') == text.count(')'), p
        assert text.count('/-') == text.count('-/'), p
        declarations.extend(re.findall(r'^theorem\s+(\w+)', text, re.M))
        for module in re.findall(r'^import\s+(\S+)', text, re.M):
            assert module_path(module).is_file(), (p.name, module)
    assert sorted(declarations) == sorted(PUBLIC), declarations
    audit = (HERE / 'Audit.lean').read_text(encoding='utf-8')
    roots = re.findall(r'^#print axioms\s+(\S+)', audit, re.M)
    assert roots == [NS + n for n in PUBLIC], roots
    assert sum((HERE / f).read_text(encoding='utf-8').count('#print axioms')
               for f in ('RateAudit.lean', 'GapAudit.lean', 'EdgeAudit.lean')) == len(PUBLIC)
    typed = (HERE / 'TypedAudit.lean').read_text(encoding='utf-8')
    assert len(re.findall(r'^example\s*:', typed, re.M)) == len(PUBLIC)
    for name in PUBLIC:
        assert re.search(r'\b' + name + r'\b', typed), name
    edge = (HERE / 'Edge.lean').read_text(encoding='utf-8')
    final_header = edge.split('theorem actual_two_five_weak_edge', 1)[1].split(':= by', 1)[0]
    expected_terms = ['(Y e f A C : ℕ)', '(2 : ℕ) ^ 15359 ≤ Y', '(hC : 1 ≤ C)',
                      '(hwindowP : Y ≤ 2 ^ e * A)', '(hwindowQ : Y ≤ 5 ^ f * C)',
                      '(hupperQ : 5 ^ f * C ≤ 2 * Y)',
                      '|(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 33',
                      'Y ^ 10 ≤ A ^ 1000 ∨ Y ^ 10 ≤ C ^ 1000']
    for term in expected_terms:
        assert term in final_header, term
    assert len(re.findall(r'\(h\w+\s*:', final_header)) == 6
    return files


def source_bindings():
    receipt = RUN / 'verification/huan-prerequisites/i11-two-five-actual-instance.json'
    rd = json.loads(receipt.read_text(encoding='utf-8'))
    assert digest(ROOT / rd['root']) == rd['source_sha256']
    evidence = ROOT / rd['evidence']
    ed = json.loads(evidence.read_text(encoding='utf-8'))
    assert ed['success'] is True and ed['exit_code'] == 0 and ed['failure'] is None
    closure = {x['source'].replace('\\', '/'): x for x in ed['source_closure']}
    records = {x['source'].replace('\\', '/'): x
               for x in ed['reuse_records'] + ed['compile_records']}
    inputs = {}
    todo = [ROOT / k for k in closure]
    while todo:
        p = todo.pop()
        key = rel(p)
        if key in inputs:
            continue
        text = p.read_text(encoding='utf-8')
        src = closure[key]
        assert digest(p) == src['source_sha256_before'] == src['source_sha256_after'], key
        rec = records[key]
        assert rec['exit_code'] == 0 and rec['timed_out'] is False and rec['failure'] is None, key
        log = ROOT / rec['log']
        assert digest(log) == rec['log_sha256'], key
        inputs[key] = {'sha256': digest(p), 'bytes': p.stat().st_size,
                       'accepted_evidence': rel(evidence), 'accepted_log': rel(log),
                       'accepted_log_sha256': digest(log),
                       'accepted_output_sha256_recorded': rec['output_sha256'],
                       'output_bytes_rehashed_by_this_worker': False}
        for m in re.findall(r'^import\s+(\S+)', text, re.M):
            q = module_path(m)
            if q.is_file():
                assert rel(q) in closure, ('source missing from accepted closure', rel(q))
                todo.append(q)
    assert any(k.endswith('/Pade/Rows.lean') for k in inputs)
    assert any(k.endswith('/Growth/I11TwoFiveTree.lean') for k in inputs)
    assert any(k.endswith('/I11DivisorTwoFive/Threshold.lean') for k in inputs)
    assert any(k.endswith('/I11TwoFiveFinal/RateBasis.lean') for k in inputs)
    pins = [ROOT / 'lean-toolchain', ROOT / 'lake-manifest.json']
    bindings = {
        'status': 'current upstream source and accepted log hashes match recorded successful evidence',
        'source_commit_from_evidence_not_new_git_query': ed['source_commit'],
        'receipt': {'path': rel(receipt), 'sha256': digest(receipt)},
        'evidence': {'path': rel(evidence), 'sha256': digest(evidence)},
        'compiled_object_byte_recheck': 'deferred to primary serial verifier',
        'sources': dict(sorted(inputs.items())),
        'pins': {rel(p): digest(p) for p in pins},
        'candidate_to_target': {p.name: rel(RUN / 'lean/TwoFiveGap33' / p.name)
                                for p in sorted(HERE.glob('*.lean'))},
        'imports_only_rewrite': {'from': EXPERIMENT_MODULE, 'to': TARGET_MODULE},
        'public_namespace_unchanged': NS[:-1],
        'no_upstream_source_edits': True,
    }
    return bindings


def exact_checks():
    def read(name):
        return (RUN / ('lean/' + name)).read_text(encoding='utf-8')

    rate = read('I11TwoFiveFinal/RateBasis.lean')
    n = int(re.search(r'def rateNumerator : ℕ := (\d+)', rate)[1])
    d = int(re.search(r'def rateDenominator : ℕ := (\d+)', rate)[1])
    growth = read('I11TwoFiveEdge/GrowthInputs.lean')
    ql = re.search(r'def qLambda : ℚ := (\d+) / (\d+)', growth)
    qlambda = Fraction(int(ql[1]), int(ql[2]))
    rows = read('I11TwoFiveEdge/ActualRows.lean')
    content = re.search(r'def contentBase : ℚ := \((\d+) / (\d+) : ℚ\) \^ (\d+)', rows)
    content_base = Fraction(int(content[1]), int(content[2])) ** int(content[3])
    assert 'def qBase : ℚ := beta 5 4 * qLambda' in growth
    beta = Fraction(9 ** 9, 4 ** 8)
    actual_rate = 128 * content_base / (beta * qlambda)
    assert actual_rate == Fraction(n, d)
    assert d > 0 and n >= d and 2 * d ** 32 <= n ** 32
    params = read('I11TwoFiveEdge/Parameters.lean')
    m0 = int(re.search(r'def twoFiveM : ℕ := (\d+)', params)[1])
    ybits = int(re.search(r'def twoFiveY0 : ℕ := 2 \^ (\d+)', params)[1])
    assert m0 == 329 and ybits == 15359
    assert 32 * 7 == 224 <= m0 and 2 ** 7 == 128 > 2 * 33
    assert Fraction(33, 128) + Fraction(1, 2) < 1
    # The integer extraction is independent of Q/E; check both boundary exponents.
    extraction_cases = 0
    for m in range(1, 5):
        for extra in range(4):
            for cofactor in range(5):
                e, f = 35 * m + extra, 15 * m + extra
                assert 128 ** (5 * m) * (2 ** (e - 35 * m) * cofactor) == 2 ** e * cofactor
                assert 125 ** (5 * m) * (5 ** (f - 15 * m) * cofactor) == 5 ** f * cofactor
                extraction_cases += 2
    return {
        'evidence_level': 'exact rational/integer diagnostics and static source checks; no Lean run',
        'actual_rate_numerator': str(n), 'actual_rate_denominator': str(d),
        'actual_rate_rederived_from_content_beta_qLambda': True,
        'rate_ge_one': True, 'rate_32_ge_two': True,
        'largest_integer_bits': max((2 * d ** 32).bit_length(), (n ** 32).bit_length()),
        'symbolic_lift': {'block_exponent': 32, 'blocks': 7, 'lift_exponent': 224,
                          'lift_lower': 128, 'selector_floor': m0, 'strict_budget': 66},
        'height_bits_unchanged': ybits,
        'normalized_q_bound': 'Q / 128^(5m) <= 1/128',
        'normalized_e_bound': 'E*V / 128^(5m) < 1/2 (accepted unchanged)',
        'normalized_gap33_sum_upper': '97/128 < 1',
        'extraction_cases': extraction_cases,
        'final_height_powers_evaluated': False,
        'candidate_sources': {p.name: digest(p) for p in sorted(HERE.glob('*.lean'))},
    }


def parse_axioms(text, expected):
    assert not re.search(r'(^|\n).*\berror:|\bsorryAx\b|#\s*exit_code:\s*[1-9]', text), 'failed log'
    got = {}
    pattern = r"'([^']+)'\s+(?:depends on axioms:\s*\[([^]]*)\]|does not depend on any axioms)"
    for name, axioms in re.findall(pattern, text, re.S):
        if name in expected:
            assert name not in got, ('duplicate root', name)
            names = {x.strip() for x in axioms.split(',') if x.strip()}
            assert names <= ALLOWED, (name, names - ALLOWED)
            got[name] = sorted(names)
    assert set(got) == set(expected), ('missing roots', sorted(set(expected) - set(got)))
    return got


def audit_self_test():
    expected = [NS + n for n in PUBLIC]
    good = '\n'.join("'%s' depends on axioms: [propext, Classical.choice, Quot.sound]" % n
                     for n in expected)
    parse_axioms(good, expected)
    for bad in (good.split('\n', 1)[1], good.replace('propext', 'sorryAx', 1),
                good.replace('propext', 'External.axiom', 1), good + '\nerror: type mismatch',
                good + '\n' + good.split('\n', 1)[0]):
        try:
            parse_axioms(bad, expected)
        except AssertionError:
            pass
        else:
            raise AssertionError('negative audit control was accepted')


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--freeze', action='store_true')
    parser.add_argument('--log', type=Path)
    args = parser.parse_args()
    files = source_checks()
    audit_self_test()
    if args.log:
        print(json.dumps(parse_axioms(args.log.read_text(encoding='utf-8'),
                                    [NS + n for n in PUBLIC]), ensure_ascii=False, indent=2))
        return
    bindings = source_bindings()
    exact = exact_checks()
    if (HERE / 'FREEZE.json').exists():
        frozen = json.loads((HERE / 'FREEZE.json').read_text(encoding='utf-8'))
        for name, entry in frozen['files'].items():
            assert digest(HERE / name) == entry['sha256'], name
        assert bindings == json.loads((HERE / 'SOURCE_MAP.json').read_text(encoding='utf-8'))
        assert exact == json.loads((HERE / 'exact-checks.json').read_text(encoding='utf-8'))
        print(json.dumps({'frozen_artifacts_unchanged': True, 'upstream_sources_unchanged': True,
                          'lean_invocations': 0, 'git_invocations': 0}))
        return
    write_json('SOURCE_MAP.json', bindings)
    write_json('exact-checks.json', exact)
    write_json('expected-axioms.json', {'roots': [NS + n for n in PUBLIC],
                                       'allowed': sorted(ALLOWED), 'negative_controls_pass': True})
    write_json('STATIC_CHECK.json', {
        'utc': datetime.now(timezone.utc).isoformat(), 'success': True,
        'candidate_lean_files': len(files), 'public_theorems': len(PUBLIC),
        'typed_checks': len(PUBLIC), 'unified_axiom_roots': len(PUBLIC),
        'upstream_hash_bound_sources': len(bindings['sources']),
        'no_new_lean_invocations': True, 'no_git_invocations': True,
        'source_or_log_checks_are_not_new_lean_acceptance': True,
    })
    if args.freeze:
        write_json('FREEZE.json', {
            'utc': datetime.now(timezone.utc).isoformat(),
            'status': 'FROZEN_COMPLETE_CANDIDATE_PROOF_TEXT_UNCOMPILED',
            'owner': '/root/two_five_gap33',
            'start_utc': '2026-09-12T09:09:07Z', 'checkpoint_utc': '2026-09-12T09:29:07Z',
            'final_theorem': NS + 'actual_two_five_weak_edge',
            'stronger_theorem': NS + 'actual_two_five_strong_edge',
            'height_increased': False, 'gap': 33, 'weak_exponents': [10, 10],
            'strong_exponents': [248, 252], 'denominator_exponent': 1000,
            'lean_invocations': 0, 'git_invocations': 0, 'new_original_B_results': 0,
            'next': 'Primary serial RateAudit, GapAudit, EdgeAudit, TypedAudit, Audit with exact source/pin/axiom verification.',
            'files': {p.name: {'bytes': p.stat().st_size, 'sha256': digest(p)}
                      for p in sorted(HERE.iterdir()) if p.is_file()},
        })
    print(json.dumps({'success': True, 'sources': len(bindings['sources']),
                      'lean_files': len(files), 'public_roots': len(PUBLIC),
                      'max_exact_integer_bits': exact['largest_integer_bits'],
                      'frozen': (HERE / 'FREEZE.json').exists()}, ensure_ascii=False))


if __name__ == '__main__':
    main()
