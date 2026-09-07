"""Independent translated-monomial bounds for main's fixed high-contact polynomials."""
from pathlib import Path
from fractions import Fraction as Q
from math import comb, floor, ceil
import json
HERE=Path(__file__).resolve().parent
DATA=json.loads((HERE/'selected-four-input.json').read_text())['rows']
L,U,M,N=83894387,83894390,10000000,50000;K=M**4

def expr(terms,x='z',y='d'):
    return ' + '.join(f'({c} : ℤ) * {x} ^ {a} * {y} ^ {b}' for a,b,c in terms if c) or '0'
code='\n'.join(f'import research.tasks.«B686-Four».round6.main.HighContact{x["row"]["name"]}' for x in DATA)
code+='''
import research.tasks.«B686-Four».round5.worker.ContactTail

set_option maxRecDepth 200000
set_option maxHeartbeats 12000000
namespace B686Round6A
open B686Round6High

theorem high_offset_monomial_bounds (w d : ℤ) (a b : ℕ) (hd : 0 ≤ d)
    (hl : 0 ≤ w) (hu : w ≤ 3 * d) :
    0 ≤ w ^ a * d ^ b ∧ w ^ a * d ^ b ≤ 3 ^ a * d ^ (a + b) := by
  have hw := pow_le_pow_left₀ hl hu a
  have hb : 0 ≤ d ^ b := pow_nonneg hd b
  have ht := mul_le_mul_of_nonneg_right hw hb
  simp only [mul_pow, pow_add] at ht ⊢
  exact ⟨mul_nonneg (pow_nonneg hl a) hb, by nlinarith only [ht]⟩

'''
records=[];guards=['high_offset_monomial_bounds']
for data in DATA:
    row=data['row'];name=row['name'];D=row['D'];p=row['terms'];bounds=[];exact=[]
    for degree in range(D+1):
        terms=[(a,b,c) for a,b,c in p if a+b==degree]
        coeff=[sum(c*comb(a,j)*L**(a-j)*M**(4-a) for a,b,c in terms if a>=j) for j in range(min(degree,4)+1)]
        lo=Q(coeff[0]+sum(min(c,0)*3**j for j,c in enumerate(coeff) if j),K)
        hi=Q(coeff[0]+sum(max(c,0)*3**j for j,c in enumerate(coeff) if j),K)
        low,up=floor(lo),ceil(hi);bounds.append((low,up))
        exact.append({'degree':degree,'exact_lower':str(lo),'exact_upper':str(hi),'lower':low,'upper':up,'shifted_coefficients':coeff})
        tag=name+'_'+str(degree)
        code+=f'def fourPart{tag} (z d : ℤ) : ℤ :=\n  '+expr(terms)+'\n\n'
        code+=f'''theorem fourPart{tag}_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    {low} * d ^ {degree} ≤ fourPart{tag} z d ∧ fourPart{tag} z d ≤ {up} * d ^ {degree} := by
'''
        if degree==0:
            code+=f'  norm_num [fourPart{tag}]\n\n';continue
        code+='  let w : ℤ := 10000000 * z - 83894387 * d\n'
        code+='  have hw0 : 0 ≤ w := by dsimp [w]; omega\n'
        code+='  have hwu : w ≤ 3 * d := by dsimp [w]; omega\n'
        for j in range(1,min(degree,4)+1):code+=f'  obtain ⟨h{j}l, h{j}u⟩ := high_offset_monomial_bounds w d {j} {degree-j} hd hw0 hwu\n'
        names=[f'h{j}{side}' for j in range(1,min(degree,4)+1) for side in ('l','u')]
        code+='  norm_num at '+' '.join(names)+'\n'
        code+=f'  have hdK : 0 ≤ d ^ {degree} := pow_nonneg hd {degree}\n'
        code+=f'  have hid : {K} * fourPart{tag} z d =\n      '+expr([(j,degree-j,c) for j,c in enumerate(coeff)],'w','d')+f' := by\n    dsimp [w, fourPart{tag}]\n    ring\n'
        code+='  constructor <;> nlinarith only ['+', '.join(['hid','hdK']+names)+']\n\n'
    final_lo,final_hi=map(Q,bounds[D])
    for k,(lo,hi) in enumerate(bounds[:D]):
        final_lo+=min(lo,0)/Q(N**(D-k));final_hi+=max(hi,0)/Q(N**(D-k))
    assert -N<final_lo<=final_hi<0,(name,float(final_lo),float(final_hi))
    code+=f'''theorem auxiliary{name}_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ {D} < auxiliary{name} z d ∧ auxiliary{name} z d < 0 := by
  have hd0 : 0 ≤ d := by omega
'''
    for k in range(D+1):code+=f'  obtain ⟨h{k}l, h{k}u⟩ := fourPart{name}_{k}_bounds z d hd0 hl hu\n'
    for k in range(D):
        code+=f'''  have hp{k} : {N**(D-k)} * d ^ {k} ≤ d ^ {D} := by
    have hpow := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd {D-k}
    have hmul := mul_le_mul_of_nonneg_right hpow (pow_nonneg hd0 {k})
    norm_num at hmul
    nlinarith only [hmul]
'''
    code+=f'  have hdD : 0 < d ^ {D} := by positivity\n'
    allparts=' + '.join(f'fourPart{name}_{k} z d' for k in range(D+1))
    code+=f'  have hid : auxiliary{name} z d = {allparts} := by\n'
    code+='    unfold auxiliary'+name+' '+' '.join(f'fourPart{name}_{k}' for k in range(D+1))+'\n    ring\n'
    code+='  rw [hid]\n  norm_num at h0l h0u\n'
    refs=[f'h{k}{side}' for k in range(D+1) for side in ('l','u')]+[f'hp{k}' for k in range(D)]+['hdD']
    code+='  constructor <;> nlinarith only ['+', '.join(refs)+']\n\n'
    guards.append(f'auxiliary{name}_bounds');records.append({'name':name,'D':D,'R':row['R'],'parts':exact,'normalized_interval':[str(final_lo),str(final_hi)]})
for name in guards:code+=f"/-- info: 'B686Round6A.{name}' depends on axioms: [propext, Classical.choice, Quot.sound] -/\n#guard_msgs in\n#print axioms {name}\n"
code+='end B686Round6A\n'
(HERE/'FourTail.lean').write_text(code)
(HERE/'four-tail-endpoints.json').write_text(json.dumps({'evidence':'independent exact Fraction translated homogeneous bounds; Lean acceptance separate','L':L,'U':U,'M':M,'N':N,'rows':records},indent=2)+'\n')
print('generated FourTail.lean',len(code),'chars')

# Separate pure height checking from local-contact proof dependencies.
import re
height=re.sub(r'import research.tasks.«B686-Four».round6.main.HighContact\d+\n','',code)
height=height.replace('B686Round6A','B686Round6AHeight')
definitions='\n'.join(f'def auxiliary{x["row"]["name"]} (z d : ℤ) : ℤ :=\n  '+expr(x['row']['terms'])+'\n' for x in DATA)
height=height.replace('open B686Round6High',definitions)
(HERE/'FourHeight.lean').write_text(height)
wrapper='\n'.join(f'import research.tasks.«B686-Four».round6.main.HighContact{x["row"]["name"]}' for x in DATA)
wrapper+='\nimport research.tasks.«B686-Four».round6.a.FourHeight\n\nnamespace B686Round6A\nopen B686Round6High\n'
for x in DATA:
    row=x['row'];name=row['name'];D=row['D']
    wrapper+=f'''
theorem auxiliary{name}_eq_height (z d : ℤ) :
    auxiliary{name} z d = B686Round6AHeight.auxiliary{name} z d := by
  unfold auxiliary{name} B686Round6AHeight.auxiliary{name}
  ring

theorem auxiliary{name}_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ {D} < auxiliary{name} z d ∧ auxiliary{name} z d < 0 := by
  rw [auxiliary{name}_eq_height]
  exact B686Round6AHeight.auxiliary{name}_bounds z d hd hl hu

/-- info: 'B686Round6A.auxiliary{name}_eq_height' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary{name}_eq_height
/-- info: 'B686Round6A.auxiliary{name}_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary{name}_bounds
'''
wrapper+='end B686Round6A\n'
(HERE/'FourTail.lean').write_text(wrapper)