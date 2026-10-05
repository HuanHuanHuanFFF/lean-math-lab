"""Generate bounded, actual-prime certificate candidates after an accepted cost gate.

Run on the controlled CI worker. Python filtering is never Lean acceptance.
Each block independently imports only ChainCore and NormNum.Prime. A separate
prefix consumer joins proved segment statements with exact contiguous endpoints.
"""
from __future__ import annotations
import argparse, bisect, hashlib, json, math, re, time
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[7]
OWN = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261003-gap-finite-fortymin/supply'
MOD = 'research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261003-gap-finite-fortymin».supply.generated'
CORE = 'research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore'
PILOT = 'research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261003-gap-halfhour».supply.Pilot64'
PILOT_SOURCE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261003-gap-halfhour/supply/Pilot64.lean'
PILOT_SHA = 'd8df5d3bc6063fe4f7b847917b503fe038dda904ab9cd44706ec47bf8794e048'
PLAN = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-onehour/finite/old-closure-byte-plan.json'
D, START, PILOT_END, PILOT_LAST, UPPER, POOL_MAX = 4095, 10000000, 10146761, 10149203, 122568684, 20000093
MAX_CANDIDATE = UPPER + 2 * (UPPER // D) + 2

def digest(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()

def utc() -> str:
    return datetime.now(timezone.utc).isoformat()

def header(imports: list[str]) -> list[str]:
    return ['module', *('public import ' + x for x in imports),
            'set_option autoImplicit false', 'set_option relaxedAutoImplicit false',
            'set_option Elab.async false', 'set_option maxRecDepth 8192',
            'set_option maxHeartbeats 4000000', '@[expose] public section']

def write_immutable(name: str, lines: list[str], roots: list[str]) -> dict:
    path = HERE / 'generated' / (name + '.lean')
    raw = ('\n'.join(lines) + '\n').encode('utf-8')
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.exists() and path.read_bytes() != raw:
        raise ValueError('Refusing source drift: ' + str(path))
    if not path.exists():
        path.write_bytes(raw)
    return {'path': OWN + '/generated/' + path.name, 'bytes': len(raw),
            'sha256': digest(raw), 'module': MOD + '.' + name, 'roots': roots}

def read_pool() -> tuple[list[int], list[dict]]:
    records = json.loads((ROOT / PLAN).read_text(encoding='utf-8-sig'))
    pool, provenance = [2], []
    for rec in records:
        rel = rec['source'].replace('\\', '/')
        if not re.search(r'/extension/primeChain/blocks/Block\d{3}\.lean$', rel):
            continue
        raw = (ROOT / rel).read_bytes()
        if len(raw) != rec['bytes'] or digest(raw) != rec['sha256']:
            raise ValueError('Frozen literal mismatch: ' + rel)
        provenance.append({'path': rel, 'bytes': len(raw), 'sha256': digest(raw)})
        for text in re.findall(r'def tail\d+ : List Nat := \[([^\]]+)\]', raw.decode('utf-8')):
            pool.extend(int(v.strip()) for v in text.split(','))
    if len(provenance) != 228 or max(pool) != POOL_MAX:
        raise ValueError('Unexpected old literal pool')
    return sorted(set(pool)), provenance

def small_primes(limit: int) -> list[int]:
    # Only sqrt(122.6 million), about eleven thousand booleans, on CI.
    sieve = bytearray(b'\x01') * (limit + 1)
    sieve[:2] = b'\x00\x00'
    for p in range(2, math.isqrt(limit) + 1):
        if sieve[p]:
            sieve[p*p:limit+1:p] = b'\x00' * ((limit - p*p) // p + 1)
    return [p for p in range(2, limit + 1) if sieve[p]]

def trial_prime(n: int, basis: list[int]) -> bool:
    if n > MAX_CANDIDATE:
        raise ValueError('Primality filter basis bound exceeded')
    if n < 2:
        return False
    for p in basis:
        if p * p > n:
            return True
        if n % p == 0:
            return n == p
    return True

def make_block(index: int, lower: int, values: list[int], gap: int, target: int) -> dict:
    name = f'Block{index:03d}'
    ns = 'B699GapFinite20261003.' + name
    upper = min(values[-1] - gap, target)
    if not (values[0] <= lower + gap and D * gap <= lower < upper):
        raise ValueError('Invalid segment start/end')
    if not all(a < b <= a + gap for a, b in zip(values, values[1:])):
        raise ValueError('Invalid exact chain edge')
    lines = header([CORE, 'Mathlib.Tactic.NormNum.Prime']) + ['namespace ' + ns]
    lines += [f'theorem prime{k} : Nat.Prime {p} := by norm_num' for k, p in enumerate(values)]
    lines += [f'theorem chain : B699Finite20261002.PrimeChain {gap} {values[0]} {values[-1]} := by']
    for k in range(len(values) - 1):
        lines += [f'  refine .step (q := {values[k+1]}) prime{k} (by decide) (by decide) ?_']
    lines += [f'  exact .singleton prime{len(values)-1}',
              f'theorem segment {{y : Nat}} (hy : {lower} ≤ y) (hyhi : y < {upper}) :',
              f'    ∃ p : Nat, p.Prime ∧ y < p ∧ {D} * (p - y) ≤ y := by',
              f'  obtain ⟨p, hp, hpn, hnp⟩ := chain.near_top (n := y + {gap}) (by omega) (by omega)',
              '  have hyp : y < p := by omega',
              f'  have hwidth : p - y ≤ {gap} := by omega',
              '  refine ⟨p, hp, hyp, ?_⟩',
              f'  exact Nat.le_trans (Nat.mul_le_mul_left {D} hwidth) (by omega)',
              'end ' + ns]
    roots = [ns + '.prime' + str(k) for k in range(len(values))] + [ns + '.chain', ns + '.segment']
    lines += ['#print axioms ' + root for root in roots]
    result = write_immutable(name, lines, roots)
    return {**result, 'lowerYInclusive': lower, 'upperYExclusive': upper, 'gap': gap,
            'firstPrime': values[0], 'lastPrime': values[-1], 'primeCount': len(values),
            'nodes': values, 'namespace': ns, 'status': 'candidate-not-kernel-accepted'}

def make_prefix(blocks: list[dict], pilot_module: str) -> dict:
    if not blocks:
        raise ValueError('Prefix needs a new block')
    name = f'Prefix{len(blocks):03d}'
    ns = 'B699GapFinite20261003.' + name
    upper = blocks[-1]['upperYExclusive']
    lines = header([pilot_module] + [b['module'] for b in blocks]) + ['namespace ' + ns,
        f'theorem finite_gap {{y : Nat}} (hy : {START} ≤ y) (hyhi : y < {upper}) :',
        f'    ∃ p : Nat, p.Prime ∧ y < p ∧ {D} * (p - y) ≤ y := by',
        f'  by_cases h0 : y < {PILOT_END}',
        '  · exact B699GapSlice20261003.initial_slice hy h0',
        f'  have hlow0 : {PILOT_END} ≤ y := Nat.le_of_not_gt h0']
    for i, block in enumerate(blocks):
        if i + 1 == len(blocks):
            lines += [f'  exact {block["namespace"]}.segment hlow{i} hyhi']
        else:
            lines += [f'  by_cases h{i+1} : y < {block["upperYExclusive"]}',
                      f'  · exact {block["namespace"]}.segment hlow{i} h{i+1}',
                      f'  have hlow{i+1} : {block["upperYExclusive"]} ≤ y := Nat.le_of_not_gt h{i+1}']
    lines += ['end ' + ns, '#print axioms ' + ns + '.finite_gap']
    return {**write_immutable(name, lines, [ns + '.finite_gap']),
            'lowerYInclusive': START, 'upperYExclusive': upper,
            'largestPotentialCompleteIndex': upper // D,
            'status': 'candidate-not-kernel-accepted'}

def make_original(prefix: dict, count: int) -> dict | None:
    upper = prefix['upperYExclusive']
    largest = upper // D
    if largest < 4885:
        return None
    name = f'OriginalPrefix{count:03d}'
    ns = 'B699GapFinite20261003.' + name
    helper = MOD.rsplit('.', 1)[0] + '.LocalizedConsumerLegacy'
    # Legacy mode is necessary for the already accepted ActualUniform provider.
    lines = ['import ' + helper, 'import ' + prefix['module'],
             'set_option autoImplicit false', 'set_option relaxedAutoImplicit false',
             'set_option Elab.async false', 'namespace ' + ns,
             f'theorem common_upto {{n i j : Nat}} (hi : 4883 ≤ i) (hiu : i ≤ {largest})',
             '    (hij : i < j) (hjn : j ≤ n / 2) :',
             '    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by',
             f'  exact B699GapFinite20261003.complete_indices_of_bounded_gap (U := {upper})',
             f'    (fun y hy hyhi => B699GapFinite20261003.Prefix{count:03d}.finite_gap hy hyhi)',
             '    hi (by omega) hij hjn',
             'theorem complete_4885 {n j : Nat} (hij : 4885 < j) (hjn : j ≤ n / 2) :',
             '    ∃ p : Nat, p.Prime ∧ 4885 ≤ p ∧ p ∣ n.choose 4885 ∧ p ∣ n.choose j := by',
             '  exact common_upto (by decide) (by decide) hij hjn',
             'end ' + ns]
    roots = [ns + '.common_upto', ns + '.complete_4885']
    lines += ['#print axioms ' + root for root in roots]
    return {**write_immutable(name, lines, roots), 'largestCompleteIndexCandidate': largest,
            'extraMathematicalInputs': [], 'status': 'candidate-not-kernel-accepted'}

def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--blocks', type=int, required=True)
    parser.add_argument('--edges-per-block', type=int, choices=[64, 128], default=128)
    parser.add_argument('--target', type=int, default=UPPER)
    parser.add_argument('--accepted-cost-receipt', type=Path, required=True)
    parser.add_argument('--source-deadline', required=True)
    parser.add_argument('--pilot-module', default=PILOT)
    args = parser.parse_args()
    if not (1 <= args.blocks <= 256 and PILOT_END < args.target <= UPPER):
        raise ValueError('Invalid bounded generation scope')
    deadline = datetime.fromisoformat(args.source_deadline.replace('Z', '+00:00'))
    if datetime.now(timezone.utc) >= deadline:
        raise TimeoutError('Source window expired')
    cost = json.loads(args.accepted_cost_receipt.read_text(encoding='utf-8-sig'))
    if not (cost.get('actualCompilerExit') == 0 and cost.get('actualCheckerExit') == 0
            and cost.get('actualAxiomAuditAccepted') is True
            and cost.get('actualCostSeconds', 0) > 0 and cost.get('fixedSourceSha256') == PILOT_SHA):
        raise ValueError('Missing actual accepted Pilot cost receipt')
    if digest((ROOT / PILOT_SOURCE).read_bytes()) != PILOT_SHA:
        raise ValueError('Pilot source byte drift')
    started = time.perf_counter()
    pool, provenance = read_pool()
    basis = small_primes(math.isqrt(MAX_CANDIDATE) + 1)
    blocks, lower, seed, old_count, new_count, tested = [], PILOT_END, PILOT_LAST, 0, 0, 0
    for index in range(args.blocks):
        if datetime.now(timezone.utc) >= deadline:
            raise TimeoutError('Source window expired before new block')
        gap, values = lower // D, [seed]
        if not trial_prime(seed, basis):
            raise ValueError('Seed is not prime by integer filtering')
        for _ in range(args.edges_per_block):
            if datetime.now(timezone.utc) >= deadline:
                raise TimeoutError('Source window expired inside block')
            a, ceiling = values[-1], values[-1] + gap
            pos = bisect.bisect_right(pool, min(ceiling, POOL_MAX)) - 1
            if pos >= 0 and pool[pos] > a:
                q = pool[pos]
                old_count += 1
            else:
                q = ceiling if ceiling % 2 else ceiling - 1
                while q > a:
                    tested += 1
                    if trial_prime(q, basis):
                        break
                    q -= 2
                if q <= a:
                    raise ValueError('No prime found in required short edge')
                new_count += 1
            if not trial_prime(q, basis):
                raise ValueError('Selected literal failed integer filtering')
            values.append(q)
            if q - gap >= args.target:
                break
        block = make_block(index, lower, values, gap, args.target)
        blocks.append(block)
        prefix = make_prefix(blocks, args.pilot_module)
        original = make_original(prefix, len(blocks))
        receipt = {'utc': utc(), 'status': 'generated-candidates-not-Lean-evidence',
                   'targetUpperExclusive': args.target, 'actualPrefixUpperExclusive': block['upperYExclusive'],
                   'elapsedGenerationSeconds': time.perf_counter() - started,
                   'oldPoolSelections': old_count, 'newPrimeSelections': new_count,
                   'newTrialCandidatesTested': tested, 'blocks': blocks, 'prefix': prefix,
                   'originalConsumer': original,
                   'oldPoolMemberProvenance': provenance, 'acceptedCostInput': cost,
                   'kernelAccepted': False, 'genuineUnboundedGapProvided': False}
        (HERE / 'generation-current.json').write_text(json.dumps(receipt, indent=2) + '\n', encoding='utf-8')
        print(json.dumps({'block': index, 'source': block['path'], 'primeCount': len(values),
                          'lower': lower, 'upper': block['upperYExclusive'], 'gap': gap,
                          'prefix': prefix['path'], 'kernelAccepted': False}), flush=True)
        lower, seed = block['upperYExclusive'], values[-1]
        if lower >= args.target:
            break

if __name__ == '__main__':
    main()
