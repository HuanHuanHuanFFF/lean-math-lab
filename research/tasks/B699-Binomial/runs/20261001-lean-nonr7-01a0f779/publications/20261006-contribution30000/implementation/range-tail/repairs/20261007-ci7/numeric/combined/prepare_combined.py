"""Product versus plain checker versus changed proof carrier, same original tail."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,re

here=Path(__file__).resolve().parent
numeric=here.parent
repair=numeric.parent
repo=next(parent for parent in here.parents if (parent/'AGENTS.md').is_file())
middle=(repair/'Middle323_999.lean').read_text(encoding='utf-8')
P=re.search(r'^def P : Nat := (\d+)$',middle,re.M)[1]
entry=re.search(r'^⟨1997351,("(?:[^"\\]|\\.)*"),by decide \+kernel⟩',middle,re.M)[1]
decoder=(numeric/'probes/MiddleDecodeTail.lean').read_text()
decode=decoder[decoder.index('def gapsWide'):decoder.index('theorem decode_eq')]
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
records=[]
def save(identifier,source,root,purpose,details):
    path=here/'probes'/(identifier+'.lean')
    path.write_text(source,encoding='utf-8',newline='\n')
    records.append({'id':identifier,'path':str(path.relative_to(repo)).replace('\\','/'),'bytes':path.stat().st_size,
        'sha256':sha(path),'root':root,'wallTimeoutSeconds':180,'heartbeatLimit':400000,'threads':1,
        'purpose':purpose,'details':details,'proofAccepted':False})
product=(numeric/'probes/MiddleBasisProduct.lean').read_text()
save('MiddleBasisProduct',product,'Contribution.NumericMiddleBasisProduct.product_eq',
     'only original P product; shared numeric prelude not yet tested',{'original607BasisExactlyCopied':True})
header='import Mathlib.Data.Nat.GCD.Basic\nimport Mathlib.Data.Nat.Sqrt\nset_option autoImplicit false\nset_option maxHeartbeats 400000\nset_option maxRecDepth 65536\nset_option Elab.async false\nset_option profiler true\nset_option profiler.threshold 100\n'
check='''def primorialPrimeCheck (B P p : Nat) : Bool :=
  if p<B then decide (2≤p) && (List.range (Nat.sqrt p+1)).all (fun d => if d<2 then true else decide (p % d≠0))
  else decide (2≤p ∧ p<B*B ∧ Nat.gcd p P=1)
def primorialChainCheck (B P gap p : Nat) : List Nat → Bool
  | [] => primorialPrimeCheck B P p
  | q::qs => primorialPrimeCheck B P p && decide (p<q ∧ q≤p+gap) && primorialChainCheck B P gap q qs
'''
namespace='Contribution.CombinedMiddlePlain'
plain=header+'namespace '+namespace+'\n'+decode+check+'def P : Nat := '+P+'\ntheorem checked : primorialChainCheck 4473 P 322 1997351 (gapsWide 1997351 '+entry+'.toList)=true := by decide +kernel\nend '+namespace+'\n#print axioms '+namespace+'.checked\n'
save('MiddleTailPlainBool',plain,namespace+'.checked','exact15 original edges with old checker/P; no basis/prod/Segment/soundness',{'lo':1997351,'hi':2000003,'copiedEdges':15})
source=(numeric/'probes/MiddleFactorialPrime.lean').read_text()
source=source[:source.index('theorem prime_start')]
source=source.replace('Contribution.NumericMiddleFactorialPrime','Contribution.CombinedMiddleCarrier')
source+='''
inductive PrimeChain (gap : Nat) : Nat → Nat → Prop where
  | singleton {p : Nat} (hp : p.Prime) : PrimeChain gap p p
  | step {p q r : Nat} (hp : p.Prime) (hpq : p<q) (hgap : q≤p+gap)
      (tail : PrimeChain gap q r) : PrimeChain gap p r
def chainEnd : Nat → List Nat → Nat
  | p,[] => p
  | _,q::qs => chainEnd q qs
def fastPrime (p : Nat) : Bool := decide (2≤p ∧ p<4473*4473) && fueledCoprime 64 p F
theorem fastPrime_sound {p : Nat} (hc : fastPrime p=true) : p.Prime := by
  have hp : (2≤p ∧ p<4473*4473) ∧ fueledCoprime 64 p F=true := by
    simpa only [fastPrime,Bool.and_eq_true,decide_eq_true_eq] using hc
  exact prime_of_fast hp.1.1 hp.1.2 hp.2
def chainCheck (p : Nat) : List Nat → Bool
  | [] => fastPrime p
  | q::qs => fastPrime p && decide (p<q ∧ q≤p+322) && chainCheck q qs
theorem chainCheck_sound {p : Nat} {qs : List Nat} (hc : chainCheck p qs=true) :
    PrimeChain 322 p (chainEnd p qs) := by
  induction qs generalizing p with
  | nil => exact .singleton (fastPrime_sound hc)
  | cons q qs ih =>
      have hp : (fastPrime p=true ∧ (p<q ∧ q≤p+322)) ∧ chainCheck q qs=true := by
        simpa only [chainCheck,Bool.and_eq_true,decide_eq_true_eq] using hc
      exact .step (fastPrime_sound hp.1.1) hp.1.2.1 hp.1.2.2 (ih hp.2)
'''+decode+'''
structure Part where
  lo : Nat
  hi : Nat
  text : String
  checked : chainCheck lo (gapsWide lo text.toList)=true
  endpoint : chainEnd lo (gapsWide lo text.toList)=hi
theorem Part.chain (s : Part) : PrimeChain 322 s.lo s.hi := by
  have hc := chainCheck_sound s.checked
  rw [s.endpoint] at hc
  exact hc
'''
source+='def part : Part := ⟨1997351,2000003,'+entry+',by decide +kernel,by decide +kernel⟩\n'
source+='theorem carrier_chain : PrimeChain 322 1997351 2000003 := part.chain\nend Contribution.CombinedMiddleCarrier\n#print axioms Contribution.CombinedMiddleCarrier.carrier_chain\n'
save('MiddleFactorialCarrier',source,'Contribution.CombinedMiddleCarrier.carrier_chain',
     'factorial4472 once+fuel64, same15 encoded edges, actualPrime chain carrier with explicit endpoint; no legacybasis/product',
     {'lo':1997351,'hi':2000003,'copiedEdges':15,'fuel':64,'exhaustedFuelFalse':True,'uniform64SufficiencyAssumed':False,'F_eqOnce':True})
manifest={'status':'new combined workload probes, not executed, no whole-range acceptance',
    'owner':'/root/b699_contribution_environment','officialProductionCommit':'6a786f997e18e8f095762a2830d191b7e25e505e',
    'officialPolicyCommit':'be220ff2519ecfd61b28ba9e477321e4287ef6b4','fixedLeanCommit':'819816b2e0a3bf405af45ae5c7af2491d8f5bee6',
    'proofAccepted':False,'hardDeadlineUtc':'2026-10-06T23:40:25Z','timeUTC':datetime.now(timezone.utc).isoformat(),
    'probes':records,'executionOrder':[r['id'] for r in records],'selectedBytes':sum(r['bytes'] for r in records),
    'fullScopeUnchanged':'185..322/323..999/1000..30000 for all legalNat n/j, same actualPrime>=i/fullchoose'}
(here/'PROBE-REQUEST.json').write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({'manifestSha256':sha(here/'PROBE-REQUEST.json'),'bytes':manifest['selectedBytes'],'ids':manifest['executionOrder']}))
