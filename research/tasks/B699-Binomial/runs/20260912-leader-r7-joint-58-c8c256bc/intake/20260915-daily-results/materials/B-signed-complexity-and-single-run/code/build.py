#!/usr/bin/env python3
"""Generate only new finite evidence. Does not run any historical chain."""
from __future__ import annotations
import argparse, json, itertools
from math import gcd, isqrt
from pathlib import Path
from core import trim,add,mul,scale,ev,remainders,expected_template,one_run_expected,vp_choose,hash_int

def put(out:Path,name:str,data:object)->None:
    (out/name).write_text(json.dumps(data,ensure_ascii=False,sort_keys=True,indent=2)+'\n')

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);out=Path(ap.parse_args().out);out.mkdir(parents=True,exist_ok=True)
    count=0;null=[]
    for k in range(1,5):
        for A in (1,2,3,8):
            for d in (1,2):
                for P in itertools.product(range(-2,3),repeat=k+1):
                    P=list(P);R1,R2=remainders(P,d,A,1,k);count+=1
                    zero=R1==[0] and R2==[0]
                    if zero!=expected_template(P,d,A,1,k):raise AssertionError((k,A,d,P))
                    if zero:null.append([k,A,d,P])
    # Exact middle-frequency obstruction, no trigonometric sampling.
    gaps=[]
    for a,b,c,d in itertools.product(range(2),range(2),range(3),range(3)):
        if (c-d)**2==2*(a-b)**2:gaps.append([a,b,c,d])
    assert all(a==b and c==d for a,b,c,d in gaps)
    identities={
      'both_reducible_first':mul([-1,0,2],[1,0,2,0,4]),
      'both_reducible_second':scale(mul([-1,0,0,2],[1,0,0,2]),2),
    }
    assert identities['both_reducible_first']==[-1,0,0,0,0,0,8]
    assert identities['both_reducible_second']==[-2,0,0,0,0,0,8]
    # These checks are regressions, not the all-degree proof.
    put(out,'templates.json',{'scope':'k=1..4,A=1,2,3,8,d=1,2,integer coefficients -2..2',
        'checked':count,'zero_inputs':null,'middle_gap_solutions':gaps,'identities':identities})

    params=[(1,1,4,1,{2:1,1:-1},40),(2,1,3,1,{2:1,0:-1},40),
       (8,1,6,1,{5:1,3:-1,0:1},50),(4,1,2,1,{1:1,0:-1},30),
       (3,1,4,3,{4:1,2:-2,0:1},40),(3,2,5,1,{4:1,2:-1},40),
       (1,8,3,1,{2:1,0:-1},40),(9,4,6,1,{5:2,2:-1,0:1},50),
       (2,1,40,1,{32:1,4:-1},14)]
    numeric=[]
    for A,D,k,d,pdict,t in params:
        P=[pdict.get(i,0) for i in range(k+1)];x=1<<t
        assert A*pow(x,k)%D==0 and ev(P,x)%d==0
        n=A*pow(x,k)//D;j=ev(P,x)//d;S=sum(map(abs,P));L=12*max(A,2*D)**3*(S+d)**3
        assert n%4==0 and 4<=j<=n//2 and x>=4*D*L
        R1,R2=remainders(P,d,A,D,k);assert R1!=[0] or R2!=[0]
        ws=[3*j*(j-1)%(n-1),6*j*(j-1)*(j-2)%(n-2)];assert any(ws)
        numeric.append({'A':A,'D':D,'k':k,'d':d,'P':trim(P),'x_exp':t,'L':L,
            'n_bits':n.bit_length(),'j_bits':j.bit_length(),
            'remainders':[R1,R2],'window_nonzero':[bool(a) for a in ws],
            'window_hashes':[hash_int(a) for a in ws]})
    put(out,'numeric_templates.json',numeric)

    # Short compression witnesses: actual finite exponents, then symbolic enormous exponents.
    specs=[(2,1,2001,4,[(500,1000)]),(2,3,5001,5,[(1001,3002)]),
           (3,5,3003,5,[(1202,2404)]),(2,7,10002,5,[(2002,4000),(6004,8003)]),
           (2,1,4003,4,[(1000,1001),(2000,3000)])]
    comp=[]
    for b,m,v,k,runs in specs:
        ell=0
        while b**ell<m:ell+=1
        V=v+ell;t,s=divmod(V,k);a=t//8
        exps=[];signs=[]
        for lo,hi in runs:exps += [lo,hi];signs += [-1,1]
        ms=[min(k,(e+t//2)//t) for e in exps]
        err=[k*e-V*h for e,h in zip(exps,ms)]
        assert all(8*abs(z)<V for z in err)
        p=[0]*(k+1)
        for e,h,sgn in zip(exps,ms,signs):
            ep=e+a-h*t;assert ep>=0;p[h]+=sgn*b**ep
        A=m*b**s;D=b**ell;dd=b**a;x=b**t;n=m*b**v
        jj=sum(sgn*b**e for sgn,e in zip(signs,exps));assert 4<=jj<=n//2
        assert ev(p,x)==dd*jj and A*x**k==D*n
        S=sum(map(abs,p));L=12*max(A,2*D)**3*(S+dd)**3;assert x>=4*D*L
        r1,r2=remainders(p,dd,A,D,k);assert r1!=[0] or r2!=[0]
        ws=[3*jj*(jj-1)%(n-1),6*jj*(jj-1)*(jj-2)%(n-2)];assert any(ws)
        comp.append({'base':b,'odd_multiplier':m,'v':v,'ell':ell,'k':k,'runs':runs,'exponents':exps,
            'signs':signs,'m_i':ms,'t':t,'s':s,'a':a,'errors':err,'symbolic_only':False,
            'n_bits':n.bit_length(),'window_nonzero':[bool(z) for z in ws],
            'window_hashes':[hash_int(z) for z in ws]})
    for runs_count in range(1,5):
        w=2*runs_count;K=8**w;m=3 if runs_count%2==0 else 1;ell=2 if m==3 else 0
        V=32*K*K+16*ell*K+1000;v=V-ell;k=2*runs_count+1;t,s=divmod(V,k);a=t//8
        exps=[(i+1)*t+(i%2) for i in range(w)];ms=list(range(1,w+1));sgns=[-1,1]*runs_count
        assert max(exps)<=v-1 and all(8*abs(k*e-V*h)<V for e,h in zip(exps,ms))
        bound=4*ell+6*a+6*k+3*w+6
        assert t>=bound
        comp.append({'base':2,'odd_multiplier':m,'v':v,'ell':ell,'k':k,
           'exponents':exps,'signs':sgns,'m_i':ms,'t':t,'s':s,'a':a,
           'symbolic_only':True,'large_base_exponent_margin':t-bound,'huge_n_expanded':False})
    put(out,'compression.json',comp)

    survivors=[];patterns=0
    for v in range(3,97):
        n=1<<v
        for a in range(v):
            for b in range(1,v-a+1):
                j=(1<<a)*((1<<b)-1)
                if not 4<=j<=n//2:continue
                patterns+=1;ok=3*j*(j-1)%(n-1)==0
                assert ok==one_run_expected(v,a,b)
                if ok:
                    rem=6*j*(j-1)*(j-2)%(n-2);assert rem
                    survivors.append([v,a,b,hash_int(rem)])
    put(out,'single_run.json',{'v_min':3,'v_max':96,'scope':'all legal exponent triples with 3<=v<=96; regression only',
             'patterns':patterns,'survivors':survivors,
             'global_exception_remainders':[[64,7,20],[64,15,12]]})

    primes=[3,5,17,29,23,257]
    assert all(all(p%d for d in range(2,isqrt(p)+1)) for p in primes)
    assert all(pow(2,176,p)==1 for p in [23,257])
    mixed=[]
    for u in range(3):
        t=14+176*u;v=40*t+1;n=1<<v;j=(1<<(32*t))-(1<<(4*t));g=1<<(4*t)
        beta=j//g;gamma=(n-j)//g
        assert gcd(n,j)==g and all(beta%p==0 for p in [3,5,17,29])
        assert all(gamma%p==0 for p in [23,257])
        assert 4<=j<n//2 and v%2==1 and j.bit_count()==28*t
        assert 3*j*(j-1)%(n-1)!=0
        # The example need not find an explicit prime: the general theorem suffices.
        # For the first small-bit instance, record an actual common prime.
        witness=None
        if u==0:
            for p in [3,5,7,11,13,17,19,23,29,31]:
                a1=vp_choose(n,3,p)
                if a1:
                    a2=vp_choose(n,j,p)
                    if a2:witness=[p,a1,a2];break
            assert witness
        mixed.append({'u':u,'t':t,'v':v,'j_weight':j.bit_count(),'g_exp':4*t,
                      'beta_bits':beta.bit_length(),'gamma_bits':gamma.bit_length(),
                      'beta_divisors':[3,5,17,29],'gamma_divisors':[23,257],
                      'canonical_cofactor_lower_bounds':[255,23],'common_prime':witness})
    put(out,'mixed_family.json',{'initial_t':14,'period':176,'samples':mixed,
        'publication_dependency':None,'difference_audit':'low binary weight and prior even-degree cyclic families only; not all historical consumers'})
    print(json.dumps({'templates_checked':count,'zero_template_inputs':len(null),'numeric_templates':len(numeric),
        'compression_witnesses':len(comp),'single_run_patterns':patterns,'single_run_survivors':len(survivors),'mixed_examples':len(mixed)},sort_keys=True))
if __name__=='__main__':main()
