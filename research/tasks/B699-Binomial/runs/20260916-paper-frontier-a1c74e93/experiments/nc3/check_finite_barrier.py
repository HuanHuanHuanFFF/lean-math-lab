"""Exact examples for FINITE_TEST_BARRIER; no large integers in tool output."""
from __future__ import annotations

import hashlib
import json
import math
from datetime import datetime, timezone
from pathlib import Path
import time


def prime_powers(bound: int) -> list[int]:
    out = []
    for p in range(3, bound + 1, 2):
        if any(p % q == 0 for q in range(2, math.isqrt(p) + 1)):
            continue
        power = p
        while power <= bound:
            out.append(power)
            power *= p
    return sorted(out)


def factor_small(n: int) -> dict[int, int]:
    out = {}
    p = 2
    while p * p <= n:
        while n % p == 0:
            out[p] = out.get(p, 0) + 1
            n //= p
        p += 1
    if n > 1:
        out[n] = out.get(n, 0) + 1
    return out


def residual(x: int, u: int, h: int) -> int:
    d = x - 1
    return 4 * u * (25 * u - 3 * d) * (25 * u - 6 * d) - (
        h * d - 9 * u) * (x * x - 2)


def f(u: int) -> int:
    return 1250 * u ** 3 + 450 * u ** 2 + 27 * u - 1


def one(bound: int) -> dict:
    powers = prime_powers(bound)
    M = 2 ** 12 * 3 ** 2 * 5
    K = 12
    # A smaller Q than the proof's product is valid: it still contains
    # 9, M_odd, and 3r for every requested odd prime power r.
    Q = 45 * math.lcm(45, *powers)
    assert Q % 9 == 0 and Q % (M // 2 ** K) == 0
    assert all(Q % (3 * r) == 0 for r in powers)
    root = 1
    for a in range(1, K):
        if f(root) % 2 ** (a + 1):
            root += 2 ** a
    assert f(root) % 2 ** K == 0
    two = 2 ** K
    u0 = root + two * ((pow(2, -1, Q) - root) * pow(two, -1, Q) % Q)
    period_u = two * Q
    period_s = math.lcm(6, *((p - 1) * p ** (e - 1)
                             for p, e in factor_small(Q).items()))
    s = period_s
    while True:
        x = 5 * 2 ** s
        n = x * x
        # Strict ratio interval 3/10 < j/n < 2/5.
        lower = 9 * n // (250 * (x + 1)) + 1
        upper = (6 * n - 1) // (125 * (x + 1))
        first = u0 + max(0, (lower - u0 + period_u - 1) // period_u) * period_u
        if s >= K and first + 6 * period_u <= upper and 27 * n > 128 * 25 ** 4:
            break
        s += period_s
    candidates = [first + a * period_u for a in range(7)]
    u = next(u for u in candidates if residual(x, u, 1) and residual(x, u, 2))
    j = 25 * u * (x + 1) // 3
    assert 25 * u * (x + 1) % 3 == 0
    assert 4 <= j < n // 2
    assert 10 * j > 3 * n and 5 * j < 2 * n
    assert math.gcd(n, j) == 25
    assert n // 25 == 2 ** (2 * s)
    assert (x + 1) % 3 == 0 and (x + 1) % 9 != 0
    assert (x + 1) // math.gcd(x + 1, j) == 3
    assert all(j % r == n % r for r in powers)
    assert residual(x, u, 1) % M == 0
    assert residual(x, u, 1) != 0 and residual(x, u, 2) != 0
    assert 25 ** 4 < 3 * n
    assert 128 * 25 ** 4 * (n - 1) ** 3 < 27 * n ** 4
    W1 = 3 * j * (j - 1) % (n - 1) == 0
    W2 = 6 * j * (j - 1) * (j - 2) % (n - 2) == 0
    assert not (W1 and W2)
    return {
        'all_odd_prime_powers_at_most': bound,
        'tested_prime_powers': powers,
        'M': M, 'Q': Q, 's': s,
        'n_bits': n.bit_length(), 'j_bits': j.bit_length(),
        'ratio_interval': ['3/10', '2/5'],
        'ratio_floor_millionths': 1000000 * j // n,
        'gcd': 25, 'alpha_is_2_power': True, 'normalized_loss': 3,
        'all_requested_carry_indicators_zero': True,
        'F1_mod_M_zero': True, 'F1_exact_zero': False, 'F2_exact_zero': False,
        'G4_passes': True, 'OLD128_passes': True,
        'actual_weak_W1': W1, 'actual_weak_W2': W2,
        'actual_NC3_claim': False,
    }


def main() -> None:
    began = time.perf_counter()
    records = [one(b) for b in (7, 13, 19, 23)]
    result = {
        'status': 'PASS', 'utc': datetime.now(timezone.utc).isoformat(),
        'evidence_type': 'exact finite examples of a proved local-test limitation',
        'script_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        'records': records,
        'elapsed_seconds': round(time.perf_counter() - began, 6),
    }
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    path = Path(__file__).with_name(f'finite-barrier-{stamp}.json')
    with path.open('x', encoding='utf-8', newline='\n') as stream:
        json.dump(result, stream, ensure_ascii=False, indent=2)
        stream.write('\n')
    print(json.dumps(result, ensure_ascii=False, separators=(',', ':')))
    print('saved:', path.name)


if __name__ == '__main__':
    main()
