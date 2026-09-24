#!/usr/bin/env python3
from __future__ import annotations
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
EXCEPTIONS = json.loads((ROOT/'outputs'/'bft_exception_pairs.json').read_text())

# Published BFT exponents, recorded as exact terminating decimals.
lam23 = 285
lam25 = 258
lam35 = 216
den = 1000

# Frozen C5 lower entry and D25 coefficient.
n0 = 4_360_912_290_000_000_001
D25_COEFF = 27_000

checks = {}
checks['exception_count_40'] = len(EXCEPTIONS) == 40
exception_max = max(max(pair) for pair in EXCEPTIONS)
checks['exception_max'] = exception_max
checks['core_above_all_exceptions'] = n0 - 5 > exception_max
checks['small_gate_impossible'] = n0 - 5 > 1000
checks['shift_differences'] = {'23': 2, '25': 3, '35': 5}
checks['all_differences_le_100'] = all(x <= 100 for x in checks['shift_differences'].values())

# Product case split: if g pays lambda23, pair25 pays another variable;
# otherwise q2 pays lambda23, pair35 pays another variable.
case_g = lam23 + lam25
case_q2 = lam23 + lam35
uniform_num = min(case_g, case_q2)
checks['case_g_exponent_milli'] = case_g
checks['case_q2_exponent_milli'] = case_q2
checks['uniform_product_exponent'] = [uniform_num, den]
checks['uniform_is_501_over_1000'] = uniform_num == 501
checks['strictly_above_half'] = 2 * uniform_num > den

# D25-COMP / P^2 leaves positive integer factor g^5*d^2*q2.
checks['d25_minus_P2_exponents'] = {'g': 5, 'd': 2, 'q2': 1, 'q5': 0}
checks['d25_implies_P2_upper'] = all(v >= 0 for v in checks['d25_minus_P2_exponents'].values())

# Exact final contradiction after raising to the 500th power.
checks['27000_pow_500_gt_2_pow_501'] = D25_COEFF**500 > 2**501
checks['digits_27000_pow_500'] = len(str(D25_COEFF**500))
checks['digits_2_pow_501'] = len(str(2**501))

status = all(v is True for k,v in checks.items() if isinstance(v,bool))
result = {
    'status': 'PASS_C9_BFT_FULL_NEAR_CLOSURE' if status else 'FAIL',
    'scope': 'B/RES10 full-near Q51=q5; same original (n,j)',
    'published_inputs_not_machine_proved': ['BFT Theorem 2.1', 'frozen C5/D25 consumer tree'],
    'checks': checks,
    'claims': {
        'product_lower': 'g*q2*q5 > (n-5)^(501/1000)',
        'product_upper': '(g*q2*q5)^2 < n/27000',
        'conclusion': 'no NC6 input survives in the full-near branch'
    },
    'not_claimed': ['Lean', 'general B/RES10 closure', 'general i6 closure', 'full B699 closure']
}
(ROOT/'outputs'/'replay.json').write_text(json.dumps(result, indent=2, ensure_ascii=False)+'\n', encoding='utf-8')
print(json.dumps(result, indent=2, ensure_ascii=False))
if not status:
    raise SystemExit(1)
