from __future__ import annotations
import ast
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import re
from check_extra_factorial_bound import poly_mul, poly_prod, poly_sub, poly_scale

OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
REPO = RUN.parents[4]


def expression_poly(expression, variable):
    def walk(node):
        if isinstance(node, ast.Constant):
            assert isinstance(node.value, int)
            return [node.value]
        if isinstance(node, ast.Name):
            assert node.id == variable
            return [0, 1]
        assert isinstance(node, ast.BinOp), ast.dump(node)
        if isinstance(node.op, ast.Pow):
            assert isinstance(node.right, ast.Constant) and node.right.value >= 0
            return poly_prod([walk(node.left)] * node.right.value)
        left, right = walk(node.left), walk(node.right)
        if isinstance(node.op, ast.Mult): return poly_mul(left, right)
        if isinstance(node.op, ast.Add): return poly_sub(left, poly_scale(right, -1))
        if isinstance(node.op, ast.Sub): return poly_sub(left, right)
        raise AssertionError(ast.dump(node))
    return walk(ast.parse(expression.replace('^', '**'), mode='eval').body)


def shift_by_one(coefficients):
    result = [0]
    for value in reversed(coefficients):
        result = poly_sub(poly_mul(result, [1, 1]), [-value])
    return result


def main():
    source_map = json.loads((OUT / 'INPUT_SOURCES.json').read_text())['sources']
    source_checks = []
    for rel, expected in source_map.items():
        data = (REPO / rel).read_bytes()
        actual = hashlib.sha256(data).hexdigest()
        assert actual == expected['sha256'] and len(data) == expected['bytes'], rel
        source_checks.append({'path': rel, 'sha256': actual, 'unchanged': True})
    evidence = json.loads((RUN / 'verification/20260911T033529457679Z/evidence.json').read_text())
    assert evidence['success'] and evidence['exit_code'] == 0
    for item in evidence['source_closure']:
        assert source_map[item['source']]['sha256'] == item['source_sha256_before'] == item['source_sha256_after']
    rows = json.loads((OUT / 'extra-factorial-certificates.json').read_text())['pairs']
    candidate_records = json.loads((OUT / 'candidate-sources.json').read_text())['files']
    records = []
    for row in rows:
        c, d = row['c'], row['d']
        tag = f'{c}_{d}'
        p = OUT / f'Factorial{c}D{d}.lean'
        content = p.read_text(encoding='utf-8')
        code = re.sub(r'/\-.*?\-/', '', content, flags=re.S)
        code = re.sub(r'--[^\n]*', '', code)
        assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide|HeightValid)\b', code)
        for left, right in [('(', ')'), ('[', ']'), ('{', '}'), ('⟨', '⟩')]:
            balance = 0
            for char in code:
                if char == left: balance += 1
                if char == right: balance -= 1
                assert balance >= 0, (p.name, left)
            assert balance == 0, (p.name, left, balance)
        declarations = re.findall(r'^theorem (\w+)', code, re.M)
        prints = re.findall(r'^#print axioms Math\.B699\.ElementaryFactorialBound\.(\w+)', code, re.M)
        assert declarations == prints and len(declarations) == 11
        numerator_expr = re.search(rf'def numerator_{tag} .*? :=\n  ([^\n]+)', content).group(1)
        denominator_expr = re.search(rf'def denominator_{tag} .*? :=\n  ([^\n]+)', content).group(1)
        assert shift_by_one(expression_poly(numerator_expr, 'm')) == poly_prod(row['U_factors_ascending'])
        assert shift_by_one(expression_poly(denominator_expr, 'm')) == poly_prod(row['W_factors_ascending'])
        cert_expr = re.search(r'    0 ≤ ([^\n]+) := by positivity', content).group(1)
        parsed = expression_poly(cert_expr, 'x')
        expected = poly_scale([int(v) for v in row['primitive_coefficients_ascending']], int(row['residual_content']))
        assert parsed == expected
        record = next(item for item in candidate_records if item['path'] == p.name)
        assert hashlib.sha256(p.read_bytes()).hexdigest() == record['sha256']
        assert declarations == record['public_theorems']
        records.append({'path': p.name, 'sha256': record['sha256'],
                        'public_theorems_with_prints': len(declarations),
                        'literal_U_W_and_Horner_certificates_match_exact_data': True,
                        'simple_delimiter_and_placeholder_scan': True})
    result = {'utc': datetime.now(timezone.utc).isoformat(),
              'evidence': 'static source/transcription checks only; not a Lean parser or kernel check',
              'accepted_source_evidence': 'verification/20260911T033529457679Z/evidence.json',
              'accepted_source_hashes_match_evidence': True,
              'input_sources_unchanged': source_checks, 'candidate_checks': records,
              'worker_lean_invocations': 0, 'accepted_new_parameter_pairs': [], 'accepted_original_indices': []}
    (OUT / 'static-candidate-check.json').write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'accepted_inputs_preserved': len(source_checks), 'candidates': records,
                      'worker_lean_invocations': 0}, indent=2))


if __name__ == '__main__':
    main()
