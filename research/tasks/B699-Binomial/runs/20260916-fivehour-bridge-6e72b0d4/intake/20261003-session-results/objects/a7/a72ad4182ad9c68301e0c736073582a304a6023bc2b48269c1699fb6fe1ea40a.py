#!/usr/bin/env python3
"""Exact E-R3 certificates. Python standard library + a C++17 compiler.
No Lean, network, repository access, or execution of R2's mathematical scripts.
The finite checks support the general proof in PROOFS.md; they do not independently
review that proof or certify the adopted R2/Overview mathematical dependencies.
"""
from __future__ import annotations
import hashlib, json, math, os, shutil, subprocess, sys, tempfile
from fractions import Fraction as F
from pathlib import Path
from typing import Any
ROOT=Path(__file__).resolve().parents[1]
NLOG=32

def sha(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()
def log_series(z:F)->tuple[F,F]:
    if not 0<=z<1:raise ValueError('Invalid log-series argument')
    lo=sum((2*z**(2*k+1)/(2*k+1) for k in range(NLOG)),F(0))
    return lo,lo+2*z**(2*NLOG+1)/((2*NLOG+1)*(1-z*z))
L2,U2=log_series(F(1,3))
def logs(x:F|int)->tuple[F,F]:
    x=F(x)
    if x<=0:raise ValueError('Log requires positive argument')
    k=0
    while x>=2:x/=2;k+=1
    while x<1:x*=2;k-=1
    l,u=log_series((x-1)/(x+1))
    return (l+k*L2,u+k*U2) if k>=0 else (l+k*U2,u+k*L2)
def interval(l:F,u:F,scale:int=10**15)->dict[str,int]:
    return {'scale':scale,'lower_floor':l.numerator*scale//l.denominator,
            'upper_ceil':-((-u.numerator*scale)//u.denominator)}
def trial(n:int)->bool:
    if n<2:return False
    if n%2==0:return n==2
    return all(n%d for d in range(3,math.isqrt(n)+1,2))

def check_native(params:dict[str,Any])->dict[str,Any]:
    cc=os.environ.get('CXX') or next((p for n in ('g++','clang++','c++') if (p:=shutil.which(n))),None)
    if not cc:raise RuntimeError('A C++17 compiler is required. Install g++/clang++, or set CXX to its executable path.')
    P=params['auxiliary_primes'];C=params['core_primes']
    text=f"32 {params['cutoff_K']} {len(C)} {len(P)}\n"+' '.join(map(str,C))+'\n'+' '.join(map(str,P))+'\n'
    expected=json.loads((ROOT/'certificates/kernel_expected.json').read_text())
    with tempfile.TemporaryDirectory(prefix='b699_e3_exact_') as tmp:
        exe=Path(tmp)/('kernel.exe' if os.name=='nt' else 'kernel')
        built=subprocess.run([cc,'-std=c++17','-O2','-Wall','-Wextra','-pedantic',str(ROOT/'scripts/kernel_check.cpp'),'-o',str(exe)],capture_output=True,text=True)
        if built.returncode:raise RuntimeError('C++ compilation failed:\n'+built.stdout+built.stderr)
        outs=[]
        for method in ('sieve','wheel'):
            run=subprocess.run([str(exe),method],input=text,capture_output=True,text=True)
            if run.returncode:raise RuntimeError(f'{method} checker failed:\n'+run.stdout+run.stderr)
            got=json.loads(run.stdout)
            if got!=expected:raise AssertionError(f'{method} output differs from the frozen finite certificate')
            outs.append(got)
        assert outs[0]==outs[1]
    return expected

def check_lucas(data:dict[str,Any])->tuple[int,int]:
    nodes=data['nodes'];done:set[int]=set();active:set[int]=set()
    def walk(n:int)->None:
        if n in done:return
        if n in active:raise AssertionError('Cyclic primality certificate')
        active.add(n);node=nodes[str(n)];assert node['n']==n
        if n==2:assert node['factors']==[]
        else:
            assert n>2
            fac=node['factors'];prod=1;seen=set()
            for q,e in fac:
                assert q not in seen and q>=2 and e>=1;seen.add(q)
                walk(q);prod*=q**e
            assert prod==n-1
            a=node['a'];assert 1<a<n and pow(a,n-1,n)==1
            for q,_ in fac:assert math.gcd(pow(a,(n-1)//q,n)-1,n)==1
        active.remove(n);done.add(n)
    walk(data['root']);return data['root'],len(done)

def vp_fact(n:int,p:int)->int:
    out=0
    while n:n//=p;out+=n
    return out

def check_new_identity(P:list[int],divs:list[tuple[int,int]])->dict[str,Any]:
    """Four bounded tests of the NEW signed factorial identity, all prime powers.
    General validity is proved by finite unique factorization in PROOFS.md.
    """
    cases=[F(97,3),F(257),F(1001,2),F(4096)]
    results=[]
    for x in cases:
        N=x.numerator//x.denominator
        ps=[p for p in range(2,N+1) if trial(p)]
        cop=[0]*(N+1)
        for u in range(1,N+1):cop[u]=cop[u-1]+int(all(u%p for p in P))
        def A(y:F)->int:return cop[y.numerator//y.denominator]
        def G(y:F)->int:return A(y)-A(F(31,32)*y)-A(y/32)
        coeff:dict[int,int]={}
        for d,mu in divs:
            if d>N:continue
            for t,s in ((x/d,mu),(F(31,32)*x/d,-mu),(x/(32*d),-mu)):
                a=t.numerator//t.denominator;coeff[a]=coeff.get(a,0)+s
        negative=0;power_terms=0
        for p in ps:
            lhs=sum(s*vp_fact(a,p) for a,s in coeff.items())
            rhs=0;q=p
            while q<=x:
                rhs+=G(x/q);power_terms+=1;q*=p
            assert lhs==rhs
            negative+=int(lhs<0)
        results.append({'x':str(x),'all_primes_checked':len(ps),'all_prime_power_terms':power_terms,
                        'negative_prime_exponents':negative})
    return {'cases':results,'status':'four finite regressions of the new identity; not the general proof'}

def make_results()->dict[str,Any]:
    p=json.loads((ROOT/'certificates/parameters.json').read_text())
    P=p['auxiliary_primes'];core=p['core_primes']
    assert P==sorted(set(P)) and core==sorted(set(core)) and set(core)<set(P)
    assert all(trial(q) for q in P)
    native=check_native(p)
    assert native['core_min']==-12 and native['core_max']==12
    M=12*2**(len(P)-len(core));assert M==p['global_bound_M']==native['M']
    divs=[(1,1)]
    for q in P:divs += [(d*q,-mu) for d,mu in divs]
    fullQ=math.prod(P);phi=math.prod(q-1 for q in P)
    assert len(divs)==2**len(P) and len({d for d,_ in divs})==len(divs)
    assert sum(mu*(fullQ//d) for d,mu in divs)==phi
    assert sum(mu for _,mu in divs)==0
    density=F(phi,fullQ)
    a,b=logs(32);c,d=logs(31)
    entropyL=a-F(31,32)*d;entropyU=b-F(31,32)*c
    mainL=density*entropyL;mainU=density*entropyU
    levels=native['levels'];K=native['K'];m=len(levels)
    assert m==native['observed_max']==36
    B=sum((F(1,t) for t in levels),F(0))+F(M-m,K)
    deltaL=mainL-F(111,100)*B;deltaU=mainU-F(111,100)*B
    assert deltaL>F(39,100000)
    assert U2<F(7,10) and L2>F(2,3)
    x0=2**64;L=F(7*64,10);Efac=3*2**len(P)
    err=M*L/2**32 + Efac*(1+L)/x0 + 5*M*(1+L)**2/x0
    final_margin=F(39,100000)-err-F(1,4096)
    assert final_margin>0
    assert p['factorial_error_coefficient']==Efac and p['x_threshold']==x0
    prdata=json.loads((ROOT/'certificates/prime_example.json').read_text())
    pp,nodecount=check_lucas(prdata);assert pp==2**64-59
    n=2**64;i=2**60
    assert 7*i<=n<31*i and n<=32*i and i>=4883
    assert n-i<pp<=n and pp>n//2 and n//pp==1 and n%pp==59<i and pp>i
    vals=[]
    for j in [i+1,n//3,n//2]:
        assert i<j<=n//2
        def vp(k:int)->int:
            q=pp;total=0
            while q<=n:
                t=n//q-k//q-(n-k)//q;assert t in (0,1);total+=t;q*=pp
            return total
        assert vp(i)==vp(j)==1
        vals.append({'j':j,'v_choose_i':vp(i),'v_choose_j':vp(j)})
    ovsha=sha(ROOT/'sources/OVERVIEW.md')
    assert ovsha=='96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066'
    # Only read frozen R2 certificates; do not re-execute R2's mathematical checks.
    old=json.loads((ROOT/'sources/R2_EXPECTED_RESULTS.json').read_text())
    gates=old['certificates']['normalized_A_gates']
    assert any(g['i_exponent_k']==1024 and g['T']==32 for g in gates)
    assert any(g['i_exponent_k']==64 and g['T']==64 for g in gates)
    assert 2*(2**1024+1)>2**64
    assert 4096*2**64==2**76 and 64*2**1024==2**1030 and 76<1030
    # Negative tests of certificate matching/primality; not new mathematical domains.
    bad=dict(native);bad['levels']=levels.copy();bad['levels'][0]+=1
    assert bad!=native
    corrupted=json.loads(json.dumps(prdata));corrupted['nodes'][str(pp)]['a']=1
    rejected=False
    try:check_lucas(corrupted)
    except AssertionError:rejected=True
    assert rejected
    return {
      'input_overview_sha256':ovsha,
      'finite_kernel':native,
      'count_engines':['full auxiliary sieve','independent core gcd wheel + descending exclusion recurrence'],
      'coefficient_certificate':{'full_auxiliary_product_Q':str(fullQ),'totient_phi_Q':str(phi),
        'squarefree_terms':len(divs),'density':str(density),'main_coefficient_interval':interval(mainL,mainU),
        'positive_layer_cost_B':str(B),'delta_interval':interval(deltaL,deltaU),'delta_strict_lower':'39/100000'},
      'all_real_error_certificate':{'x_threshold':x0,'upper_log_at_threshold':'224/5',
        'global_kernel_absolute_bound':M,'factorial_error_coefficient':Efac,
        'normalized_error_upper':str(err),'final_margin_over_1_4096':str(final_margin),
        'conclusion':'theta(x)-theta(31*x/32)>x/4096 for every real x>=2^64'},
      'new_full_factorization_identity_regression':check_new_identity(P,divs),
      'actual_original_row':{'n':n,'i':i,'p':pp,'r':59,'a':1,'label_gcd':1,
        'complete_valuation_examples':vals,'primality_certificate_nodes':nodecount,
        'whole_row_proof':'p>n/2 and n-p<i<j; not inferred from only these three checks'},
      'dependency_composition':{'R2_H_1024_32':'adopted; not re-proved or Lean-run',
        'R2_H_64_64':'adopted; not re-proved or Lean-run',
        'full_paper_index_region':'all i>=2^1024, every legal n,j',
        'remaining_high_tail_height':'i<2^1024 and n<2^1030; bottom not executed'},
      'negative_tests':{'modified_first_level_rejected_by_comparison':True,'invalid_Lucas_witness_rejected':True},
      'evidence_level':'same-session paper/finite exact computation; no Lean; no external independent review'
    }

def main()->None:
    out=make_results();target=ROOT/'certificates/expected_results.json'
    if '--write-expected' in sys.argv:target.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    else:
        expected=json.loads(target.read_text(encoding='utf-8'))
        assert out==expected,'Regenerated mathematics certificate differs from frozen expected results'
    print('PASS: E-R3 exact certificate (two full finite engines, rational error bounds, all-power identity checks).')
    print(json.dumps(out,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
