#!/usr/bin/env python3
"""Deterministic certificates for A42 / NOSPLIT3 / Q336 (standard library only)."""
from __future__ import annotations
import argparse, hashlib, json, math
from pathlib import Path

PARENT_SHA = '340c1dbdd40ce62f373ac91f0851c39cbfae82c2abbdef666ddbbf66543c5e97'


def step(d: int, y: int, m: int | None = None) -> tuple[int, int]:
    d, y = 18817*d+32592*y+9408, 10864*d+18817*y+5432
    return (d, y) if m is None else (d % m, y % m)


def cycle(m: int) -> list[list[int]]:
    rows, state = [], (1, 1)
    while True:
        rows.append(list(state))
        state = step(*state, m)
        if state == (1, 1):
            return rows
        if len(rows) > 100000:
            raise ValueError('Unexpectedly long modular cycle')


def pell(q: int) -> tuple[int, int]:
    d, y = 1, 1
    for _ in range(q):
        d, y = step(d, y)
    return d, y


def pell_UX(k: int) -> tuple[int, int]:
    u, x = 1, 0
    for _ in range(k):
        u, x = 2*u+3*x, u+2*x
    return u, x


def square_target(d: int, y: int, a: int, b: int) -> int:
    v = a*y
    return v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*b*y


def orbit(a: int, m: int) -> list[int]:
    values, x = [], a % m
    while x not in values:
        values.append(x)
        x = x*a % m
    return values


def q336_ok(a: int) -> bool:
    q = (a+1) % 336
    return (a % 3 != 2 or q in orbit(3, 336)) and (a % 7 != 6 or q in (7, 49))


def first_failure(a: int) -> str | None:
    if a % 9 in (3, 6):
        return 'NOSPLIT3: v3(A)=1'
    if a % 3 == 2 and (a+1) % 336 not in orbit(3, 336):
        return 'Q336: Q=3^e incompatible residue'
    if a % 7 == 6 and (a+1) % 336 not in (7, 49):
        return 'Q336: Q=7^e incompatible residue'
    return None


def valuation(n: int, p: int) -> int:
    if n <= 0:
        raise ValueError('valuation argument must be positive')
    e = 0
    while n % p == 0:
        e += 1
        n //= p
    return e


def all_certificates(root: Path) -> dict[str, dict]:
    out: dict[str, dict] = {}
    inp = root/'inputs'
    parent = inp/'parent_A4_TRI4_evidence.zip'
    assert hashlib.sha256(parent.read_bytes()).hexdigest() == PARENT_SHA
    out['source_adoption.json'] = {
        'parent_zip_sha256': PARENT_SHA,
        'adopted_parent_math': 'NC3-to-core and parent JOINT table; no old proof replay',
        'inputs': {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                   for p in sorted(inp.iterdir()) if p.is_file()},
        'repository_actions': 'none'
    }

    cyc98 = cycle(98)
    rows = []
    for r, (d, y) in enumerate(cyc98):
        assert (d-1) % 14 == 0
        b = ((d-1)//14) % 7
        s = square_target(d % 7, y % 7, 42, b) % 7
        rows.append({'q_mod7': r, 'd_mod98': d, 'y_mod98': y,
                     'B_mod7': b, 'S_mod7': s,
                     'square_roots_mod7': [z for z in range(7) if z*z % 7 == s]})
    out['A42_exact_mod7.json'] = {
        'A': 42, 'actual_B': '(d-1)/14', 'lift_modulus': 98,
        'first_return_period': len(cyc98), 'rows': rows,
        'excluded_q_mod7': [r['q_mod7'] for r in rows if not r['square_roots_mod7']],
        'retained_q_mod7': [r['q_mod7'] for r in rows if r['square_roots_mod7']],
        'status': 'necessary only; mod7 alone does not close A42'
    }
    out['A42_mod3_closure.json'] = {
        'A': 42, 'actual_B': '(d-1)/14', 'cycle_mod42': cycle(42),
        'B_mod3': 0, 'd_mod3': 1, 'v_mod3': 0, 'S_mod3': 2,
        'squares_mod3': sorted({z*z % 3 for z in range(3)}),
        'scope': 'all positive Pell rows; all original exponents'
    }
    out['NOSPLIT3.json'] = {
        'norm_solutions_mod9': [[d,y] for d in range(9) for y in range(9)
                               if (d*d+d+1-3*y*y) % 9 == 0],
        'split_cases_mod3': [
            {'d': 1, 'y': y, 'A': 0, 'B': 0,
             'S': square_target(1,y,0,0) % 3}
            for y in range(3)],
        'A_only_excluded_mod9': [3,6],
        'triple_X_coefficients_ascending': [0,3,0,12],
        'triple_unit_mod3': [(1+4*x*x) % 3 for x in range(3)],
        'X_4m_mod3_for_m_0_1_2': [0,2,1],
        'exact_valuation': 'v3(d-1)=1+v3(q); v3(AB)=2+v3(q)',
        'surviving_allocation': 'min(v3(A),v3(B))=0; max=2+v3(q)',
        'not_a_claim': 'This is the A/B auxiliary 3-part, not recovered n-1 allocation.'
    }
    out['Q336_primepower.json'] = {
        'd_recurrence_mod336': [18817 % 336,32592 % 336,9408 % 336],
        'y_recurrence_mod168': [10864 % 168,18817 % 168,5432 % 168],
        'initial_d_y': [1,1],
        'invariants': ['d=1 mod336','y=1 mod168','Q=A+1 mod336 for even A'],
        'power3_positive_exponent_cycle_mod336': orbit(3,336),
        'power7_positive_exponent_cycle_mod336': orbit(7,336),
        'Q3_branch': {'trigger': 'A=2 mod3', 'Q': '3^e, e>=3',
                      'n_requirement': 'c=1 and s odd'},
        'Q7_branch': {'trigger': 'A=6 mod7', 'Q': '7^e, e>=2',
                      'n_requirement': 'c=1 and s=1 mod3'},
        'n_mod3_values_by_c_and_s_mod2': {
            str(c): [c*pow(2,s,3) % 3 for s in range(2)] for c in (1,3)},
        'n_mod7_values_by_c_and_s_mod3': {
            str(c): [c*pow(2,s,7) % 7 for s in range(3)] for c in (1,3)}
    }
    old = json.loads((inp/'parent_joint_frontier.json').read_text())
    m = old['A_modulus']
    prior = old['surviving_A_residues']
    stage = {'parent_lift': 0,'after_NOSPLIT3': 0,'after_Q3': 0,'after_Q7': 0}
    survivors: list[int] = []
    for a0 in prior:
        for k in range(9):
            a = a0+k*m
            stage['parent_lift'] += 1
            if a % 9 in (3,6):
                continue
            stage['after_NOSPLIT3'] += 1
            if a % 3 == 2 and (a+1) % 336 not in orbit(3,336):
                continue
            stage['after_Q3'] += 1
            if a % 7 == 6 and (a+1) % 336 not in (7,49):
                continue
            stage['after_Q7'] += 1
            survivors.append(a)
    survivors.sort()
    out['frontier.json'] = {
        'parent_A_modulus': m, 'new_A_modulus': 9*m,
        'all_even_classes': 9*m//2, 'parent_lift_classes': stage['parent_lift'],
        'stages': stage,
        'newly_excluded_relative_to_lifted_parent': stage['parent_lift']-len(survivors),
        'surviving_classes': len(survivors),
        'total_excluded_in_new_period': 9*m//2-len(survivors),
        'least_positive_surviving_residue': min(a for a in survivors if a > 0),
        'surviving_A_residues': survivors,
        'not_counted': ['additional exact v3(q) condition','n congruences','all historical consumers'],
        'status': 'necessary A-only projection, not original inputs or a finiteness claim'
    }
    small = []
    for a in prior:
        if 42 <= a < 100:
            small.append({'A':a,'A_mod9':a % 9,'Q_mod336':(a+1) % 336,
                          'exclusion':first_failure(a)})
    out['new_small_A_closures.json'] = {
        'previously_allowed_A_below100': small,
        'number_of_new_fixed_A_branches':len(small),
        'scope':'all q and all original prime-power exponents in adopted core',
        'old_A4_results_recounted':False
    }

    # An exact unbounded Pell/allocation family beyond the newly deleted A-values.
    a,q0,stride = 100,45,60
    local = []
    for p in (3,7,31,97):
        cy = cycle(a*p)
        assert stride % len(cy) == 0
        d,y = cy[q0 % len(cy)]
        assert 3*(d-1) % a == 0
        b = (3*(d-1)//a) % p
        s = square_target(d % p,y % p,a,b) % p
        local.append({'p':p,'lift_modulus':a*p,'period':len(cy),'cycle':cy,
                      'd':d % p,'y':y % p,'B':b,'S':s,
                      'roots':[z for z in range(p) if z*z % p == s]})
    samples = []
    for q in (45,105):
        d,y = pell(q); b = 3*(d-1)//a; Q=d+a*y
        s = square_target(d,y,a,b); z = math.isqrt(s)
        U,X = pell_UX(4*q); g=math.gcd(a,X); height=max(a//g,X//g)
        samples.append({'q':q,'d':d,'y':y,'A':a,'B':b,'Q':Q,'S':s,
                        'isqrt_S':z,'S_minus_isqrt_squared':s-z*z,
                        'next_square_minus_S':(z+1)**2-s,
                        'v3_q':valuation(q,3),'v3_A':valuation(a,3),
                        'v3_B':valuation(b,3),'X':X,'eta_height':height,
                        'CUBIC3_passes':b**3>3*d,
                        'HEIGHT26_sufficient_check_4X':4*X<(4*height)**26})
    out['boundary_A100.json'] = {
        'family':{'A':a,'q0':q0,'stride':stride,'parameter':'r>=0',
                  'B':'3(d-1)/100'},
        'cycle_mod400':cycle(400),
        'complete_A100_allocation_q_mod15': 0,
        'complete_A100_allocation_and_TRI4_q_mod60': 45,
        'local_square_checks':local,
        'parent_TRI4_q_mod4':1,'new_primepower_anchors_triggered':[],
        'samples':samples,
        'missing': ['integer Y^2=S (both samples fail)', 'original h,nu,P,n,j recovery',
                    'Q/P actual complete prime-power structure', 'n=c*2^s as an integer equality'],
        'scope':'All rows pass the stated weaker gates; no claim of full NC3 compatibility.'
    }
    return out


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--root', type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument('--out', type=Path)
    args = parser.parse_args()
    dest = args.out or args.root/'certificates'
    dest.mkdir(parents=True, exist_ok=True)
    certs = all_certificates(args.root)
    for name, obj in sorted(certs.items()):
        data = (json.dumps(obj, ensure_ascii=False, sort_keys=True, indent=2)+'\n').encode()
        (dest/name).write_bytes(data)
        print(f'{name}: {len(data)} bytes {hashlib.sha256(data).hexdigest()}')
    print(f'PASS: generated {len(certs)} deterministic certificates')

if __name__ == '__main__':
    main()
