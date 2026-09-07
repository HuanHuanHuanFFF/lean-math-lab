"""Emit checked integer local identities for the four selected support classes."""
import json
from fractions import Fraction as Q
from math import comb,lcm
from functools import reduce
from pathlib import Path
from four_contact_probe import old

HERE=Path(__file__).resolve().parent

def clean(P):return {m:c for m,c in P.items() if c}
def add(P,T):
    P=P.copy()
    for m,c in T.items():P[m]=P.get(m,0)+c
    return clean(P)
def mul(P,T):
    out={}
    for (a,b),c in P.items():
        for (j,k),v in T.items():out[a+j,b+k]=out.get((a+j,b+k),0)+c*v
    return clean(out)
def shift(P,v):
    out={}
    for (a,b),c in P.items():
        for j in range(a+1):out[j,b]=out.get((j,b),0)+c*comb(a,j)*v**(a-j)
    return clean(out)
def certificate(G,R,i):
    root=9-3*i;F=shift(old.F,root);rem=shift(G,root);T={};derivative=F[1,0]
    for degree in range(R):
        for a in range(degree,0,-1):
            b=degree-a;c=rem.get((a,b),0)
            if not c:continue
            mon={(a-1,b):Q(c)/derivative}
            T=add(T,mon);rem=add(rem,{m:-x for m,x in mul(mon,F).items()})
        assert not rem.get((0,degree),0),(i,degree)
    assert all(a+b>=R for a,b in rem)
    assert not add(shift(G,root),{m:-c for m,c in add(mul(T,F),rem).items()})
    K=reduce(lcm,(Q(c).denominator for c in list(T.values())+list(rem.values())),1)
    k=K;exponents=[]
    for p in (2,3):
        e=0
        while k%p==0:k//=p;e+=1
        exponents.append(e)
    assert k==1
    return {'slot':i,'root':root,'K':K,'N':max(exponents),
            'quotient':[[a,b,int(c*K)] for (a,b),c in sorted(T.items())],
            'residual':[[a,b,int(c*K)] for (a,b),c in sorted(rem.items())]}

def expr(terms,x='z',y='d',q=None,R=0):
    chunks=[]
    for a,b,c in terms:
        if not c:continue
        factors=[f'({abs(c)} : ℤ)']
        for v,e in ((x,a),(y,b),(q,a+b-R if q else 0)):
            if v and e:factors.append(v if e==1 else f'{v} ^ {e}')
        chunks.append(('- ' if c<0 else '+ ')+' * '.join(factors))
    s=' '.join(chunks)
    return s[2:] if s.startswith('+ ') else (s or '0')

def generate(row):
    name=row['name'];R=row['R'];G={(a,b):Q(c) for a,b,c in row['terms']}
    cs=[certificate(G,R,i) for i in row['slots']]
    lines=['import research.tasks.«B686-Four».round5.main.ContactOriginal','',
           'set_option maxRecDepth 200000','set_option maxHeartbeats 2000000','set_option autoImplicit false','namespace B686Round6High',
           'open B686Round4Shift B686Round5Contact','',
           f'def auxiliary{name} (z d : ℤ) : ℤ :=','  '+expr(row['terms']),'']
    guards=[]
    for c in cs:
        i,root,K,N=c['slot'],c['root'],c['K'],c['N'];suffix=f'{name}_{i}'
        lines += [f'def quotient{suffix} (y d : ℤ) : ℤ :=','  '+expr(c['quotient'],'y','d'),
                  f'def residual{suffix} (u v q : ℤ) : ℤ :=','  '+expr(c['residual'],'u','v','q',R),'',
                  'set_option maxHeartbeats 0 in',f'theorem identity{suffix} (u v q : ℤ) :',
                  f'    {K} * auxiliary{name} ({root} + q * u) (q * v) =',
                  f'      quotient{suffix} (q * u) (q * v) * curve ({root} + q * u) (q * v) +',
                  f'        q ^ {R} * residual{suffix} u v q := by',
                  f'  unfold auxiliary{name} quotient{suffix} curve residual{suffix}','  ring','',
                  f'theorem contact{suffix} (z d q : ℤ) (hy : q ∣ z - ({root})) (hd : q ∣ d)',
                  f'    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ {R} ∣ auxiliary{name} z d := by',
                  f'  have hK : IsCoprime q ({K} : ℤ) :=',
                  f'    (hc.pow_right (n := {N})).of_isCoprime_of_dvd_right (by norm_num)',
                  f'  apply (hK.pow_left (m := {R})).dvd_of_dvd_mul_left',
                  '  obtain ⟨u, hu⟩ := hy','  obtain ⟨v, rfl⟩ := hd',
                  f'  have hz : z = {root} + q * u := by omega','  subst z','  try simp only [zero_add] at hcurve',
                  f'  refine ⟨residual{suffix} u v q, ?_⟩',
                  f'  simpa only [hcurve, mul_zero, zero_add] using identity{suffix} u v q','']
        guards.extend([(f'identity{suffix}','propext, Quot.sound'),(f'contact{suffix}','propext, Classical.choice, Quot.sound')])
    a,b,c,e=row['slots']
    lines += [f'theorem four_position_contact{name} (n d P Q R S : ℤ)',
              '    (heq : product 5 (n + d) = 4 * product 5 n)',
              '    (hd : d = P * Q * R * S)',
              f'    (hP : P ∣ n + {a}) (hQ : Q ∣ n + {b}) (hR : R ∣ n + {c}) (hS : S ∣ n + {e})',
              '    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hPS : IsCoprime P S)',
              '    (hQR : IsCoprime Q R) (hQS : IsCoprime Q S) (hRS : IsCoprime R S)',
              f'    (h6 : IsCoprime d (6 : ℤ)) : d ^ {R} ∣ auxiliary{name} (3 * (n + 3) - d) d := by',
              '  have hPd : P ∣ d := by','    rw [hd]',
              '    exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_right P Q) R) S',
              '  have hQd : Q ∣ d := by','    rw [hd]',
              '    exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_left Q P) R) S',
              '  have hRd : R ∣ d := by','    rw [hd]',
              '    exact dvd_mul_of_dvd_left (dvd_mul_left R (P * Q)) S',
              '  have hSd : S ∣ d := by rw [hd]; exact dvd_mul_left S (P * Q * R)']
    for v,i in zip('PQRS',row['slots']):
        root=9-3*i
        lines += [f'  have h{v}root : {v} ∣ 3 * (n + 3) - d - ({root}) := by',
                  f'    have hid : 3 * (n + 3) - d - ({root}) = 3 * (n + {i}) - d := by ring',
                  '    rw [hid]',f'    exact dvd_sub (dvd_mul_of_dvd_right h{v} 3) h{v}d']
    lines += ['  have hc := curve_of_original n d heq']
    for v,i in zip('PQRS',row['slots']):
        lines += [f'  have h{v}pow := contact{name}_{i} _ _ _ h{v}root h{v}d (h6.of_isCoprime_of_dvd_left h{v}d) hc']
    lines += ['  have hPQR := (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hPpow hQpow) hRpow',
              '  have hall := ((hPS.pow.mul_left hQS.pow).mul_left hRS.pow).mul_dvd hPQR hSpow',
              '  simpa only [← mul_pow, ← hd] using hall','']
    guards.append((f'four_position_contact{name}','propext, Classical.choice, Quot.sound'))
    for theorem,axioms in guards:
        lines += [f"/-- info: 'B686Round6High.{theorem}' depends on axioms: [{axioms}] -/",'#guard_msgs in',f'#print axioms {theorem}']
    lines+=['end B686Round6High','']
    (HERE/f'HighContact{name}.lean').write_text('\n'.join(lines),encoding='utf-8')
    (HERE/f'high-contact-{name}.json').write_text(json.dumps(dict(row=row,certificates=cs),indent=2)+'\n',encoding='utf-8')
    print(name,'R',R,[(c['slot'],c['K'],len(c['quotient']),len(c['residual'])) for c in cs],flush=True)

if __name__=='__main__':
    for row in json.loads((HERE/'selected-four.json').read_text())['rows']:generate(row)
