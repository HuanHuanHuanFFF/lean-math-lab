"""One nonconsecutive, exact multiplier-4 model. This is not a B686 witness."""

import json
import math
from pathlib import Path


def value(poly, t):
    return poly[0] * t * t + poly[1] * t + poly[2]


def positive_for_t_ge_one(poly):
    # Expand at t=1: a*(t-1)^2+(2a+b)*(t-1)+(a+b+c).
    a, b, c = poly
    return a >= 0 and 2*a+b >= 0 and a+b+c > 0


def difference(a, b, scale_a=1, scale_b=1):
    return [scale_a*x-scale_b*y for x, y in zip(a, b)]


def main():
    k = 6
    low_small = [1, 2, 3, 4, 1, 6]
    upper_small = [1, 4, 3, 2, 1, 24]
    q_coeff = [10000, 12599, 7937, 10001, 25199, 31748]
    target = 10_000_000_000
    p_coeff = [(target + low_small[i]*q_coeff[i]//2)//(low_small[i]*q_coeff[i])
               for i in range(k)]
    coefficients = p_coeff + q_coeff
    assert len(set(coefficients)) == 2*k
    modulus = 6
    for i, a in enumerate(coefficients):
        for b in coefficients[:i]:
            modulus = math.lcm(modulus, abs(a-b))
    p_labels = [a*modulus+1 for a in p_coeff]
    q_labels = [a*modulus+1 for a in q_coeff]
    labels = p_labels+q_labels
    assert all(math.gcd(a, b) == 1 for i, a in enumerate(labels) for b in labels[:i])
    assert all(a % 6 == 1 for a in labels)
    low = [low_small[i]*p_labels[i]*q_labels[i] for i in range(k)]
    upper = [upper_small[i]*p_labels[i]*q_labels[(i+1) % k] for i in range(k)]
    assert math.prod(upper) == 4*math.prod(low)
    assert min(upper) > max(low)
    # Polynomials give the same family with modulus replaced by modulus*t.
    low_poly = [[low_small[i]*p_coeff[i]*q_coeff[i]*modulus**2,
                 low_small[i]*(p_coeff[i]+q_coeff[i])*modulus, low_small[i]]
                for i in range(k)]
    upper_poly = [[upper_small[i]*p_coeff[i]*q_coeff[(i+1) % k]*modulus**2,
                   upper_small[i]*(p_coeff[i]+q_coeff[(i+1) % k])*modulus,
                   upper_small[i]] for i in range(k)]
    for group in (low_poly, upper_poly):
        assert all(positive_for_t_ge_one(difference(b, a, 1001, 1000))
                   for a in group for b in group)
    assert all(positive_for_t_ge_one(difference(u, l))
               for u in upper_poly for l in low_poly)
    assert all(value(poly, 1) == n for poly, n in zip(low_poly, low))
    assert all(value(poly, 1) == n for poly, n in zip(upper_poly, upper))
    gcd_matrix = [[math.gcd(a, b) for b in upper] for a in low]
    core_edges = [(i, j) for i in range(k) for j in range(k)
                  if math.gcd(low_small[i], upper_small[j]) > 1]
    label_edges = [(i, j) for i in range(k) for j in range(k)
                   if j == i or (j+1) % k == i]
    graph_edges = [(i, j) for i in range(k) for j in range(k)
                   if gcd_matrix[i][j] > 1]
    assert set(graph_edges) == set(core_edges) | set(label_edges)
    def valuation(a, p):
        result = 0
        while a % p == 0:
            result += 1
            a //= p
        return result
    low_vals = {str(p): [valuation(a, p) for a in low] for p in (2, 3)}
    upper_vals = {str(p): [valuation(a, p) for a in upper] for p in (2, 3)}
    assert low_vals == {str(p): [valuation(a, p) for a in range(1, 7)] for p in (2, 3)}
    assert upper_vals == {str(p): [valuation(a, p) for a in range(19, 25)] for p in (2, 3)}
    assert max(low)-min(low) > k and max(upper)-min(upper) > k
    result = {
        "not_a_b686_witness": True,
        "reason": "Both lists have huge gaps and are not consecutive intervals.",
        "k": k, "parameter_range": "every integer t>=1",
        "p_coefficients": p_coeff, "q_coefficients": q_coeff,
        "small_lower": low_small, "small_upper": upper_small,
        "modulus": modulus, "sample_t": 1,
        "lower_values": low, "upper_values": upper,
        "exact_multiplier": 4,
        "all_t_relative_width_bound": "max/min < 1001/1000 in each list",
        "all_t_upper_above_lower": True,
        "low_2_3_valuations": low_vals, "upper_2_3_valuations": upper_vals,
        "core_edges_count": len(core_edges), "label_edges_count": len(label_edges),
        "new_edges_outside_core_count": len(set(label_edges)-set(core_edges)),
        "full_graph_edges_count": len(graph_edges),
        "prime_count_claim": "None: coprime labels may be composite.",
        "gcd_matrix": gcd_matrix,
    }
    path = Path(__file__).with_name("cyclic-transport-model.json")
    path.write_text(json.dumps(result, indent=2)+"\n", encoding="utf-8")
    print(json.dumps({key: result[key] for key in
                     ("not_a_b686_witness", "k", "parameter_range", "p_coefficients",
                      "q_coefficients", "exact_multiplier", "all_t_relative_width_bound",
                      "core_edges_count", "label_edges_count", "new_edges_outside_core_count",
                      "full_graph_edges_count", "low_2_3_valuations", "upper_2_3_valuations")}, indent=2))


if __name__ == "__main__":
    main()
