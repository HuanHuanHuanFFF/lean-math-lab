"""Generate exact shifted homogeneous bounds, preserving term cancellation."""
from pathlib import Path
from fractions import Fraction as Q
from math import comb, floor, ceil
import json
HERE=Path(__file__).resolve().parent
DATA=json.loads((HERE/'contact-certificates.json').read_text())['rows']
L,U,M,N=83894387,83894390,10000000,50000
K=M**4

def expr(terms,x='z',y='d'):
    return ' + '.join(f'({c} : ℤ) * {x} ^ {a} * {y} ^ {b}' for a,b,c in terms if c) or '0'
code='''import research.tasks.«B686-Four».round6.a.Contact
import research.tasks.«B686-Four».round5.worker.ContactTail

set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A

theorem offset_monomial_bounds (w d : ℤ) (a b : ℕ) (hd : 0 ≤ d)
    (hl : 0 ≤ w) (hu : w ≤ 3 * d) :
    0 ≤ w ^ a * d ^ b ∧ w ^ a * d ^ b ≤ 3 ^ a * d ^ (a + b) := by
  have hw := pow_le_pow_left₀ hl hu a
  have hb : 0 ≤ d ^ b := pow_nonneg hd b
  have ht := mul_le_mul_of_nonneg_right hw hb
  simp only [mul_pow, pow_add] at ht ⊢
  exact ⟨mul_nonneg (pow_nonneg hl a) hb, by nlinarith only [ht]⟩

'''
records=[];guards=['offset_monomial_bounds']
for row in DATA:
    name=row['name'];p=row['terms'];bounds=[];exact=[]
    for degree in range(6):
        terms=[(a,b,c) for a,b,c in p if a+b==degree]
        coeff=[sum(c*comb(a,j)*L**(a-j)*M**(4-a) for a,b,c in terms if a>=j) for j in range(min(degree,4)+1)]
        lo=Q(coeff[0]+sum(min(c,0)*3**j for j,c in enumerate(coeff) if j),K)
        hi=Q(coeff[0]+sum(max(c,0)*3**j for j,c in enumerate(coeff) if j),K)
        low,up=floor(lo),ceil(hi);bounds.append((low,up))
        exact.append({'degree':degree,'exact_lower':str(lo),'exact_upper':str(hi),'lower':low,'upper':up,'shifted_coefficients':coeff})
        tag=name+'_'+str(degree)
        code+=f'def part{tag} (z d : ℤ) : ℤ :=\n  '+expr(terms)+'\n\n'
        code+=f'''theorem part{tag}_bounds (z d : ℤ) (hd : 0 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    {low} * d ^ {degree} ≤ part{tag} z d ∧ part{tag} z d ≤ {up} * d ^ {degree} := by
'''
        if degree==0:
            code+=f'  norm_num [part{tag}]\n\n';continue
        code+='  let w : ℤ := 10000000 * z - 83894387 * d\n'
        code+='  have hw0 : 0 ≤ w := by dsimp [w]; omega\n'
        code+='  have hwu : w ≤ 3 * d := by dsimp [w]; omega\n'
        for j in range(1,min(degree,4)+1):code+=f'  obtain ⟨h{j}l, h{j}u⟩ := offset_monomial_bounds w d {j} {degree-j} hd hw0 hwu\n'
        names=[f'h{j}{side}' for j in range(1,min(degree,4)+1) for side in ('l','u')]
        code+='  norm_num at '+' '.join(names)+'\n'
        code+=f'  have hdK : 0 ≤ d ^ {degree} := pow_nonneg hd {degree}\n'
        shifted=[(j,degree-j,c) for j,c in enumerate(coeff)]
        code+=f'  have hid : {K} * part{tag} z d =\n      '+expr(shifted,'w','d')+f' := by\n    dsimp [w, part{tag}]\n    ring\n'
        code+='  constructor <;> nlinarith only ['+', '.join(['hid','hdK']+names)+']\n\n'
    R=sum(max(abs(x),abs(y)) for x,y in bounds[:4]);lo4,hi4=bounds[4];lo5,hi5=bounds[5]
    final_lo=Q(lo5)+min(lo4,0)/Q(N)-Q(R,N*N)
    final_hi=Q(hi5)+max(hi4,0)/Q(N)+Q(R,N*N)
    positive=final_lo>0
    assert (positive and final_hi<N) or (final_hi<0 and final_lo>-N),(name,float(final_lo),float(final_hi))
    if positive:conclusion=f'0 < auxiliary{name} z d ∧ auxiliary{name} z d < 50000 * d ^ 5'
    else:conclusion=f'-50000 * d ^ 5 < auxiliary{name} z d ∧ auxiliary{name} z d < 0'
    code+=f'''theorem auxiliary{name}_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    {conclusion} := by
  have hd0 : 0 ≤ d := by omega
  have hd1 : 1 ≤ d := by omega
'''
    for k in range(6):code+=f'  obtain ⟨h{k}l, h{k}u⟩ := part{name}_{k}_bounds z d hd0 hl hu\n'
    code+='''  have ha : (1 : ℤ) ≤ d ^ 3 := one_le_pow₀ hd1
  have hb : d ^ 1 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 1 ≤ 3)
  have hc : d ^ 2 ≤ d ^ 3 := pow_le_pow_right₀ hd1 (by decide : 2 ≤ 3)
'''
    rest=' + '.join(f'part{name}_{k} z d' for k in range(4))
    code+=f'  have hrest : -{R} * d ^ 3 ≤ {rest} ∧\n      {rest} ≤ {R} * d ^ 3 := by\n'
    code+='    norm_num at h0l h0u h1l h1u hb\n'
    code+='    constructor <;> nlinarith only [h0l,h0u,h1l,h1u,h2l,h2u,h3l,h3u,ha,hb,hc]\n'
    code+='''  have h54 : 50000 * d ^ 4 ≤ d ^ 5 := by
    have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 4)
    nlinarith only [h]
  have h53 : 2500000000 * d ^ 3 ≤ d ^ 5 := by
    have hsq := pow_le_pow_left₀ (by decide : (0 : ℤ) ≤ 50000) hd 2
    have h := mul_le_mul_of_nonneg_right hsq (pow_nonneg hd0 3)
    norm_num at h
    nlinarith only [h]
  have hd5 : 0 < d ^ 5 := by positivity
'''
    allparts=' + '.join(f'part{name}_{k} z d' for k in range(6))
    code+=f'  have hid : auxiliary{name} z d = {allparts} := by\n'
    code+='    unfold auxiliary'+name+' '+' '.join(f'part{name}_{k}' for k in range(6))+'\n    ring\n'
    code+='  rw [hid]\n  constructor <;> nlinarith only [hrest.1,hrest.2,h4l,h4u,h5l,h5u,h54,h53,hd5]\n\n'
    guards.append(f'auxiliary{name}_bounds')
    records.append({'name':name,'combination':row['combination'],'cutoff':N,'parts':exact,'rest_bound':R,'normalized_interval':[str(final_lo),str(final_hi)],'positive':positive})
for name in guards:code+=f"/-- info: 'B686Round6A.{name}' depends on axioms: [propext, Classical.choice, Quot.sound] -/\n#guard_msgs in\n#print axioms {name}\n"
code+='end B686Round6A\n'
(HERE/'Tail.lean').write_text(code)
(HERE/'tail-endpoints.json').write_text(json.dumps({'evidence':'exact Fraction translated homogeneous bounds; Lean acceptance separate','L':L,'U':U,'M':M,'rows':records},indent=2)+'\n')
for r in records:print(r['name'],r['combination'],r['rest_bound'],[float(Q(x)) for x in r['normalized_interval']])
