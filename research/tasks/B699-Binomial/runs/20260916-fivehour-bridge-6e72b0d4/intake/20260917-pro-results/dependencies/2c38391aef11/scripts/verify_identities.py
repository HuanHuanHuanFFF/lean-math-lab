#!/usr/bin/env python3
"""Optional exact symbolic verification. Not a dependency of the standard-library checker."""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import sympy as sp


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    A, q, x = sp.symbols('A q x')
    checks = []

    def check(name: str, expression: sp.Expr) -> None:
        if sp.expand(expression) != 0:
            raise AssertionError(name)
        checks.append(name)

    F1 = q * (A - q) * (A + q)
    check('first-resultant-magnitude', 3*A**3 - 8*F1 - (A-2*q)*(3*A**2-2*A*q-4*q**2))
    F2 = q * (A-q) * (2*A-q)
    check('second-resultant-magnitude', 4*A**6-27*F2**2-(A*A-3*(A-q)**2)**2*(4*A*A-3*(A-q)**2))
    expected = {
        ('j', 1): (q*q-7)*x**3+(3*q*q-4*q+7)*x**2+(3*q*q-15*q+18)*x+q*q-11*q+4,
        ('j', -1): (q*q-567)*x**3+(-3*q*q+36*q-567)*x**2+(3*q*q-135*q+1458)*x-q*q+99*q-324,
        ('k', 1): (q*q-14*q+42)*x**3+(3*q*q-46*q+182)*x**2+(3*q*q-57*q+270)*x+q*q-25*q+130,
        ('k', -1): (q*q-126*q+3402)*x**3+(-3*q*q+414*q-14742)*x**2+(3*q*q-513*q+21870)*x-q*q+225*q-10530,
    }
    for target in ('j', 'k'):
        for eps, d in ((1, 1), (-1, 3)):
            shift = 2 if target == 'j' else 16
            h = (q*(x+eps)-shift*eps*d*d)/(7*d)
            rhs = d*d*(x-eps)*(x*x-2)
            if target == 'j':
                lhs = 7*h*((x+eps)*h-d)
            else:
                lhs = 7*(d*x*x-(x+eps)*h)*(d*(x-eps)-h)
            check(f'cubic-substitution-{target}-{eps}', 7*d*d*(lhs-rhs)-expected[target,eps])
    check('quotient-bound-j-minus', 64*(x-1)**2-(sp.Rational(63,2)*x*x-18*(x-1))-(sp.Rational(65,2)*x*x-110*x+46))
    check('quotient-bound-k-minus', 64*(x-1)**2-9*(7*x*x-16*x+16)-(x-4)*(x+20))
    result = {'status': 'PASS_EXACT_IDENTITIES', 'sympy_version': sp.__version__, 'identities': checks,
              'scope': 'Exact algebra only; no infinite theorem, source-window premise or publication completeness is delegated to SymPy.'}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'identities':len(checks),'sympy_version':sp.__version__}))

if __name__ == '__main__':
    main()
