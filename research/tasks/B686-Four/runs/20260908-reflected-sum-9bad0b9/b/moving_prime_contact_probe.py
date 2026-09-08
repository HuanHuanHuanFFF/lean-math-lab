"""Exact minimal tests of distance-prime square/cube contact.

Local roots are constructed by unique digit lifting; there is no (n,m) scan.
They are local certificates, not asserted positive integer solutions of B686.
"""

from math import prod
import json


def valuation(n, p):
    assert n != 0
    n = abs(n)
    result = 0
    while n % p == 0:
        n //= p
        result += 1
    return result


def product_at_root(k, i, z):
    return prod(z + j - i for j in range(1, k + 1))


def lifted_contact(k, i, p, a):
    assert p > max(k, 3)
    distance = p**a
    c0 = prod(j - i for j in range(1, k + 1) if j != i)
    derivative_unit = (-3*c0) % p
    assert derivative_unit != 0
    def equation(z):
        return product_at_root(k, i, z + distance) - 4*product_at_root(k, i, z)
    z, modulus = 0, p
    depth = 5*a + 2
    assert equation(z) % p == 0
    for _ in range(1, depth):
        digit = (-(equation(z) // modulus) * pow(derivative_unit, -1, p)) % p
        z += digit * modulus
        modulus *= p
        assert equation(z) % modulus == 0
    contact = 3*z - distance
    assert contact != 0
    contact_v = valuation(contact, p)
    central = (k % 2 == 1 and 2*i == k+1)
    required = (3 if central else 2)*a
    assert valuation(z, p) == a
    assert contact_v >= required
    return {"k": k, "i": i, "p": p, "a": a, "depth": depth,
            "z": z, "contact_v": contact_v, "required_v": required,
            "central": central}


def main():
    examples = [
        lifted_contact(5, 1, 7, 1),
        lifted_contact(5, 3, 7, 1),
        lifted_contact(5, 1, 7, 2),
        lifted_contact(5, 3, 7, 2),
        lifted_contact(3, 2, 11, 1),
        lifted_contact(9, 5, 11, 1),
    ]
    assert examples[0]["contact_v"] == 2
    assert examples[1]["contact_v"] == 3
    assert examples[2]["contact_v"] == 4
    assert examples[3]["contact_v"] == 6

    # Independent exact checks against known legal solutions of other multipliers.
    controls = []
    for k, n, m, multiplier, p, i in ((3, 11, 25, 9, 7, 3), (2, 13, 19, 2, 3, 2)):
        lower, upper = prod(n+j for j in range(1, k+1)), prod(m+j for j in range(1, k+1))
        assert upper == multiplier*lower and m >= n+k
        d, z = m-n, n+i
        a = valuation(d, p)
        contact = (multiplier-1)*z-d
        assert valuation(contact, p) >= 2*a
        controls.append({"multiplier": multiplier, "k": k, "n": n, "m": m,
                         "p": p, "i": i, "contact": contact,
                         "contact_v": valuation(contact, p)})

    print(json.dumps({
        "evidence": "exact integer local-root lifts and original-definition controls",
        "local_examples": examples,
        "noncentral_cube_as_p_adic_local_consequence": "false: first example extends to an exact p-adic root with v=2, not 3; not an integer B686 counterexample",
        "central_cube_is_sharp_in_selected_examples": True,
        "other_multiplier_controls": controls,
    }, indent=2))


if __name__ == "__main__":
    main()
