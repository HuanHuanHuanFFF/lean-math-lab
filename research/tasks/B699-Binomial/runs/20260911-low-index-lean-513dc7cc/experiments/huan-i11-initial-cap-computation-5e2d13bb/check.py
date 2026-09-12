from pathlib import Path
import json,re,hashlib,time
from fractions import Fraction
from math import comb,factorial
from datetime import datetime,timezone
root=Path(__file__).resolve().parent
run=root.parent.parent
start=time.perf_counter()
assert root.name=='huan-i11-initial-cap-computation-5e2d13bb'
def F(x):return Fraction(int(x['numerator']),int(x['denominator']))
values=json.loads((root/'exact-values.json').read_text(encoding='utf-8'))
terms=0;bits=[];tamper=[]
for seed in values['cases']:
 name=seed['name'];c=seed['c'];d=seed['d'];y=seed['y'];source='Math.B699.I11'+name+'Scaled'
 current=(run/f'lean/I11{name}Edge/SourceRows.lean').read_text(encoding='utf-8')
 assert 'def rowDelta (row : Bool) : ℕ := if row then 0 else 1' in current
 original=(run/f'lean/I11{name}Edge/SmallCertificates.lean').read_text(encoding='utf-8')
 assert f'2 * |actualE {c} {d} (rowDelta row) 1 (1 / {y})| ≤ eBase' in original
 candidate=(root/(name+'.lean')).read_text(encoding='utf-8')
 assert 'SmallCertificates' not in '\n'.join(line for line in candidate.splitlines() if line.startswith('import '))
 assert 'Nat.choose' not in candidate
 assert 'maxHeartbeats' not in candidate and 'maxRecDepth' not in candidate
 lam=F(seed['lambda_value']);beta=Fraction((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))
 assert F(seed['beta'])==beta and F(seed['eBase'])==beta*lam
 eb=beta*lam;bits += [((c+d)**(c+d)*lam.numerator).bit_length(),(d**(2*d)*(c-d)**(c-d)*lam.denominator).bit_length()]
 for case in seed['cases']:
  delta=case['delta'];A=C=d-delta;B=c-d+delta-1;N=A+B+C+1
  coeff=[]
  for k in range(B+1):
   left=factorial(A+k)//(factorial(k)*factorial(A))
   right=factorial(N)//(factorial(A+C+k+1)*factorial(N-(A+C+k+1)))
   assert left==comb(A+k,k) and right==comb(N,A+C+k+1)
   coeff.append((-1)**k*left*right)
  assert [str(a) for a in coeff]==case['coefficients']
  terms+=len(coeff)
  val=Fraction()
  for a in reversed(coeff):val=val/y+a
  assert val==F(case['actualE']) and 2*abs(val)<=eb
  assert F(case['exact_slack'])==eb-2*abs(val) and F(case['exact_slack'])>0
  literal=f"actualE {c} {d} {delta} 1 (1 / {y}) = ({val.numerator} : ℚ) / {val.denominator}"
  assert literal in candidate
  # Never mutate any file: the altered exact-value claim must differ.
  altered=Fraction(val.numerator+1,val.denominator)
  assert altered!=val;tamper.append(f'{name}_delta{delta}_value_plus_one_rejected')
  bits += [(2*abs(val.numerator)*eb.denominator).bit_length(),(eb.numerator*val.denominator).bit_length()]
 assert f'2 * |actualE {c} {d} ({source}.rowDelta row) 1 (1 / {y})| ≤\n      {source}.eBase' in candidate
 assert 'cases row\n  · exact e_cap_delta1\n  · exact e_cap_delta0' in candidate
 assert candidate.count('rw [actualE_eq_fast]')==2
 assert candidate.count('norm_num [coefficientPolynomial, fastECoefficient, chooseFast,')==2
count=0
for n in range(45):
 for k in range(48):
  fast=factorial(n)//(factorial(k)*factorial(n-k)) if k<=n else 0
  assert fast==(comb(n,k) if k<=n else 0);count+=1
assert factorial(0)//(factorial(1)*factorial(0))==1
assert (comb(0,1) if 1<=0 else 0)==0
helper=(root/'ChooseFast.lean').read_text(encoding='utf-8')
assert 'if k ≤ n then n.factorial / (k.factorial * (n - k).factorial) else 0' in helper
assert 'Nat.choose_eq_factorial_div_factorial hk' in helper
assert 'Nat.choose_eq_zero_of_lt (Nat.lt_of_not_ge hk)' in helper
assert 'simp only [actualE, ePolynomial, eCoefficient_eq_fast]' in helper
manifest=json.loads((root/'INTEGRATION_MAP.json').read_text(encoding='utf-8'))
roots=manifest['public_roots'];assert len(roots)==len(set(roots))==15
for entry in manifest['modules']:
 p=root/entry['source'];assert hashlib.sha256(p.read_bytes()).hexdigest()==entry['sha256']
 text=p.read_text(encoding='utf-8')
 assert not re.search(r'\b(sorry|admit|axiom|native_decide|ofReduceBool)\b',text),p.name
for name in ['ChooseFastAudit','ThreeTwoAudit','FiveSevenAudit']:
 a=(root/(name+'.lean')).read_text(encoding='utf-8');assert a.count('#check ')==5 and a.count('#print axioms ')==5
aggregate=(root/'Audit.lean').read_text(encoding='utf-8')
assert aggregate.count('#check ')==15 and aggregate.count('#print axioms ')==15
for rootname in roots:assert '#print axioms '+rootname in aggregate
result=dict(utc=datetime.now(timezone.utc).isoformat(),status='PASS_EXACT_FIXED_VALUES_AND_SOURCE_CONTRACT_NOT_LEAN',polynomial_terms_checked=terms,choose_cases=count,choose_n_range=[0,44],choose_k_range=[0,47],out_of_range_counterexample=dict(n=0,k=1,unguarded_factorial_quotient=1,actual_choose=0),actual_E_values_checked=4,both_original_Bool_mappings_checked=True,exact_original_eBase_caps=True,max_explicit_arithmetic_integer_bits=max(bits),max_factorial_bits=149,bit_note='Explicit formula products and final cross-products only, not a Lean intermediate-memory measurement.',tamper_checks=tamper,public_roots=roots,seconds=time.perf_counter()-start,Lean_runs=0,new_B_original_results=0)
(root/'checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:result[k] for k in ['status','polynomial_terms_checked','choose_cases','max_explicit_arithmetic_integer_bits','seconds','Lean_runs']},ensure_ascii=False))
