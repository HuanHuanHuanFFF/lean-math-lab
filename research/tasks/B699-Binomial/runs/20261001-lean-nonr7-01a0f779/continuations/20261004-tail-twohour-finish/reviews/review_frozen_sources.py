"""Source-only verification of frozen finite-tail candidates. Never runs Lean."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
CONT = HERE.parent.parent
OLD90 = CONT / '20261004-tail-ninetymin'
OLD20 = CONT / '20261004-tail-until2020'

def require(ok, message):
    if not ok:
        raise RuntimeError(message)

def sha(raw):
    return hashlib.sha256(raw).hexdigest()

def freeze(path, source=True):
    raw = path.read_bytes()
    if source:
        require(not re.search(rb'\b(sorry|admit|axiom|unsafe|native_decide)\b', raw), str(path))
    return {'path': path.relative_to(REPO).as_posix(), 'bytes': len(raw), 'sha256': sha(raw)}

old = json.loads((OLD20 / 'reviews/CANDIDATES-INDEPENDENT-SOURCE-REVIEW.json').read_text(encoding='utf-8-sig'))
blocks = []
seed = 40956329
edge_count = 0
for ix in range(26):
    path = OLD20 / ('supply/RatioBlock%03d.lean' % ix)
    raw = path.read_bytes()
    row = freeze(path)
    previous = old['sources'][ix]
    require(row['path'] == previous['path'] and row['sha256'] == previous['sha256'] and row['bytes'] == previous['bytes'], 'Frozen block source differs')
    text = raw.decode('utf-8-sig')
    primes = [int(v) for v in re.findall(r'theorem prime\d+ : Nat.Prime (\d+) := by norm_num', text)]
    require(len(primes) in (63, 64), 'Unexpected prime statement count')
    points = [seed] + primes
    require(all(p < q and 4095*q <= 4096*p for p, q in zip(points, points[1:])), 'Integer edge obligation failed')
    require(re.search(r'theorem chain : B699TailNinety20261004.RatioPrimeChain '+str(seed)+' '+str(primes[-1]), text), 'Block chain endpoint differs')
    roots = re.findall(r'^#print axioms (\S+)$', text, re.M)
    require(len(roots) == len(primes)+1 and len(set(roots)) == len(roots), 'Block exact root inventory differs')
    require(roots == previous['expectedAXRoots'], 'Old/new AX root inventory differs')
    row.update({'firstPrime': seed, 'lastPrime': primes[-1], 'primeObligationCount': len(primes), 'expectedAXRootCount': len(roots)})
    blocks.append(row)
    seed = primes[-1]
    edge_count += len(primes)

targets = []
for k, folder, ns in ((10001, OLD90, 'B699TailNinetyVerify20261004'), (13000, OLD20, 'B699TailUntil2020Verify20261004'), (15000, OLD20, 'B699TailUntil2020Verify20261004')):
    consumer = folder / ('supply/Extra10001Legacy.lean' if k == 10001 else 'supply/Tail%dLegacy.lean' % k)
    literal = folder / ('reviews/Tail%dExactLegacy.lean' % k)
    lit = literal.read_text(encoding='utf-8-sig')
    require('theorem complete_%d_exact (n j : Nat) (hij : %d < j) (hjn : j ≤ n / 2)' % (k, k) in lit, 'Single literal quantifiers differ')
    require('∃ p : Nat, p.Prime ∧ %d ≤ p ∧ p ∣ n.choose %d ∧ p ∣ n.choose j' % (k, k) in lit, 'Single literal conclusion differs')
    require('theorem all_upto_%d_exact (n i j : Nat) (hi : 4883 ≤ i) (hiu : i ≤ %d)' % (k, k) in lit, 'Interval literal quantifiers differ')
    require('∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j' in lit, 'Interval literal conclusion differs')
    require(set(re.findall(r'^#print axioms (\S+)$', lit, re.M)) == {ns+'.complete_%d_exact' % k, ns+'.all_upto_%d_exact' % k}, 'Literal AX inventory differs')
    endpoint = 40956329 if k == 10001 else blocks[16 if k == 13000 else 25]['lastPrime']
    require(4095*k <= endpoint, 'Endpoint condition differs')
    targets.append({'K': k, 'consumer': freeze(consumer), 'literal': freeze(literal), 'literalNamespace': ns, 'newBlockCount': 0 if k == 10001 else 17 if k == 13000 else 26, 'endpoint': endpoint, 'endpointProduct': 4095*k, 'extraMathematicalInputs': [], 'status': 'source-ready-not-kernel-accepted'})

result = {'status': 'independent-source-ready-not-kernel-accepted', 'verifier': '/root/tail2h_verification', 'observedUtc': datetime.now(timezone.utc).isoformat(), 'targets': targets, 'blocks': blocks, 'newPrimeObligationsFor15000': edge_count, 'primalityCheckPerformedHere': False, 'reusedStaticReview': freeze(OLD20/'reviews/CANDIDATES-INDEPENDENT-SOURCE-REVIEW.json', False), 'reviewedSharedConsumer': freeze(OLD90/'supply/RatioEndpointLegacy.lean'), 'acceptedOriginalUpperUnchanged': 10000, 'genuineInfiniteGapSupplied': False, 'R7Changed': False, 'resourceObservation': {'diskDFreeGiB': 21.919, 'ramObservation': 'WMI access denied; unavailable, not zero', 'localLeanProcessesObserved': 0}, 'sourceFrozenUntilLeaderACK': True, 'scriptSha256': sha(Path(__file__).read_bytes())}
(HERE/'FROZEN-SOURCE-READY.json').write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
print('Source-ready: 10001/13000/15000; 26 original blocks / %d prime obligations; no Lean acceptance' % edge_count)
