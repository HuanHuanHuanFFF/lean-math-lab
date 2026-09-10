"""Exact non-vacuous algebra diagnostics; not a proof by bounded extrapolation."""
from pathlib import Path
from math import factorial,comb,prod,gcd,isqrt
from functools import reduce
import json
if not __debug__:raise RuntimeError('Do not run proof checks with -O/-OO')
ROOT=Path(__file__).resolve().parents[1]
def primes(N):return [p for p in range(2,N+1) if all(p%d for d in range(2,isqrt(p)+1))]
def vf(n,p):
    out=0
    while n:n//=p;out+=n
    return out
def vc(n,i,p):return vf(n,p)-vf(i,p)-vf(n-i,p)
def vp(n,p):
    e=0
    while n%p==0:n//=p;e+=1
    return e
def trim(a):
    while len(a)>1 and a[-1]==0:a.pop()
    return a
def mul(a,b):
    z=[0]*(len(a)+len(b)-1)
    for j,x in enumerate(a):
        for k,y in enumerate(b):z[j+k]+=x*y
    return trim(z)
def sub(a,b):
    z=[0]*max(len(a),len(b))
    for j,x in enumerate(a):z[j]+=x
    for j,x in enumerate(b):z[j]-=x
    return trim(z)
def polynomials(c,d,m,delta):
    u=d*m-delta;B=c*m-u-1;N=2*u+B+1
    P=[(-1)**(u+r)*comb(N,r)*comb(2*u-r,u) for r in range(u+1)]
    Q=[(-1)**u*comb(2*u-r,u)*comb(B+r,r) for r in range(u+1)]
    E=[(-1)**r*comb(u+r,r)*comb(N,2*u+r+1) for r in range(B+1)]
    left=sub(P,mul([(-1)**r*comb(c*m,r) for r in range(c*m+1)],Q))
    assert left==trim([0]*(2*u+1)+E)
    G=reduce(gcd,map(abs,Q));assert all(x%G==0 for x in P)
    return P,Q,E
if __name__=='__main__':
    triples=[(28,14),(29,14),(42,14),(52,17),(78,26),(126,14),(126,63),(6591,2197),(6592,2197)]
    rows=[]
    for n,j in triples:
        i=13;k=n-j;ps=primes(n);V=1;D=1;Da=[1]*i;Va=[1]*i
        factors=[]
        for p in ps:
            if p<i:continue
            e=vc(n,i,p)
            if not e:continue
            a=next(a for a in range(i) if (n-a)%p==0)
            V*=p**e;Va[a]*=p**e
            if vc(n,j,p)==0:
                Q=p**(e+(p==i));aa=n%Q;bb=j%Q;cc=k%Q
                assert aa<i and bb+cc==aa and bb<=aa
                assert all(z%Q==0 for z in [n-aa,j-bb,k-cc])
                D*=p**e;Da[a]*=p**e;factors.append([p,e,Q,aa,bb,cc])
        coefficients=[comb(j,r)*comb(k,i-r) for r in range(i+1)]
        assert all(x%D==0 for x in coefficients)
        T=prod((j-v)**(8-v)*(k-v)**(8-v) for v in range(8))
        WD=prod(Da[a]**(16-a) for a in range(i));WV=prod(Va[a]**(16-a) for a in range(i))
        assert T%WD==0
        small=[]
        for p in primes(i-1):
            vals=[vp(n-a,p) for a in range(i)];h=max(vals);a=vals.index(h)
            assert vc(n,i,p)+vp(i,p)<=h
            assert sum(vals)-h<=vf(i-1,p)
            small.append([p,h,a])
        rows.append({'n':n,'i':i,'j':j,'V':str(V),'D':str(D),'avoiding_full_power_localizations':factors,
                     'weighted_D_divides':True,'weighted_V_divides':T%WV==0,'small_maxima':small})
    assert any(p==13 and e==2 and Q==13**3 for row in rows for p,e,Q,*_ in row['avoiding_full_power_localizations'])
    assert any(not r['weighted_V_divides'] for r in rows)
    pairs=sorted({(r['c'],r['d']) for r in json.loads((ROOT/'input/i13_cuts.json').read_text())['cuts']})
    dets=[]
    for c,d in pairs:
        for m in [1,2,3]:
            P0,Q0,E0=polynomials(c,d,m,0);P1,Q1,E1=polynomials(c,d,m,1)
            det=sub(mul(P1,Q0),mul(Q1,P0));power=2*d*m-1
            assert len(det)==power+1 and all(x==0 for x in det[:power]) and det[power]==E1[0]*Q0[0]!=0
            dets.append([c,d,m,power,str(det[power])])
    out={'status':'PASS','original_triples':rows,'original_triple_count':len(rows),
         'p_equals_i_power_test':[6591,13,2197,13,2,2197],
         'polynomial_identities':2*len(dets),'nonzero_determinant_identities':len(dets),'determinants':dets}
    (ROOT/'outputs/edge_cases.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({'status':'PASS','original_triples':len(rows),'polynomial_identities':2*len(dets),'determinants':len(dets),'p_i_e2_checked':True}))
