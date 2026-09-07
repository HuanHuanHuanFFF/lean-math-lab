"""Exact supplemental computations; the geometry is not formalized here."""
import json
from pathlib import Path
from prym_probe import powmod, irreducible

ROOT = Path(__file__).resolve().parent
F = [14641, 10648, 3993, 1474, 523, 134, 33, 8, 1]
P = 7
DS = [2, 3, 4, 5, 6, 8, 10, 12, 15, 16, 20, 24, 30]


def main():
    assert irreducible(F, P)
    eta = powmod([0, 1], 2400, F, P)
    eta2 = powmod(eta, 2, F, P)
    eta2402 = powmod(eta, 2402, F, P)
    assert eta2 != [1] and eta2402 == [1]
    assert all(1201 % d for d in range(2, 35))
    rows = []
    for d in DS:
        a = powmod([0, 1], d, F, P)
        orbit, b = [], a
        for r in range(1, 9):
            b = powmod(b, 7, F, P)
            orbit.append(b)
            if b == a:
                break
        assert len(orbit) == 8
        rows.append(dict(d=d, alpha_power=a, orbit=orbit, orbit_length=8))
    data = dict(eta=eta, eta_square=eta2, eta_power_2402=eta2402,
                prime_1201=True, tested_power_orbits=rows,
                supporting_Lean_module='FrobeniusPowerObstruction.lean',
                geometric_simplicity_formalized=False)
    (ROOT / 'prym-order-probe.json').write_text(json.dumps(data, indent=2)+'\n')
    print(json.dumps({k:v for k,v in data.items() if k != 'tested_power_orbits'}))
    print('All 13 required power orbits have length 8.')


if __name__ == '__main__':
    main()
