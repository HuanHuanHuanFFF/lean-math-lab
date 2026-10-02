"""Bounded 64-node probe; no scan of every y and no kernel acceptance claim."""
from pathlib import Path
from time import perf_counter
from datetime import datetime, timezone
import hashlib, json, math, re

START = perf_counter()
ROOT = Path(__file__).resolve().parents[8]
OUT = Path(__file__).resolve().parent
PLAN = ROOT / 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-onehour/finite/old-closure-byte-plan.json'
records = json.loads(PLAN.read_text(encoding='utf-8-sig'))
pool, used = [], []
for rec in records:
    rel = rec['source'].replace('\\', '/')
    if not re.search(r'/extension/primeChain/blocks/Block\d{3}\.lean$', rel):
        continue
    raw = (ROOT / rel).read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    if len(raw) != rec['bytes'] or digest != rec['sha256']:
        raise ValueError('Old literal byte mismatch: ' + rel)
    values = []
    for part in re.findall(r'def tail\d+ : List Nat := \[([^\]]+)\]', raw.decode('utf-8')):
        values.extend(int(x.strip()) for x in part.split(','))
    pool.extend(values)
    if any(9990000 <= x <= 10200000 for x in values):
        used.append({'path': rel, 'bytes': len(raw), 'sha256': digest})
pool = sorted(set(pool))
nodes = [max(p for p in pool if p <= 10000000)]
for _ in range(63):
    nodes.append(max(p for p in pool if nodes[-1] < p <= nodes[-1] + 2442))

def trial_prime(n):
    if n < 2 or n % 2 == 0:
        return n == 2
    return all(n % d for d in range(3, math.isqrt(n) + 1, 2))

prime_checks = [trial_prime(p) for p in nodes]
assert all(prime_checks)
assert all(a < b <= a + 2442 for a, b in zip(nodes, nodes[1:]))
upper = nodes[-1] - 2442
core = 'research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore'
lines = ['module', 'public import ' + core, 'public import Mathlib.Tactic.NormNum.Prime',
         'set_option autoImplicit false', 'set_option relaxedAutoImplicit false',
         'set_option Elab.async false', 'set_option maxRecDepth 8192',
         'set_option maxHeartbeats 4000000', '@[expose] public section',
         'namespace B699GapSlice20261003']
lines += [f'theorem prime{k} : Nat.Prime {p} := by norm_num' for k, p in enumerate(nodes)]
lines += [f'theorem chain : B699Finite20261002.PrimeChain 2442 {nodes[0]} {nodes[-1]} := by']
for k in range(63):
    lines += [f'  refine .step (q := {nodes[k+1]}) prime{k} (by decide) (by decide) ?_']
lines += ['  exact .singleton prime63', '',
          f'theorem initial_slice {{y : Nat}} (hy : 10000000 ≤ y) (hyhi : y < {upper}) :',
          '    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by',
          '  obtain ⟨p, hp, hpn, hnp⟩ := chain.near_top (n := y + 2442) (by omega) (by omega)',
          '  have hyp : y < p := by omega',
          '  have hwidth : p - y ≤ 2442 := by omega',
          '  refine ⟨p, hp, hyp, ?_⟩',
          '  exact Nat.le_trans (Nat.mul_le_mul_left 4095 hwidth) (by omega)',
          'end B699GapSlice20261003', '']
roots = [f'B699GapSlice20261003.prime{k}' for k in range(64)] + ['B699GapSlice20261003.chain', 'B699GapSlice20261003.initial_slice']
lines += ['#print axioms ' + r for r in roots]
source = ('\n'.join(lines) + '\n').encode()
(OUT / 'Pilot64.lean').write_bytes(source)
result = {'utc': datetime.now(timezone.utc).isoformat(), 'elapsedSeconds': perf_counter() - START,
          'kind': 'bounded-Python-trial-division-and-edge-check-not-Lean',
          'primeCount': len(nodes), 'all64PassedTrialDivision': all(prime_checks),
          'fixedGap': 2442, 'denominator': 4095, 'scaledFixedGap': 4095 * 2442,
          'firstPrime': nodes[0], 'lastPrime': nodes[-1], 'lowerYInclusive': 10000000,
          'upperYExclusive': upper, 'remainingInitialTargetUpperExclusive': 122568684,
          'nodes': nodes, 'selectedSourceBlocks': used, 'sourceSha256': hashlib.sha256(source).hexdigest(),
          'sourceBytes': len(source), 'roots': roots, 'compilerRun': False,
          'kernelAccepted': False, 'independentSemanticAccepted': False}
(OUT / 'pilot64-result.json').write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
print(json.dumps({k: v for k, v in result.items() if k not in ('nodes', 'selectedSourceBlocks', 'roots')}))
