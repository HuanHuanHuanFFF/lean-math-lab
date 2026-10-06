"""Changed isolated workloads, never the old common numeric-prelude/segment template."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib
import json
import math
import re
import sys

sys.set_int_max_str_digits(0)
here=Path(__file__).resolve().parent
repair=here.parent
repo=next(parent for parent in here.parents if (parent/'AGENTS.md').is_file())
old=(repair/'High1000_30000.lean').read_text(encoding='utf-8')
example='''example : ∀ x : ℝ, 128 ≤ x →
    (Nat.primeCounting (Nat.floor x) : ℝ) ≤
      Real.log 4 * x / (Real.log x - (3 : ℝ) / 2) := by
  intro x hx
  exact N7.elementary_primeCounting_bound hx

'''
assert old.count(example)==1 and old.count('elementary_primeCounting_bound')==1
high=old.replace(example,'')
(here/'High1000_30000.lean').write_text(high,encoding='utf-8',newline='\n')
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
high_receipt={'oldPath':str((repair/'High1000_30000.lean').relative_to(repo)).replace('\\','/'),
    'oldSha256':sha(repair/'High1000_30000.lean'),'newPath':str((here/'High1000_30000.lean').relative_to(repo)).replace('\\','/'),
    'newSha256':sha(here/'High1000_30000.lean'),'bytes':len(high.encode()),
    'removedBlock':example,'reason':'lexical slice carried anonymous example as part of an end directive; cannot be a named prerequisite; actual consumer row_common receives finite sieve hcount',
    'allOtherBytesIdentical':True,'scopeUnchanged':True,'proofAccepted':False}
(here/'HIGH-LEXICAL-REPAIR.json').write_text(json.dumps(high_receipt,indent=2)+'\n',encoding='utf-8',newline='\n')
middle=(repair/'Middle323_999.lean').read_text(encoding='utf-8')
P=re.search(r'^def P : Nat := (\d+)$',middle,re.M)[1]
basis=re.search(r'^def basis : List Nat := (\[[^\n]+\])$',middle,re.M)[1]
entry=re.search(r'^⟨1997351,("(?:[^"\\]|\\.)*"),by decide \+kernel⟩',middle,re.M)[1]
encoded=json.loads(entry)
numbers=[]
value=1997351
assert len(encoded)%2==0
for index in range(0,len(encoded),2):
    increment=ord(encoded[index])-32+94*(ord(encoded[index+1])-32)
    value+=2*increment
    numbers.append(value)
assert value==2000003
F=str(math.factorial(4472))
fuel='''def fueledCoprime : Nat → Nat → Nat → Bool
  | 0, _, _ => false
  | fuel+1, a, b => if a=0 then decide (b=1) else fueledCoprime fuel (b % a) a
theorem fueledCoprime_sound {fuel a b : Nat} (hc : fueledCoprime fuel a b=true) : Nat.gcd a b=1 := by
  induction fuel generalizing a b with
  | zero => simp [fueledCoprime] at hc
  | succ fuel ih =>
      by_cases ha : a=0
      · have hb : b=1 := of_decide_eq_true (by simpa only [fueledCoprime,if_pos ha] using hc)
        rw [ha,Nat.gcd_zero_left,hb]
      · have ht : fueledCoprime fuel (b % a) a=true := by
          simpa only [fueledCoprime,if_neg ha] using hc
        exact (Nat.gcd_rec a b).trans (ih ht)
'''
(here/'FueledCoprime.lean').write_text('import Mathlib.Data.Nat.GCD.Basic\nset_option autoImplicit false\nnamespace Contribution.FueledCoprime\n'+fuel+'end Contribution.FueledCoprime\n',encoding='utf-8',newline='\n')
records=[]
def save(identifier,body,imports,root,purpose,details):
    namespace='Contribution.Numeric'+identifier
    source=''.join('import '+module+'\n' for module in imports)+'set_option autoImplicit false\nset_option maxRecDepth 65536\nset_option maxHeartbeats 400000\nset_option Elab.async false\nset_option profiler true\nset_option profiler.threshold 100\nnamespace '+namespace+'\n'+body+'\nend '+namespace+'\n#print axioms '+namespace+'.'+root+'\n'
    path=here/'probes'/(identifier+'.lean')
    path.write_text(source,encoding='utf-8',newline='\n')
    records.append({'id':identifier,'path':str(path.relative_to(repo)).replace('\\','/'),'bytes':path.stat().st_size,
        'sha256':sha(path),'root':namespace+'.'+root,'wallTimeoutSeconds':180,'heartbeatLimit':400000,'threads':1,
        'purpose':purpose,'details':details,'originalSource':{'path':str((repair/'Middle323_999.lean').relative_to(repo)).replace('\\','/'),'sha256':sha(repair/'Middle323_999.lean')},'proofAccepted':False})
decode='''def gapsWide : Nat → List Char → List Nat
  | _, [] => []
  | _, [_] => []
  | p, c::d::cs =>
      let v := c.toNat - 32 + 94*(d.toNat-32)
      let q := p + if p=2 then 2*v-1 else 2*v
      q :: gapsWide q cs
termination_by structural p cs => cs
'''
save('MiddleDecodeTail',decode+'theorem decode_eq : gapsWide 1997351 '+entry+'.toList = ['+','.join(map(str,numbers))+'] := by decide +kernel',
    ['Init'],'decode_eq','pure decoder only; no P/basis/checker and no prime claim',{'originalLo':1997351,'originalHi':2000003,'copiedEdges':len(numbers)})
save('MiddleBasisProduct','def basis : List Nat := '+basis+'\ndef P : Nat := '+P+'\ntheorem product_eq : basis.prod=P := by decide +kernel',
    ['Mathlib.Algebra.BigOperators.Group.List.Basic'],'product_eq','isolate only original607-prime product; no coverage scan/decoder/GCD',{'copiedOriginalBasis':True})
basis_check='''def trialPrimeCheck (p : Nat) : Bool :=
  decide (2≤p) && (List.range (Nat.sqrt p+1)).all (fun d => if d<2 then true else decide (p % d≠0))
def basisRangeCheck (ps : List Nat) (lo len : Nat) : Bool :=
  (List.range' lo len).all (fun q => !trialPrimeCheck q || ps.contains q)
'''
for count in (64,4473):
    save('MiddleBasisScan'+str(count),basis_check+'def basis : List Nat := '+basis+f'\ntheorem scan_eq : basisRangeCheck basis 0 {count}=true := by decide +kernel',
        ['Mathlib.Data.Nat.Sqrt','Mathlib.Data.List.Range'],'scan_eq','isolate only old basis coverage numeric check, excludes product/decoder/GCD',
        {'copiedOriginalBasis':True,'basisRangeLength':count,'fullSegmentNotRepeated':True})
save('MiddleBareGcd','def P : Nat := '+P+'\ntheorem gcd_eq : Nat.gcd 1997351 P=1 := by decide +kernel',
    ['Mathlib.Data.Nat.GCD.Basic'],'gcd_eq','isolate one original gcd logical reduction; no original shared numeric prelude or decoder',{'node':1997351,'nativeExternNotUsed':True})
save('MiddleFuelGcd',fuel+'def P : Nat := '+P+'\ntheorem gcd_eq : Nat.gcd 1997351 P=1 := fueledCoprime_sound (by decide +kernel : fueledCoprime 64 1997351 P=true)',
    ['Mathlib.Data.Nat.GCD.Basic'],'gcd_eq','same point via structural-fuel soundness; exhausted fuel false, no uniform sufficiency assumption',{'node':1997351,'fuel':64,'inputPExactlyCopied':True})
prime='''def F : Nat := FACTORIAL
theorem F_eq : F=Nat.factorial 4472 := by decide +kernel
theorem prime_of_fast {p : Nat} (h2 : 2≤p) (hB : p<4473*4473)
    (hg : fueledCoprime 64 p F=true) : p.Prime := by
  have hcop : Nat.gcd p F=1 := fueledCoprime_sound hg
  refine Nat.prime_def_le_sqrt.mpr ⟨h2,?_⟩
  intro d hd hs hdiv
  have hsqrt : Nat.sqrt p<4473 := Nat.sqrt_lt.mpr hB
  have hdf : d ∣ F := by
    rw [F_eq]
    exact Nat.dvd_factorial (by omega) (by omega)
  have hdone : d ∣ 1 := by simpa only [hcop] using Nat.dvd_gcd hdiv hdf
  have hle := Nat.le_of_dvd (by decide : 0<1) hdone
  omega
theorem prime_start : (1997351 : Nat).Prime := prime_of_fast (by decide) (by decide) (by decide +kernel)
'''.replace('FACTORIAL',F)
save('MiddleFactorialPrime',fuel+prime,['Mathlib.Data.Nat.Factorial.Basic','Mathlib.Data.Nat.GCD.Basic','Mathlib.Data.Nat.Prime.Defs','Lean.Elab.Tactic.Omega'],
    'prime_start','factorial4472 constant once + structural-fuel one-node actualPrime; no basisRange/prodP/decoder/fullS',{'node':1997351,'factorialInput':4472,'fuel':64,'newAssumptions':False})
identifier='HighPreludeNoExample'
namespace='Contribution.Numeric'+identifier
prefix=high[:high.index('def poolList :')].replace('Contribution.Range',namespace)
prefix=re.sub(r'set_option maxHeartbeats \d+','set_option maxHeartbeats 400000',prefix)
place=prefix.index('namespace ')
prefix=prefix[:place]+'set_option profiler true\nset_option profiler.threshold 100\n'+prefix[place:]
source=prefix+'theorem prelude_closed : True := by trivial\nend '+namespace+'\n#print axioms '+namespace+'.prelude_closed\n'
path=here/'probes'/(identifier+'.lean')
path.write_text(source,encoding='utf-8',newline='\n')
records.append({'id':identifier,'path':str(path.relative_to(repo)).replace('\\','/'),'bytes':path.stat().st_size,'sha256':sha(path),
    'root':namespace+'.prelude_closed','wallTimeoutSeconds':180,'heartbeatLimit':400000,'threads':1,
    'purpose':'source slicing repair only; remove anonymous non-consumer example; noS acceptance',
    'originalSource':{'path':str((repair/'High1000_30000.lean').relative_to(repo)).replace('\\','/'),'sha256':sha(repair/'High1000_30000.lean')},'proofAccepted':False})
manifest={'status':'new changed workload probes only; not executed','owner':'/root/b699_contribution_environment',
    'officialProductionCommit':'6a786f997e18e8f095762a2830d191b7e25e505e','officialPolicyCommit':'be220ff2519ecfd61b28ba9e477321e4287ef6b4',
    'fixedLeanCommit':'819816b2e0a3bf405af45ae5c7af2491d8f5bee6','proofAccepted':False,'nativeLeanExecuted':False,
    'hardDeadlineUtc':'2026-10-06T23:40:25Z','timeUTC':datetime.now(timezone.utc).isoformat(),
    'probes':records,'executionOrder':[r['id'] for r in records],'selectedBytes':sum(r['bytes'] for r in records),
    'scopeUnchanged':'final185..322/323..999/1000..30000 for every legalNat n/j,actualPrime>=i/both full choose/nooracle',
    'next':'scope verifies soundness and source-only gates; Root chooses subset, no old join1/16 repeat or cap increase'}
(here/'PROBE-REQUEST.json').write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({'manifestSha256':sha(here/'PROBE-REQUEST.json'),'probes':[(r['id'],r['bytes']) for r in records],
    'highLexicalSourceSha256':sha(here/'High1000_30000.lean')}))
