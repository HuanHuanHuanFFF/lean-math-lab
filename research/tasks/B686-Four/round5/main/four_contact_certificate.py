"""Exact 11-contact certificates for the four noncentral positions."""
from pathlib import Path
from fractions import Fraction as Q
from functools import reduce
from math import lcm
import json
import contact_certificate as C
BASE=Path(__file__).resolve().parent
v=json.loads((BASE/'four-position-probe.json').read_text())['valid'][0]
G={(a,b):Q(c) for a,b,c in v['terms']};R=11

def certificate(i):
 zi=9-3*i;f=C.shift(C.F,zi);rem=C.shift(G,zi);H={};deriv=f[1,0]
 for deg in range(R):
  for a in range(deg,0,-1):
   b=deg-a;c=rem.get((a,b),0)
   if not c:continue
   term={(a-1,b):c/deriv};H=C.add(H,term);rem=C.add(rem,{m:-x for m,x in C.mul(term,f).items()})
  assert rem.get((0,deg),0)==0
 assert all(a+b>=R for a,b in rem)
 assert C.add(C.shift(G,zi),{m:-x for m,x in C.add(C.mul(H,f),rem).items()})=={}
 K=reduce(lcm,(Q(c).denominator for c in list(H.values())+list(rem.values())),1)
 k=K;es=[]
 for p in (2,3):
  e=0
  while k%p==0:k//=p;e+=1
  es.append(e)
 assert k==1
 return dict(slot=i,root=zi,denominator=K,six_exponent=max(es),H=[[a,b,int(c*K)] for (a,b),c in sorted(H.items())],remainder=[[a,b,int(c*K)] for (a,b),c in sorted(rem.items())])

def expr(terms,x='z',y='d',q=None):
 if not q:return C.lean_expr(terms,x,y)
 out=[]
 for a,b,c in terms:
  factors=[str(abs(c))]
  if a:factors.append(x if a==1 else f'{x} ^ {a}')
  if b:factors.append(y if b==1 else f'{y} ^ {b}')
  if a+b>R:factors.append(q if a+b-R==1 else f'{q} ^ {a+b-R}')
  out.append(('- ' if c<0 else '+ ')+' * '.join(factors))
 s=' '.join(out);return s[2:] if s.startswith('+ ') else s
cs=[certificate(i) for i in (1,2,4,5)]
(BASE/'four-contact-certificate.json').write_text(json.dumps(dict(terms=v['terms'],certificates=cs),indent=2)+'\n')
lines=['import research.tasks.«B686-Four».round5.main.ContactOriginal','','namespace B686Round5Contact','open B686Round4Shift','','def fourAuxiliary (z d : ℤ) : ℤ :=','  '+expr(v['terms']),'']
for c in cs:
 i=c['slot'];r=c['root'];K=c['denominator'];N=c['six_exponent']
 lines += [f'def fourQuotient{i} (y d : ℤ) : ℤ :=','  '+expr(c['H'],'y','d'),f'def fourResidual{i} (u v q : ℤ) : ℤ :=','  '+expr(c['remainder'],'u','v','q'),'',f'set_option maxHeartbeats 0 in',f'theorem fourIdentity{i} (u v q : ℤ) :',f'    {K} * fourAuxiliary ({r} + q * u) (q * v) =',f'      fourQuotient{i} (q * u) (q * v) * curve ({r} + q * u) (q * v) +',f'        q ^ 11 * fourResidual{i} u v q := by',f'  unfold fourAuxiliary fourQuotient{i} curve fourResidual{i}','  ring','',f'theorem fourContact{i} (z d q : ℤ) (hy : q ∣ z - ({r})) (hd : q ∣ d)',f'    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 11 ∣ fourAuxiliary z d := by',f'  have hK : IsCoprime q ({K} : ℤ) :=',f'    (hc.pow_right (n := {N})).of_isCoprime_of_dvd_right (by norm_num)',f'  apply (hK.pow_left (m := 11)).dvd_of_dvd_mul_left','  obtain ⟨u, hu⟩ := hy','  obtain ⟨v, rfl⟩ := hd',f'  have hz : z = {r} + q * u := by omega','  subst z',f'  refine ⟨fourResidual{i} u v q, ?_⟩',f'  simpa only [hcurve, mul_zero, zero_add] using fourIdentity{i} u v q','']
lines += [f"/-- info: 'B686Round5Contact.{name}{i}' depends on axioms: [{('propext, Quot.sound' if name == 'fourIdentity' else 'propext, Classical.choice, Quot.sound')}] -/\n#guard_msgs in\n#print axioms {name}{i}" for i in (1,2,4,5) for name in ('fourIdentity','fourContact')]+['end B686Round5Contact','']
(BASE/'FourContact.lean').write_text('\n'.join(lines))
for c in cs:print(c['slot'],c['denominator'],c['six_exponent'],len(c['H']),len(c['remainder']))
