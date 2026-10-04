"""Independent finite-theta-initial source/edge review; no primality or Lean run."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
BASE = HERE.parent
REPO = next(p for p in HERE.parents if (p/'.git').exists())
meta_path = BASE/'supply/full-initial-candidates.json'
meta = json.loads(meta_path.read_text(encoding='utf-8-sig'))

def require(ok, message):
    if not ok:
        raise RuntimeError(message)

def freeze(path):
    raw = path.read_bytes()
    text = raw.decode('utf-8-sig')
    require(not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b', text), 'Forbidden source construct')
    roots = re.findall(r'^#print axioms (\S+)\s*$', text, re.M)
    require(roots and len(roots)==len(set(roots)), 'Exact AX inventory incomplete')
    return {'path':path.relative_to(REPO).as_posix(), 'bytes':len(raw), 'sha256':hashlib.sha256(raw).hexdigest(), 'roots':roots}

sources = []
for row in meta['sources']:
    actual = freeze(BASE/'supply'/row['file'])
    require(all(actual[key]==row[key] for key in ('bytes','sha256','roots')), 'A source manifest bytes/roots differ')
    sources.append(actual)
require(len(sources)==95, 'Expected seed+90blocks+4consumers')

block_reviews = []
new_primes = 1
for prefix, seed, target in (('Lower',10000019,19997441), ('Upper',61439401,122879557)):
    chain_seed = seed
    count = 0
    for ix in range(45):
        path = BASE/'supply'/('%sBlock%03d.lean' % (prefix,ix))
        text = path.read_text(encoding='utf-8-sig')
        primes = [int(p) for p in re.findall(r'theorem prime\d+ : Nat.Prime (\d+) := by norm_num',text)]
        require(0<len(primes)<=64, 'Missing block prime obligations')
        points = [seed]+primes
        require(all(p<q and 4095*q<=4096*p for p,q in zip(points,points[1:])), 'Relative edge inequality failed')
        require('theorem chain : B699TailNinety20261004.RatioPrimeChain %d %d' % (seed,primes[-1]) in text, 'Block endpoints differ')
        roots = re.findall(r'^#print axioms (\S+)\s*$',text,re.M)
        require(len(roots)==len(primes)+1, 'Prime/chain root count differs')
        count += len(primes)
        seed = primes[-1]
    require(seed==target, 'Chain final endpoint differs')
    block_reviews.append({'chain':prefix,'blockCount':45,'seed':chain_seed,'endpoint':seed,'newPrimalityObligations':count})
    new_primes += count
require(new_primes==5692==meta['newPrimalityObligations'], 'Primality obligation total differs')
require(4095*19<=10000000 and 19995885<=19997441 and 122568684<=122879557 and 4095*30000<=122879557, 'Constant/seam/endpoint arithmetic failed')

literals = []
scopes = []
for filename, root, lo, hi in (('InitialLowerExactLegacy.lean','full_lower_gap_exact',10000000,19995885), ('InitialUpperExactLegacy.lean','full_upper_gap_exact',61439401,122879557), ('ThetaInitialExactLegacy.lean','theta_initial_exact',10000000,122568684)):
    path = HERE/filename
    text = path.read_text(encoding='utf-8-sig')
    expected = r'theorem '+root+r' \(y : Nat\) \(hlo : '+str(lo)+r' ≤ y\) \(hhi : y < '+str(hi)+r'\) :\s*∃ p : Nat, p.Prime ∧ y < p ∧ 4095 \* \(p - y\) ≤ y'
    require(re.search(expected,text) is not None, 'Independent literal finite scope differs')
    literals.append(freeze(path))
    scopes.append({'root':'B699TailFinishVerify20261004.'+root,'lowerInclusive':lo,'upperExclusive':hi,'integerYCount':hi-lo,'extraMathematicalInputs':[]})
tail_literal = HERE/'Tail30000ExactLegacy.lean'
literals.append(freeze(tail_literal))
text = tail_literal.read_text(encoding='utf-8-sig')
require('theorem all_upto_30000_exact (n i j : Nat) (hi : 4883 ≤ i) (hiu : i ≤ 30000)' in text and '∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j' in text, 'Bounded-original literal scope differs')

result = {'status':'independent-source-ready-not-kernel-accepted','verifier':'/root/tail2h_verification','utc':datetime.now(timezone.utc).isoformat(),'sources':sources,'literalSources':literals,'chainReviews':block_reviews,'newPrimalityObligations':new_primes,'actualPrimalityVerificationHere':False,'scopeObligations':scopes,'boundedOriginalObligation':{'lowerInclusive':4883,'upperInclusive':30000,'allNatNAndLegalJ':True,'sameActualPrime':True,'completeChooseDivisibility':True,'extraMathematicalInputs':[],'optional':True},'glueReview':'Below10000019 uses actual new seed prime with4095*19<=10M. Lower chain covers until19995885 inside endpoint19997441. Accepted mid Gap must cover[19995885,61439401), upper begins inclusively at61439401 and endpoint122879557 exceeds exact theta cutoff122568684. Interval overlap is not counted twice.','requiredMidAcceptance':'9-source Gap stage and fixed main15000 closure, all actual objects/parts/raw/compiler/Std3/normalchecker required before fullinitial acceptance','newAcceptedOriginalIndicesHere':0,'genuineInfiniteGapSupplied':False,'conditionalThetaBridgeAcceptedHere':False,'twoUnboundedThetaInputsStillMissing':True,'fixedSourceMetadataSha256':hashlib.sha256(meta_path.read_bytes()).hexdigest(),'scriptSha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
(HERE/'INITIAL-SOURCE-READY.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Source-ready:95 frozen candidate sources / 4 exact literals /5692 primality obligations; no kernel acceptance')
