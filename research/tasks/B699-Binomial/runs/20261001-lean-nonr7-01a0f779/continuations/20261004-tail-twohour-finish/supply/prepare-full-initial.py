"""Prepare the authorized finite theta initial segment; never run Lean."""
from datetime import datetime, timezone
from pathlib import Path
import hashlib
import json
import time

HERE = Path(__file__).resolve().parent
BASE = 'research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations'
OLD = BASE + '.«20261004-tail-ninetymin».supply'
UNTIL = BASE + '.«20261004-tail-until2020».supply'
MOD = BASE + '.«20261004-tail-twohour-finish».supply'
NS = 'B699TailFinish20261004.FullInitial'
STOP = datetime.fromisoformat('2026-10-04T14:46:00+00:00')
OPTIONS = ['set_option autoImplicit false', 'set_option relaxedAutoImplicit false',
           'set_option Elab.async false']
records = []

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def save(name, lines, roots, **extra):
    if datetime.now(timezone.utc) >= STOP:
        raise TimeoutError('Shared proofStop reached')
    path = HERE / (name + '.lean')
    if path.exists():
        raise ValueError('Refuse overwrite ' + name)
    lines += ['#print axioms ' + r for r in roots]
    path.write_text('\n'.join(lines) + '\n', encoding='utf-8', newline='\n')
    record = dict(file=path.name, module=MOD+'.'+name, bytes=path.stat().st_size,
                  sha256=sha(path), roots=roots, **extra)
    records.append(record)
    return record

def blocks(prefix, nodes, first_module, first_prime):
    out = []
    prior_module, prior_prime = first_module, first_prime
    for offset in range(0, len(nodes)-1, 64):
        values = nodes[offset:offset+65]
        if not all(p < q and 4095*q <= 4096*p for p,q in zip(values,values[1:])):
            raise ValueError('Invalid ratio edge')
        name = f'{prefix}Block{len(out):03d}'
        ns = NS + '.' + name
        lines = ['module', 'public import '+OLD+'.RatioCore',
                 'public import Mathlib.Tactic.NormNum.Prime', 'public import '+prior_module]
        lines += OPTIONS + ['set_option maxRecDepth 8192',
                            'set_option maxHeartbeats 4000000',
                            '@[expose] public section', 'namespace '+ns]
        roots = []
        for index,p in enumerate(values[1:],1):
            lines += [f'theorem prime{index} : Nat.Prime {p} := by norm_num']
            roots += [ns+f'.prime{index}']
        lines += [f'theorem chain : B699TailNinety20261004.RatioPrimeChain {values[0]} {values[-1]} := by']
        for index in range(len(values)-1):
            term = prior_prime if index == 0 else f'prime{index}'
            lines += [f'  refine .step (q := {values[index+1]}) {term} (by decide) (by decide) ?_']
        lines += [f'  exact .singleton prime{len(values)-1}', 'end '+ns]
        roots += [ns+'.chain']
        record = save(name, lines, roots, namespace=ns, firstPrime=values[0],
                      lastPrime=values[-1], edgeCount=len(values)-1)
        out.append(record)
        prior_module = record['module']
        prior_prime = ns+f'.prime{len(values)-1}'
    return out

def chain_lines(name, nodes, block_records, seed_root):
    lines = ['module', 'public import '+block_records[-1]['module'],
             'public import '+OLD+'.RatioForward'] + OPTIONS
    lines += ['@[expose] public section', 'namespace '+NS,
              f'theorem {name} : B699TailNinety20261004.RatioPrimeChain {nodes[0]} {nodes[-1]} := by',
              '  have h0 := B699TailNinety20261004.RatioPrimeChain.singleton '+seed_root]
    for i,r in enumerate(block_records,1):
        lines += [f"  have h{i} := B699TailNinety20261004.RatioPrimeChain.trans h{i-1} {r['namespace']}.chain"]
    lines += [f'  exact h{len(block_records)}']
    return lines

begun = time.perf_counter()
probe = json.loads((HERE/'full-initial-probe.json').read_text(encoding='utf-8'))
low, upper = probe['lower'], probe['upper30000']
assert low['seed'] == 10000019 and low['endpoint'] >= 19995885
assert upper['seed'] == 61439401 and upper['endpoint'] >= 4095*30000
assert all(2 <= p < 12000**2 for p in low['nodes']+upper['nodes'])
seed_lines = ['module', 'public import '+OLD+'.RatioCore',
              'public import Mathlib.Tactic.NormNum.Prime'] + OPTIONS
seed_lines += ['@[expose] public section', 'namespace '+NS,
               'theorem seed_prime : Nat.Prime 10000019 := by norm_num',
               'theorem seed_gap_initial {y : Nat} (hlo : 10000000 ≤ y) (hhi : y < 10000019) :',
               '    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by',
               '  exact ⟨10000019, seed_prime, hhi, by omega⟩', 'end '+NS]
seed = save('SeedInitial',seed_lines,[NS+'.seed_prime',NS+'.seed_gap_initial'])
lower_blocks = blocks('Lower',low['nodes'],seed['module'],NS+'.seed_prime')
upper_seed = 'B699TailUntil202020261004.RatioBlock025.prime63'
upper_blocks = blocks('Upper',upper['nodes'],UNTIL+'.RatioBlock025',upper_seed)
lines = chain_lines('lower_chain',low['nodes'],lower_blocks,NS+'.seed_prime')
lines += ['theorem lower_gap {y : Nat} (hlo : 10000000 ≤ y) (hhi : y < 19995885) :',
          '    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by',
          '  by_cases hseed : y < 10000019',
          '  · exact seed_gap_initial hlo hseed',
          '  · exact B699TailNinety20261004.RatioPrimeChain.near_after lower_chain (by omega) (by omega)',
          'end '+NS]
lower_consumer = save('LowerChain',lines,[NS+'.lower_chain',NS+'.lower_gap'],
                      exactInterval=[10000000,19995885], chainEndpoint=low['endpoint'])
lines = chain_lines('upper_chain',upper['nodes'],upper_blocks,upper_seed)
lines += [f"theorem upper_gap {{y : Nat}} (hlo : 61439401 ≤ y) (hhi : y < {upper['endpoint']}) :",
          '    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=',
          '  B699TailNinety20261004.RatioPrimeChain.near_after upper_chain hlo hhi',
          'end '+NS]
upper_consumer = save('UpperChain',lines,[NS+'.upper_chain',NS+'.upper_gap'],
                      exactInterval=[61439401,upper['endpoint']], chainEndpoint=upper['endpoint'])
lines = ['import '+MOD+'.LowerChain','import '+MOD+'.UpperChain',
         'import '+MOD+'.Gap15000Legacy'] + OPTIONS + ['namespace '+NS,
         'theorem theta_initial {y : Nat} (hlo : 10000000 ≤ y) (hhi : y < 122568684) :',
         '    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by',
         '  by_cases hlower : y < 19995885',
         '  · exact lower_gap hlo hlower',
         '  · by_cases hmiddle : y < 61439401',
         '    · exact B699TailFinish20261004.gap_15000_extended_initial (by omega) hmiddle',
         '    · exact upper_gap (by omega) (by omega)', 'end '+NS]
full_gap = save('FullInitialGapLegacy',lines,[NS+'.theta_initial'],
                exactInterval=[10000000,122568684], extraMathematicalInputs=[])
lines = ['import '+MOD+'.UpperChain','import '+UNTIL+'.Tail15000Legacy'] + OPTIONS
lines += ['namespace '+NS,
          f"theorem tail_chain_30000 : B699TailNinety20261004.RatioPrimeChain 20482069 {upper['endpoint']} :=",
          '  B699TailNinety20261004.RatioPrimeChain.trans',
          '    B699TailUntil202020261004.tail_chain_15000 upper_chain',
          'theorem common_upto_30000 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 30000)',
          '    (hij : i < j) (hjn : j ≤ n / 2) :',
          '    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=',
          '  B699TailNinety20261004.common_of_ratio_tail_endpoint tail_chain_30000',
          '    (by decide) hi hiK hij hjn',
          'theorem complete_30000 {n j : Nat} (hij : 30000 < j) (hjn : j ≤ n / 2) :',
          '    ∃ p : Nat, p.Prime ∧ 30000 ≤ p ∧ p ∣ n.choose 30000 ∧ p ∣ n.choose j :=',
          '  common_upto_30000 (by decide) (by decide) hij hjn', 'end '+NS]
bounded = save('Tail30000Legacy',lines,[NS+'.tail_chain_30000',NS+'.common_upto_30000',NS+'.complete_30000'],
               K=30000, chainEndpoint=upper['endpoint'], extraMathematicalInputs=[])
result = dict(status='READY-source-candidate-not-kernel-accepted', utc=datetime.now(timezone.utc).isoformat(),
              owner='/root/tail2h_implementation', class_='Complex established certificate procedure',
              model='gpt-6.1-sol', reasoning='xhigh', prepareSeconds=time.perf_counter()-begun,
              seed=seed, lowerBlocks=lower_blocks, upperBlocks=upper_blocks,
              lowerConsumer=lower_consumer, upperConsumer=upper_consumer,
              fullGap=full_gap, boundedConsumer=bounded, sources=records,
              newPrimalityObligations=low['newPrimeCount']+upper['newPrimeCount']+1,
              finiteInitialInterval=[10000000,122568684], extraMathematicalInputs=[],
              infiniteGapProvided=False, generatorSha256=sha(HERE/'prepare-full-initial.py'),
              candidateNodesSha256=sha(HERE/'full-initial-probe.json'),
              midSources='NEW/supply/Gap15000Legacy plus its fixed old and current accepted closure',
              sourceChangedAfterReady=False, proofStopUtc=STOP.isoformat())
(HERE/'full-initial-candidates.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:result[k] for k in ['status','utc','prepareSeconds','newPrimalityObligations','finiteInitialInterval']}
                 |dict(sources=len(records),lowerBlocks=len(lower_blocks),upperBlocks=len(upper_blocks),
                        fullGap=full_gap['roots'],bounded=bounded['roots'])))
