"""Generate exact local-ideal certificates for the selected contact polynomial."""
from contact_search import F
from fractions import Fraction as Q
from math import comb,lcm
from functools import reduce
from pathlib import Path
import json
BASE=Path(__file__).resolve().parent
row=next(r for r in json.loads((BASE/'contact_search.json').read_text())['rows'] if r['slots']==[1,2,4])
G={(a,b):Q(c) for a,b,c in row['auxiliaries'][0]['terms']}
def clean(P):return {m:c for m,c in P.items() if c}
def add(P,Qq):
 P=P.copy()
 for m,c in Qq.items():P[m]=P.get(m,0)+c
 return clean(P)
def mul(P,Qq):
 out={}
 for (a,b),c in P.items():
  for (j,k),v in Qq.items():out[a+j,b+k]=out.get((a+j,b+k),0)+c*v
 return clean(out)
def shift(P,v):
 out={}
 for (a,b),c in P.items():
  for j in range(a+1):out[j,b]=out.get((j,b),0)+c*comb(a,j)*v**(a-j)
 return clean(out)
def cert(i):
 zi=9-3*i;localF=shift(F,zi);rem=shift(G,zi);H={};deriv=localF[1,0]
 for degree in range(6):
  for a in range(degree,0,-1):
   b=degree-a;c=rem.get((a,b),0)
   if not c:continue
   mon={(a-1,b):c/deriv}
   H=add(H,mon);rem=add(rem,{m:-c for m,c in mul(mon,localF).items()})
  assert rem.get((0,degree),0)==0,(i,degree,rem.get((0,degree)))
 assert all(a+b>=6 for a,b in rem)
 assert add(shift(G,zi),{m:-c for m,c in add(mul(H,localF),rem).items()})=={}
 den=reduce(lcm,(Q(c).denominator for c in list(H.values())+list(rem.values())),1)
 return dict(slot=i,root=zi,denominator=den,H=[[a,b,int(c*den)] for (a,b),c in sorted(H.items())],remainder=[[a,b,int(c*den)] for (a,b),c in sorted(rem.items())])
def lean_expr(terms,x='z',y='d',q=None):
 chunks=[]
 for a,b,c in terms:
  factors=[str(abs(c))]
  if a:factors.append(x if a==1 else f'{x} ^ {a}')
  if b:factors.append(y if b==1 else f'{y} ^ {b}')
  if q and a+b>6:factors.append(q if a+b-6==1 else f'{q} ^ {a+b-6}')
  chunks.append(('- ' if c<0 else '+ ')+' * '.join(factors))
 s=' '.join(chunks)
 return s[2:] if s.startswith('+ ') else s
certs=[cert(i) for i in (1,2,4)]
(BASE/'contact_certificate.json').write_text(json.dumps(dict(slots=certs),indent=2)+'\n')
lines=['import Mathlib.Tactic.Ring','import Mathlib.RingTheory.Coprime.Basic','','namespace B686Round5Contact','','def curve (z d : ℤ) : ℤ :=', '  '+lean_expr([[a,b,c] for (a,b),c in F.items()]),'','def auxiliary (z d : ℤ) : ℤ :=','  '+lean_expr(row['auxiliaries'][0]['terms']),'']
for c in certs:
 i=c['slot'];r=c['root'];K=c['denominator']
 lines+= [f'def quotient{i} (y d : ℤ) : ℤ :=','  '+lean_expr(c['H'],'y','d'),f'def residual{i} (u v q : ℤ) : ℤ :=','  '+lean_expr(c['remainder'],'u','v','q'),'',f'set_option maxHeartbeats 0 in',f'theorem identity{i} (u v q : ℤ) :',f'    {K} * auxiliary ({r} + q * u) (q * v) =',f'      quotient{i} (q * u) (q * v) * curve ({r} + q * u) (q * v) +',f'        q ^ 6 * residual{i} u v q := by',f'  unfold auxiliary quotient{i} curve residual{i}', '  ring','', f'theorem local{i} (z d q : ℤ) (hy : q ∣ z - ({r})) (hd : q ∣ d)',f'    (hcurve : curve z d = 0) : q ^ 6 ∣ {K} * auxiliary z d := by', '  obtain ⟨u, hu⟩ := hy','  obtain ⟨v, rfl⟩ := hd',f'  have hz : z = {r} + q * u := by omega','  subst z',f'  refine ⟨residual{i} u v q, ?_⟩',f'  simpa only [hcurve, mul_zero, zero_add] using identity{i} u v q','']
lines += [f"/-- info: 'B686Round5Contact.{name}{i}' depends on axioms: [propext, Quot.sound] -/\n#guard_msgs in\n#print axioms {name}{i}" for i in (1,2,4) for name in ('identity','local')]
lines+=['end B686Round5Contact','']
(BASE/'ContactCertificates.lean').write_text('\n'.join(lines))
for c in certs:print(c['slot'],c['denominator'],len(c['H']),len(c['remainder']))
