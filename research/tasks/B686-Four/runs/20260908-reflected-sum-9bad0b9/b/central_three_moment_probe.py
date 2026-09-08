"""Preselected central-three contact templates, with shared moments kept free.

The finite grid interpolates polynomial dependence on T2,T4; it is not a search
over original n,d. All arithmetic is exact. No Lean or solution claims.
"""

from fractions import Fraction as Q
from math import prod
import json


def multiply(a, b, length):
    return [sum((a[j]*b[i-j] for j in range(i+1)), Q(0)) for i in range(length)]


def power(a, e, length):
    result = [Q(1)]+[Q(0)]*(length-1)
    for _ in range(e):
        result = multiply(result, a, length)
    return result


def evaluate(coefficients, argument, length):
    result = [Q(0)]*length
    for e, c in enumerate(coefficients):
        term = power(argument, e, length)
        result = [a+c*b for a, b in zip(result, term)]
    return result


def elementary_from_moments(moments):
    es = [Q(1)]
    for j in range(1, len(moments)+1):
        es.append(sum(((-1)**(a-1)*es[j-a]*moments[a-1]
                       for a in range(1, j+1)), Q(0))/j)
    return es


def local_coefficients(r, slot, T2, T4, order):
    # slot=-1,0,1 means positions c-1,c,c+1; common z-roots 3,0,-3.
    values = []
    for j in range(1, order-1):
        if j % 2:
            value = Q(0) if slot == 0 else -slot*(Q(1, r**j)+Q(1, (r+1)**j))
        else:
            common = {2: T2, 4: T4}[j]
            value = 2*common
            if slot != 0:
                value += Q(1, (r+1)**j)-Q(1, r**j)
        values.append(value)
    return [Q(0)]+elementary_from_moments(values)


def branch(r, slot, T2, T4, order):
    f = local_coefficients(r, slot, T2, T4, order)
    contact = [Q(0)]*order
    def residual():
        low = [x/3 for x in contact]
        high = list(low)
        low[1] += Q(1, 3)
        high[1] += Q(4, 3)
        flo, fhi = evaluate(f, low, order), evaluate(f, high, order)
        return [a-4*b for a, b in zip(fhi, flo)]
    for j in range(1, order):
        # The normalized residual is -contact + higher terms.
        contact[j] += residual()[j]
    assert all(x == 0 for x in residual())
    contact[0] = Q(-3*slot)
    return contact


def rank(rows):
    # Standard exact rational row elimination; same method as the historical
    # round5/main/contact_search.py, but no historical source is executed/written.
    matrix = [list(row) for row in rows]
    pivot = 0
    for column in range(len(matrix[0])):
        selected = next((j for j in range(pivot, len(matrix)) if matrix[j][column]), None)
        if selected is None:
            continue
        matrix[pivot], matrix[selected] = matrix[selected], matrix[pivot]
        factor = matrix[pivot][column]
        matrix[pivot] = [x/factor for x in matrix[pivot]]
        for j in range(pivot+1, len(matrix)):
            if matrix[j][column]:
                factor = matrix[j][column]
                matrix[j] = [x-factor*y for x, y in zip(matrix[j], matrix[pivot])]
        pivot += 1
        if pivot == len(matrix):
            break
    return pivot


def constraints(r, degree, order, T2, T4, z_degree_cap=None):
    monomials = [(a, b) for a in range(degree+1)
                 for b in range(degree-a+1)
                 if z_degree_cap is None or a <= z_degree_cap]
    rows = []
    for slot in (-1, 0, 1):
        root = branch(r, slot, T2, T4, order)
        powers = [power(root, a, order) for a in range(degree+1)]
        rows.extend([[powers[a][j-b] if j >= b else Q(0) for a, b in monomials]
                     for j in range(order)])
    return monomials, rows


def direct_product_check(r, order):
    T2 = sum((Q(1, j*j) for j in range(1, r+1)), Q(0))
    T4 = sum((Q(1, j**4) for j in range(1, r+1)), Q(0))
    k, c = 2*r+1, r+1
    for slot in (-1, 0, 1):
        i = c+slot
        direct = [Q(1)]
        for j in range(1, k+1):
            if j == i:
                continue
            nxt = [Q(0)]*(len(direct)+1)
            for a, coeff in enumerate(direct):
                nxt[a] += coeff
                nxt[a+1] += coeff/Q(j-i)
            direct = nxt
        generated = local_coefficients(r, slot, T2, T4, order)[1:]
        padded = direct+[Q(0)]*max(0, len(generated)-len(direct))
        assert generated == padded[:len(generated)]
    return T2, T4


def inspect(r, degree, order):
    # Up to d^6, coefficient dependence has degree <=2 in T2 and <=1 in T4.
    grid = [(Q(t), Q(u)) for t in (0, 1, 2) for u in (0, 1)]
    all_rows = []
    for T2, T4 in grid:
        mons, rows = constraints(r, degree, order, T2, T4)
        all_rows.extend(rows)
    joint_rank = rank(all_rows)
    assert joint_rank == len(mons)
    T2, T4 = direct_product_check(r, order)
    _, actual_rows = constraints(r, degree, order, T2, T4)
    return {"r": r, "k": 2*r+1, "D": degree, "R": order,
            "unknown_coefficients": len(mons), "moment_free_rank": joint_rank,
            "moment_free_nullity": len(mons)-joint_rank,
            "actual_moment_nullity": len(mons)-rank(actual_rows),
            "actual_T2": str(T2), "actual_T4": str(T4),
            "scope": "full coefficient space at this preselected degree, not all degrees"}


def main():
    rows = [inspect(r, D, D+1) for r, D in ((2, 3), (2, 5), (3, 5), (7, 5), (3, 6))]
    T2, T4 = direct_product_check(2, 6)
    mons, old_rows = constraints(2, 5, 6, T2, T4, z_degree_cap=4)
    old = {"k": 5, "D": 5, "R": 6, "z_degree_cap": 4,
           "nullity": len(mons)-rank(old_rows),
           "note": "historical quotient excludes the degree-5 original equation"}
    # Boundary k=3: the original equation itself supplies the cubic identity.
    mons, boundary_rows = constraints(1, 3, 4, Q(1), Q(1))
    boundary = {"k": 3, "D": 3, "R": 4,
                "actual_nullity": len(mons)-rank(boundary_rows),
                "note": "nonzero polynomial may vanish exactly on original solutions"}
    # A single genuine original-product 5-adic branch: k=11,n=0,m=3+5u.
    # This tests the claim that long-moment denominators become automatically
    # integral on local original solutions; it does not test every auxiliary.
    k, p, seed = 11, 5, 3
    factors = [seed+j for j in range(1, k+1)]
    target = 4*prod(range(1, k+1))
    assert sum(a % p == 0 for a in factors) == 2
    def normalized(u):
        return prod((u+a//p) if a % p == 0 else (p*u+a) for a in factors)-target//(p*p)
    derivative = 3*prod(a for a in factors if a % p) % p
    assert derivative == 2
    u, modulus = 0, p
    assert normalized(u) % modulus == 0
    for _ in range(4):
        digit = (-(normalized(u)//modulus)*pow(derivative, -1, p)) % p
        u += modulus*digit
        modulus *= p
        assert normalized(u) % modulus == 0
    m, d = seed+p*u, seed+p*u
    z = 18-d
    T2 = sum((Q(1, j*j) for j in range(1, 6)), Q(0))
    eta = Q(1, 5)+Q(1, 6)
    Gc = z*(z*z-9)-8*eta*z*d*d-20*T2*d**3
    assert Gc.denominator % 5 == 0 and Gc.denominator % 25 != 0
    assert Gc.numerator % 5 != 0
    residual = prod(m+j for j in range(1, k+1))-target
    assert residual % (25*modulus) == 0 and residual != 0
    denominator_model = {"k": k, "n": 0, "p": p, "m": m, "d": d,
                         "original_residual_modulus": 25*modulus,
                         "T2": str(T2), "center_corrected_cubic": str(Gc),
                         "v5_of_center_corrected_cubic": -1,
                         "scope": "extends to an exact 5-adic original-product root, not an integer solution"}
    print(json.dumps({"evidence": "exact moment interpolation grids and product coefficient checks",
                      "templates": rows, "historical_comparison": old,
                      "boundary": boundary,
                      "denominator_countermodel": denominator_model}, indent=2))


if __name__ == "__main__":
    main()
