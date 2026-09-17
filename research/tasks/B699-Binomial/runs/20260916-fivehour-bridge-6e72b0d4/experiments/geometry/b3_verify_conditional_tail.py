"""Independent standard-library polynomial-gcd verification of the sparse tail."""
from pathlib import Path
import hashlib
import json
from b3_verify_certificate import no_root_by_gcd, prime

ROOT = Path(__file__).resolve().parent


def main():
    path = ROOT/'b3_conditional_tail.json'
    tail = json.loads(path.read_text())
    period_path = ROOT/'b3_verification.json'
    source = json.loads(period_path.read_text())
    assert tail['source_period_sha256'] == hashlib.sha256(period_path.read_bytes()).hexdigest()
    targets = {(1, h) for h in (2, 7, 20, 34, 47, 52)} | {(-1, h) for h in (11, 16, 38, 43)}
    expected = set()
    for e, templates in source['survivors'].items():
        eps = int(e)
        for template in templates:
            h = template['h']
            if (eps, h) not in targets:
                continue
            for residue in template['classes']:
                for s in range(residue, 7125119, template['period']):
                    if s >= 10:
                        expected.add((eps, h, s))
    witnessed = set()
    for rec in tail['witnesses']:
        eps, h, s, p = rec['epsilon'], rec['h'], rec['s'], rec['prime']
        assert (eps, h) in targets and 10 <= s < 7125119
        assert prime(p) and p <= 1000
        assert no_root_by_gcd(eps, h, p, s), rec
        assert (eps, h, s) not in witnessed
        witnessed.add((eps, h, s))
    unresolved = {(t['epsilon'], t['h'], t['s']) for t in tail['unresolved']}
    assert not witnessed & unresolved
    assert witnessed | unresolved == expected
    output = {'status': 'PASS' if not unresolved else 'PARTIAL',
              'ten_templates': sorted(targets), 'expected_sparse_exponents': len(expected),
              'independent_Fp_gcd_checks': len(witnessed), 'unresolved': sorted(unresolved),
              'max_witness_prime': tail['max_witness_prime'],
              'source_tail_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
              'scope': 'conditional finite exponent consumer only; requires accepted M bound and low-s certificate'}
    (ROOT/'b3_conditional_tail_verification.json').write_text(json.dumps(output, indent=2), encoding='utf-8')
    print(json.dumps(output))


if __name__ == '__main__':
    main()
