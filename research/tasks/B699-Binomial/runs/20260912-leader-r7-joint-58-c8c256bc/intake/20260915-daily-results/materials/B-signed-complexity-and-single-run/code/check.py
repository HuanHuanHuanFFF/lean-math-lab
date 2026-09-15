#!/usr/bin/env python3
"""Independent checks: sparse rational long division, alternative exponent order.
Does not import build.py or core.py. Finite regressions do not prove infinite lemmas.
"""
from __future__ import annotations
import argparse,hashlib,itertools,json
from fractions import Fraction as F
from math import gcd,isqrt
from pathlib import Path

def load(out:Path,n:str):return json.loads((out/n).read_text())
def clean(p):return {e:F(c) for e,c in p.items() if c}
def poly(xs):return clean(dict(enumerate(xs)))
def plus(p,q):
    r=dict(p)
    for i,c in q.items():r[i]=r.get(i,F(0))+c
    return clean(r)
def times(p,q):
    r={}
    for i,a in p.items():
        for j,b in q.items():r[i+j]=r.get(i+j,F(0))+a*b
    return clean(r)
def scaled(p,a):return clean({i:c*a for i,c in p.items()})
def rem(p,q):
    r=clean(p);q=clean(q)
    if not q:raise ValueError('zero divisor')
    h=max(q);lead=q[h]
    while r and max(r)>=h:
        k=max(r)-h;c=r[k+h]/lead
        for i,a in q.items():r[i+k]=r.get(i+k,F(0))-c*a
        r=clean(r)
    return r

def evalp(p,x):return sum((c*x**e for e,c in p.items()),F(0))
def hash_int(n):
    return hashlib.sha256(n.to_bytes(max(1,(n.bit_length()+7)//8),'big')).hexdigest()

def fpolys(P,d):
    p=poly(P);a=plus(p,{0:-d});b=plus(p,{0:-2*d})
    return scaled(times(p,a),3),scaled(times(times(p,a),b),6)

def is_template(P,d,A,D,k):
    p=poly(P)
    if any(e not in (0,k) for e in p):return False
    u=p.get(k,F(0))*D/(d*A)+p.get(0,F(0))/d
    z=2*p.get(k,F(0))*D/(d*A)+p.get(0,F(0))/d
    return u in (0,1) and z in (0,1,2)

def check_numeric(rec):
    A,D,k,d,t=[rec[z] for z in ['A','D','k','d','x_exp']]
    assert all(type(z) is int and z>0 for z in [A,D,k,d,t]) and t<=100000
    P=rec['P'];assert len(P)<=k+1 and all(type(z) is int for z in P)
    x=2**t;nv=F(A*x**k,D);jv=evalp(poly(P),x)/d
    assert nv.denominator==jv.denominator==1
    n,j=int(nv),int(jv);assert n%4==0 and 4<=j<=n//2
    L=12*max(A,2*D)**3*(sum(map(abs,P))+d)**3
    assert L==rec['L'] and x>=4*D*L
    fs=fpolys(P,d);R=[]
    for r,q,f in [(1,2,fs[0]),(2,3,fs[1])]:
        rr=scaled(rem(f,{k:A,0:-r*D}),A**q)
        assert all(c.denominator==1 for c in rr.values())
        assert rr==poly(rec['remainders'][r-1])
        y=evalp(rr,x);assert y.denominator==1
        if rr:assert 0<abs(y)<n-r
        R.append(rr)
    assert any(R)
    ws=[3*j*(j-1)%(n-1),6*j*(j-1)*(j-2)%(n-2)]
    assert [bool(z) for z in ws]==rec['window_nonzero'] and any(ws)
    assert [hash_int(z) for z in ws]==rec['window_hashes']
    assert n.bit_length()==rec['n_bits'] and j.bit_length()==rec['j_bits']

def check_compression(rec):
    b,m,v,ell,k=[rec[x] for x in ['base','odd_multiplier','v','ell','k']]
    assert min(b,m,v,k)>0 and b>=2 and 0<=ell<=1024
    assert m<=b**ell and (ell==0 or b**(ell-1)<m)
    V=v+ell;t,s=divmod(V,k);a=t//8
    assert (t,s,a)==(rec['t'],rec['s'],rec['a'])
    es,ss,ms=rec['exponents'],rec['signs'],rec['m_i'];w=len(es)
    assert w>0 and len(ss)==len(ms)==w and k<=8**w
    assert all(type(e) is int and 0<=e<=V for e in es)
    assert all(type(c) is int and 0<abs(c)<=b-1 for c in ss)
    assert all(0<=h<=k and 8*abs(k*e-V*h)<V for e,h in zip(es,ms))
    ep=[e+a-t*h for e,h in zip(es,ms)]
    assert min(ep)>=0 and max(ep)<=2*a+k
    if rec['symbolic_only']:
        assert b==2 and ss==[-1,1]*(w//2) and w%2==0
        assert all(es[i]<es[i+1] for i in range(w-1)) and es[0]>=2
        assert es[-1]<=v-1
        bound=4*ell+6*a+6*k+3*w+6
        assert t>=bound and rec['large_base_exponent_margin']==t-bound
        assert rec['huge_n_expanded'] is False
        return
    p={}
    for e,sg,h in zip(ep,ss,ms):p[h]=p.get(h,0)+sg*b**e
    p=clean(p);x=b**t;A=m*b**s;D=b**ell;d=b**a;n=m*b**v
    j=sum(sg*b**e for sg,e in zip(ss,es));assert 4<=j<=n//2
    assert evalp(p,x)==d*j and A*x**k==D*n
    S=sum(abs(c) for c in p.values());L=12*max(A,2*D)**3*(S+d)**3
    assert x>=4*D*L
    pp=[int(p.get(i,0)) for i in range(k+1)];f1,f2=fpolys(pp,d)
    assert rem(f1,{k:A,0:-D}) or rem(f2,{k:A,0:-2*D})
    ws=[3*j*(j-1)%(n-1),6*j*(j-1)*(j-2)%(n-2)]
    assert any(ws) and [bool(z) for z in ws]==rec['window_nonzero']
    assert [hash_int(z) for z in ws]==rec['window_hashes'] and n.bit_length()==rec['n_bits']

def fresh_single_run():
    rows=[];cnt=0;top=96
    # Reversed order, exact gcd cancellation. No multiplication by the large j(j-1).
    for b in range(1,top):
        for a in range(top-b):
            j=(2**b-1)*2**a
            if j<4:continue
            for v in range(a+b+1,top+1):
                n=2**v;cnt+=1
                d=gcd(v,b);x=2**d;Sk=(n-1)//(x-1)
                ok=3*(j-1)%Sk==0
                pred=(a==b-1 and v==2*b and b>=2) or (v==6 and a==0 and b in (3,4))
                assert ok==pred
                if ok:
                    z=6*j*(j-1)*(j-2)%(n-2);assert z
                    rows.append([v,a,b,hash_int(z)])
    for v in range(3,top+1):
        cnt+=1;n=2**v;j=n//2;assert 3*(j-1)%(n-1)
    return cnt,sorted(rows)

def check_single(data,cached=None):
    assert data['v_min']==3 and data['v_max']==96
    cnt,rows=cached or fresh_single_run()
    assert data['patterns']==cnt and data['survivors']==rows
    assert data['global_exception_remainders']==[[64,7,20],[64,15,12]]

def vp_factorial(n,p):
    ans=0
    while n:n//=p;ans+=n
    return ans

def check_mixed(data):
    assert data['initial_t']==14 and data['period']==176
    ps=[3,5,17,29,23,257]
    for p in ps:assert all(p%d for d in range(2,isqrt(p)+1))
    for p in [23,257]:
        assert pow(2,176,p)==1
        assert (pow(2,36*14+1,p)-pow(2,28*14,p)+1)%p==0
    for r in data['samples']:
        t=14+176*r['u'];n=2**(40*t+1);g=2**(4*t);j=g*(2**(28*t)-1)
        beta=j//g;gamma=(n-j)//g
        assert t==r['t'] and r['v']==40*t+1 and r['g_exp']==4*t
        assert r['canonical_cofactor_lower_bounds']==[255,23]
        assert 4<=j<n//2 and gcd(n,j)==g
        assert j.bit_count()==r['j_weight']==28*t
        assert all(beta%p==0 for p in [3,5,17,29])
        assert all(gamma%p==0 for p in [23,257])
        assert 3*j*(j-1)%(n-1)
        if r['common_prime']:
            p,a,b=r['common_prime']
            v1=vp_factorial(n,p)-vp_factorial(3,p)-vp_factorial(n-3,p)
            v2=vp_factorial(n,p)-vp_factorial(j,p)-vp_factorial(n-j,p)
            assert (a,b)==(v1,v2) and min(a,b)>0

def run(out):
    ts=load(out,'templates.json');null=[];total=0
    for d in (2,1):
        for k in range(4,0,-1):
            for A in (8,3,2,1):
                for coeff in itertools.product(range(-2,3),repeat=k+1):
                    total+=1;f1,f2=fpolys(coeff,d)
                    zero=False
                    if not rem(f1,{k:A,0:-1}):zero=not rem(f2,{k:A,0:-2})
                    assert zero==is_template(coeff,d,A,1,k)
                    if zero:null.append([k,A,d,list(coeff)])
    assert total==ts['checked'] and sorted(null)==sorted(ts['zero_inputs'])
    gaps=[[a,b,c,d] for a,b,c,d in itertools.product(range(2),range(2),range(3),range(3)) if (c-d)**2==2*(a-b)**2]
    assert gaps==ts['middle_gap_solutions'] and all(a==b and c==d for a,b,c,d in gaps)
    p=times({0:-1,2:2},{0:1,2:2,4:4});assert p==poly(ts['identities']['both_reducible_first'])=={0:F(-1),6:F(8)}
    p=scaled(times({0:-1,3:2},{0:1,3:2}),2);assert p==poly(ts['identities']['both_reducible_second'])=={0:F(-2),6:F(8)}
    numeric=load(out,'numeric_templates.json')
    for r in numeric:check_numeric(r)
    comp=load(out,'compression.json')
    for r in comp:check_compression(r)
    single=load(out,'single_run.json');check_single(single)
    mixed=load(out,'mixed_family.json');check_mixed(mixed)
    # The two-window weak point is deliberately NOT treated as a counterexample.
    n,j=56,11
    assert 3*j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)==0
    assert j%27>n%27 and not(j%9>n%9)
    vals=[vp_factorial(n,3)-vp_factorial(u,3)-vp_factorial(n-u,3) for u in (3,j)]
    assert vals==[2,1]
    result={'status':'PASS','rational_long_division_inputs':total,'zero_inputs':len(null),
      'numeric_templates':len(numeric),'compression_witnesses':len(comp),
      'single_run_patterns':single['patterns'],'single_run_first_window_survivors':len(single['survivors']),
      'p_equals_i_regression':{'n':56,'j':11,'p':3,'valuations':vals},
      'infinite_proofs_checked_by_lean':False,'independent_human_review':False}
    (out/'independent_check.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps(result,sort_keys=True))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);run(Path(ap.parse_args().out))
