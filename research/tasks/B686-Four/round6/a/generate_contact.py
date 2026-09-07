"""Exact D5/R6 certificates for four center-containing support triples."""
from pathlib import Path
from fractions import Fraction as Q
from math import comb, lcm
from functools import reduce
import json
HERE=Path(__file__).resolve().parent
DATA=json.loads((HERE.parents[1]/'round5/main/contact_search.json').read_text())['rows']
F={(5,0):1,(3,2):-40,(2,3):-200,(1,4):-420,(0,5):-340,(3,0):-45,(1,2):540,(0,3):900,(1,0):324}
CHOICES=[([1,2,3],323,12),([1,3,4],29,-5),([2,3,5],29,5),([3,4,5],323,-12)]
def clean(p):return {m:c for m,c in p.items() if c}
def add(p,q):
    p=p.copy()
    for m,c in q.items():p[m]=p.get(m,0)+c
    return clean(p)
def mul(p,q):
    out={}
    for (a,b),c in p.items():
        for (j,k),v in q.items():out[a+j,b+k]=out.get((a+j,b+k),0)+c*v
    return clean(out)
def shift(p,v):
    out={}
    for (a,b),c in p.items():
        for j in range(a+1):out[j,b]=out.get((j,b),0)+c*comb(a,j)*v**(a-j)
    return clean(out)
def cert(g,i):
    zi=9-3*i;localF=shift(F,zi);rem=shift(g,zi);h={};deriv=localF[1,0]
    for degree in range(6):
        for a in range(degree,0,-1):
            b=degree-a;c=rem.get((a,b),0)
            if not c:continue
            mon={(a-1,b):c/deriv};h=add(h,mon)
            rem=add(rem,{m:-c for m,c in mul(mon,localF).items()})
        assert rem.get((0,degree),0)==0,(i,degree)
    assert all(a+b>=6 for a,b in rem)
    assert add(shift(g,zi),{m:-c for m,c in add(mul(h,localF),rem).items()})=={}
    den=reduce(lcm,(Q(c).denominator for c in list(h.values())+list(rem.values())),1)
    assert 6**30%den==0
    return {'slot':i,'root':zi,'denominator':den,'quotient':[[a,b,int(c*den)] for (a,b),c in sorted(h.items())],'remainder':[[a,b,int(c*den)] for (a,b),c in sorted(rem.items())]}
def expr(terms,x='z',y='d',q=None):
    chunks=[]
    for a,b,c in terms:
        if not c:continue
        factors=[str(abs(c))]
        if a:factors.append(x if a==1 else f'{x} ^ {a}')
        if b:factors.append(y if b==1 else f'{y} ^ {b}')
        if q and a+b>6:factors.append(q if a+b-6==1 else f'{q} ^ {a+b-6}')
        chunks.append(('- ' if c<0 else '+ ')+' * '.join(factors))
    s=' '.join(chunks) or '0'
    return s[2:] if s.startswith('+ ') else s
lines=['import research.tasks.«B686-Four».round5.main.ContactOriginal','','namespace B686Round6A','open B686Round4Shift B686Round5Contact','']
records=[];guards=[]
for slots,sa,sb in CHOICES:
    name=''.join(map(str,slots));r=next(r for r in DATA if r['slots']==slots);g={}
    for scale,vec in zip((sa,sb),r['auxiliaries']):
        for a,b,c in vec['terms']:g[a,b]=g.get((a,b),0)+Q(scale*c)
    g=clean(g);terms=[[a,b,int(c)] for (a,b),c in sorted(g.items())];cs=[cert(g,i) for i in slots]
    records.append({'slots':slots,'name':name,'combination':[sa,sb],'terms':terms,'certificates':cs})
    lines += [f'def auxiliary{name} (z d : ℤ) : ℤ :=','  '+expr(terms),'']
    for c in cs:
        i=c['slot'];r=c['root'];K=c['denominator'];tag=name+'_'+str(i)
        lines += [f'def quotient{tag} (y d : ℤ) : ℤ :=','  '+expr(c['quotient'],'y','d'),f'def residual{tag} (u v q : ℤ) : ℤ :=','  '+expr(c['remainder'],'u','v','q'),'',f'set_option maxHeartbeats 0 in',f'theorem identity{tag} (u v q : ℤ) :',f'    {K} * auxiliary{name} ({r} + q * u) (q * v) =',f'      quotient{tag} (q * u) (q * v) * curve ({r} + q * u) (q * v) +',f'        q ^ 6 * residual{tag} u v q := by',f'  unfold auxiliary{name} quotient{tag} curve residual{tag}','  ring','',f'theorem contact{tag} (z d q : ℤ) (hy : q ∣ z - ({r})) (hd : q ∣ d)',f'    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary{name} z d := by',f'  have hK : IsCoprime q ({K} : ℤ) :=',f'    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : ({K} : ℤ) ∣ 6 ^ 30)',f'  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left','  obtain ⟨u, hu⟩ := hy','  obtain ⟨v, rfl⟩ := hd',f'  have hz : z = {r} + q * u := by omega','  subst z','  try simp only [zero_add] at hcurve',f'  refine ⟨residual{tag} u v q, ?_⟩',f'  simpa only [hcurve, mul_zero, zero_add] using identity{tag} u v q','']
        guards += [(f'identity{tag}','propext, Quot.sound'),(f'contact{tag}','propext, Classical.choice, Quot.sound')]
    a,b,c=slots
    lines += [f'theorem three_position_contact{name} (n d P Q R : ℤ)', '    (heq : product 5 (n + d) = 4 * product 5 n)',f'    (hd : d = P * Q * R) (hP : P ∣ n + {a}) (hQ : Q ∣ n + {b}) (hR : R ∣ n + {c})','    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hQR : IsCoprime Q R)','    (hP6 : IsCoprime P (6 : ℤ)) (hQ6 : IsCoprime Q (6 : ℤ))',f'    (hR6 : IsCoprime R (6 : ℤ)) : d ^ 6 ∣ auxiliary{name} (3 * (n + 3) - d) d := by','  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R','  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R','  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)']
    for x,i in zip(('P','Q','R'),slots):
        r=9-3*i
        lines += [f'  have h{x.lower()} : {x} ∣ 3 * (n + 3) - d - ({r}) := by',f'    have hid : 3 * (n + 3) - d - ({r}) = 3 * (n + {i}) - d := by ring','    rw [hid]',f'    exact dvd_sub (dvd_mul_of_dvd_right h{x} 3) h{x}d']
    lines += ['  have hc := curve_of_original n d heq']
    for x,i in zip(('P','Q','R'),slots):lines += [f'  have h{x.lower()}6 := contact{name}_{i} _ _ _ h{x.lower()} h{x}d h{x}6 hc']
    lines += ['  rw [hd] at hp6 hq6 hr6 ⊢','  rw [mul_pow, mul_pow]','  exact (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hp6 hq6) hr6','']
    guards += [(f'three_position_contact{name}','propext, Classical.choice, Quot.sound')]
for name,axioms in guards:lines += [f"/-- info: 'B686Round6A.{name}' depends on axioms: [{axioms}] -/",'#guard_msgs in',f'#print axioms {name}']
lines += ['end B686Round6A','']
(HERE/'Contact.lean').write_text('\n'.join(lines))
(HERE/'contact-certificates.json').write_text(json.dumps({'evidence':'exact local polynomial division identities; Lean check separate','rows':records},indent=2)+'\n')
print([(r['name'],r['combination'],[(c['slot'],c['denominator']) for c in r['certificates']]) for r in records])
