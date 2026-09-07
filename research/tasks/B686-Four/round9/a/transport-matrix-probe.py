"""Exact tests for transport-square congruences and adjacent rectangle elimination.

Run: python3 research/tasks/B686-Four/round9/a/transport-matrix-probe.py
Only standard-library integer arithmetic; no writes or prime sampling.
"""

from math import comb, factorial, gcd, isqrt, prod
import json


def factor(n):
    out = {}
    p = 2
    while p*p <= n:
        while n % p == 0:
            out[p] = out.get(p, 0)+1
            n //= p
        p = 3 if p == 2 else p+2
    if n > 1:
        out[n] = out.get(n, 0)+1
    return out


def squareclass(n):
    return prod(p for p, v in factor(n).items() if v % 2)


def check_control(c, k, n, m):
    lower = [n+i for i in range(1, k+1)]
    upper = [m+j for j in range(1, k+1)]
    assert prod(upper) == c*prod(lower) and m >= n+k
    assert all(y < x < c*y for x in upper for y in lower)
    low_factors, high_factors = list(map(factor, lower)), list(map(factor, upper))
    matrix = [[1]*k for _ in range(k)]
    for i, factors in enumerate(low_factors):
        for p, power in factors.items():
            if p > k:
                destinations = [j for j, fs in enumerate(high_factors) if p in fs]
                assert len(destinations) == 1
                j = destinations[0]
                assert high_factors[j][p] == power
                matrix[i][j] *= p**power
    a = [lower[i]//prod(matrix[i]) for i in range(k)]
    b = [upper[j]//prod(matrix[i][j] for i in range(k)) for j in range(k)]
    assert all(all(p <= k for p in factor(t)) for t in a+b)
    assert prod(b) == c*prod(a)
    labels = [r for row in matrix for r in row if r > 1]
    assert all(gcd(x, y) == 1 for h, x in enumerate(labels) for y in labels[h+1:])

    edge_checks = []
    for i in range(k):
        for j in range(k):
            r = matrix[i][j]
            assert (m-n+j-i) % r == 0
            if r == 1:
                continue
            sign = -1 if (i-j) % 2 else 1
            h = comb(k-1, i)*upper[j]-c*sign*comb(k-1, j)*lower[i]
            assert h % (r*r) == 0
            if i == j:
                assert 0 < c*lower[i]-upper[j] and r*r <= c*lower[i]-upper[j]
            if j == i+1:
                adjacent = (i+1)*upper[j]+c*(k-i-1)*lower[i]
                assert adjacent > 0 and adjacent % (r*r) == 0
            if j == i-1:
                adjacent = (k-i)*upper[j]+c*i*lower[i]
                assert adjacent > 0 and adjacent % (r*r) == 0
            fi = (-1 if i % 2 else 1)*factorial(i)*factorial(k-1-i)
            fj = (-1 if j % 2 else 1)*factorial(j)*factorial(k-1-j)
            # Check the Taylor residue against the original direct products.
            assert (prod(lower)-fi*lower[i]) % (r*r) == 0
            assert (prod(upper)-fj*upper[j]) % (r*r) == 0
            edge_checks.append({
                "i": i+1, "j": j+1, "R": r, "H": h,
                "H_over_R_squared": h//(r*r),
            })

    rectangles = []
    s_grid = {}
    for i in range(k-1):
        for j in range(k-1):
            x, y = matrix[i][j], matrix[i][j+1]
            z, w = matrix[i+1][j], matrix[i+1][j+1]
            aa = a[i]*prod(matrix[i][h] for h in range(k) if h not in (j, j+1))
            ap = a[i+1]*prod(matrix[i+1][h] for h in range(k) if h not in (j, j+1))
            bb = b[j]*prod(matrix[h][j] for h in range(k) if h not in (i, i+1))
            bp = b[j+1]*prod(matrix[h][j+1] for h in range(k) if h not in (i, i+1))
            assert ap*z*w-aa*x*y == 1
            assert bp*y*w-bb*x*z == 1
            q = ap*bb*z*z-aa*bp*y*y
            assert q > 0
            assert x*q == bp*y-ap*z
            assert x*w*q == m-n+j-i
            t = aa*ap*bb*bp
            assert t*(x*y*z*w)**2 == lower[i]*lower[i+1]*upper[j]*upper[j+1]
            comp = prod(lower[h] for h in range(k) if h not in (i, i+1))
            comp *= prod(upper[h] for h in range(k) if h not in (j, j+1))
            assert prod(lower) % (x*y*z*w) == 0
            assert t*comp == c*(prod(lower)//(x*y*z*w))**2
            s_grid[i, j] = x*w*q
            rectangles.append({
                "i": i+1, "j": j+1, "effective_coefficients": [aa, ap, bb, bp],
                "inner_edges": [x, y, z, w], "Q": q, "xwQ": x*w*q,
                "T": t, "T_squareclass": squareclass(t),
                "T_is_square": isqrt(t)**2 == t,
            })
    for (i, j), value in s_grid.items():
        if (i+1, j) in s_grid:
            assert s_grid[i+1, j] == value-1
        if (i, j+1) in s_grid:
            assert s_grid[i, j+1] == value+1
    return {
        "multiplier": c, "k": k, "n": n, "m": m,
        "lower": lower, "upper": upper, "R": matrix, "a": a, "b": b,
        "edges": edge_checks, "rectangles": rectangles,
    }


def main():
    controls = [check_control(2, 2, 83, 118), check_control(9, 3, 11, 25)]
    # Prime-power/composite edge check, obtained by the already known Pell recurrence.
    powers_control = check_control(2, 2, 2869, 4058)
    assert 99 in [r for row in powers_control["R"] for r in row]
    assert all(not rect["T_is_square"] for rect in controls[1]["rectangles"])
    assert controls[1]["edges"][0]["H"] == 13**2
    assert controls[1]["edges"][0]["H"] % (13**3) != 0

    # A relaxed multiplier-4 transport record: rows are consecutive, columns are not.
    # It passes all edge-difference divisibilities, pairwise coprimality, smoothness,
    # and product(b)=4 product(a), so the missing simultaneous-column condition matters.
    matrix, a, b, nominal_d = [[7, 3], [17, 5]], [4, 1], [2, 8], 35
    lower = [a[i]*prod(matrix[i]) for i in range(2)]
    upper = [b[j]*prod(matrix[i][j] for i in range(2)) for j in range(2)]
    assert lower == [84, 85] and upper == [238, 120]
    assert prod(b) == 4*prod(a)
    assert all(all(p <= 2 for p in factor(t)) for t in a+b)
    assert all((nominal_d+j-i) % matrix[i][j] == 0 for i in range(2) for j in range(2))
    q = a[1]*b[0]*matrix[1][0]**2-a[0]*b[1]*matrix[0][1]**2
    assert q == 290 and matrix[0][0]*matrix[1][1]*q != nominal_d

    # A stronger relaxed record passes all local unit congruences as well,
    # but still has no single m realizing its upper columns.
    r3, a3, b3, nominal_d3 = [[1, 1, 1], [13, 1, 1], [1, 1, 7]], [12, 1, 2], [24, 4, 1], 14
    lower3 = [a3[i]*prod(r3[i]) for i in range(3)]
    upper3 = [b3[j]*prod(r3[i][j] for i in range(3)) for j in range(3)]
    assert lower3 == [12, 13, 14] and upper3 == [312, 4, 7]
    assert prod(upper3) == 4*prod(lower3) and prod(b3) == 4*prod(a3)
    assert all(all(p <= 3 for p in factor(t)) for t in a3+b3)
    for i in range(3):
        for j in range(3):
            r = r3[i][j]
            assert (nominal_d3+j-i) % r == 0
            sign = -1 if (i-j) % 2 else 1
            h = comb(2, i)*upper3[j]-4*sign*comb(2, j)*lower3[i]
            assert h % (r*r) == 0
    assert upper3[1]-upper3[0] != 1
    print(json.dumps({
        "legal_controls": controls, "prime_power_control": powers_control,
        "relaxed_not_a_solution": {
            "R": matrix, "a": a, "b": b, "lower": lower, "upper": upper,
            "nominal_d": nominal_d, "Q": q, "required_Q": 1,
            "failure": "upper columns do not form a consecutive block",
        },
        "relaxed_passes_local_units_not_columns": {
            "R": r3, "a": a3, "b": b3, "lower": lower3, "upper": upper3,
            "nominal_d": nominal_d3, "local_unit_congruences": True,
            "is_B686_solution": False, "failure": "no common upper-block starting point m",
        },
    }, sort_keys=True))
    print("PASS: direct products, full prime powers, square-modulus transport, coupled rectangles, and counterexample")


if __name__ == "__main__":
    main()
