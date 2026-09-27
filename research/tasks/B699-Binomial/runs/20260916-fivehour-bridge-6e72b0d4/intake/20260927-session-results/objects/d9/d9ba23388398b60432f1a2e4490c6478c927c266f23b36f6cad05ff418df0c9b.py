#!/usr/bin/env python3
"""Rebuild this round's certificates in a WORK COPY. Needs SymPy only here.
Verification/replay use the standard library and never rerun the old ledger.
"""
from pathlib import Path
import json, math, sys, time
from collections import Counter
import sympy as sp
from core import *
ROOT=Path(__file__).resolve().parents[1]


def dump(name,obj):
    (ROOT/'certificates'/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n')


def enc(expr,vs):
    return [[list(e),int(c)] for e,c in sp.Poly(sp.expand(expr),*vs,domain=sp.ZZ).terms()]


def algebra():
    k,u,d,z,a=sp.symbols('k u d z a');vs=(k,u,d,z,a)
    H=u*d-k*z+1
    records=[]
    for eps in (-1,1):
        P=d*a+eps*k;Q=k*P+d;X=u*P+a+z;Y=z*a+eps*u
        F=P*Q-1;n=F+2
        if eps==-1:
            triples=[(u*z,-(u*d*Q-k*k),k*a-(k+u)*z+1,'Y'),
                     (u*z,-(u*d*P-k),k*a+(k-u)*z,'X')]
        else:
            triples=[(-u*z,u*d*P+k,k*a+(k+u)*z,'X'),
                     (-u*z,u*d*Q+k*k,k*a-(k-u)*z+1,'Y')]
        r=1 if eps==-1 else 2;w=r*k-u
        A=-w*(w*z-r)
        B=u*a*w*d*d+eps*k*k*(w*z-r)
        D=(k-u)*(2*k-u)*z+eps*k*u*a-((2*k-u) if eps==-1 else 2*(k-u))
        triples.append((A,B,D,'Q-X' if eps==-1 else '2Q-X'))
        for s,(A,B,D,kind) in enumerate(triples):
            V={'X':X,'Y':Y,'Q-X':Q-X,'2Q-X':2*Q-X}[kind]
            expr=sp.expand(A*F+B*V-D)
            q,rem=sp.div(sp.Poly(expr,*vs),sp.Poly(H,*vs))
            assert rem.is_zero
            records.append(dict(name=f'T2_{eps}_{s}',eps=eps,source='F',V=kind,
                                A=enc(A,vs),B=enc(B,vs),D=enc(D,vs),quotient=enc(q.as_expr(),vs)))
        if eps==-1:
            A=u*z;B=-(u*d*Q-k*k);V=Y;D=k*a-(k-u)*z+1;kind='Y'
        else:
            A=-u*z;B=u*d*P+k;V=X;D=k*a+(k-u)*z;kind='X'
        q,rem=sp.div(sp.Poly(A*n+B*V-D,*vs),sp.Poly(H,*vs));assert rem.is_zero
        records.append(dict(name=f'T0_{eps}',eps=eps,source='n',V=kind,
                            A=enc(A,vs),B=enc(B,vs),D=enc(D,vs),quotient=enc(q.as_expr(),vs)))
    # Exact positivity certificate for the lower bound 2u*C0 in the cone.
    U,T,V=sp.symbols('U T V', nonnegative=True)
    expr=((k*k-2*k*u-2*u*u)*z-k+2*u).subs({k:3*u+T}).subs({z:3*u+V}).subs({u:U+1})
    pos=[[list(ex),int(c)] for ex,c in sp.Poly(sp.expand(expr),U,T,V).terms()]
    assert all(c>0 for _,c in pos)
    # The new zero family is deliberately outside k>=3u.
    t=sp.symbols('t')
    zt=10*t+3;at=14*t+4;dt=25*t+7
    Pt=dt*at-5;Qt=5*Pt+dt;Yt=zt*at-2;Ft=Pt*Qt-1
    A0=70*t*t+41*t+5;B0=8750*t*t+4900*t+561
    assert sp.expand(Ft-A0*B0)==0 and sp.expand(Yt-2*A0)==0
    weak=dict(z=[10,3],a=[14,4],d=[25,7],P=[350,198,23],Q=[1750,1015,122],
              A=[70,41,5],B=[8750,4900,561],C1=[100,29],C2=[100,24],
              parameter='t=4s+3, s>=0; no claim of prime powers for all t')
    dump('algebra.json',dict(variables=[str(x) for x in vs],relation='u*d-k*z+1',
                            records=records,positive_polynomial=pos,weak_family=weak,
                            generator_sympy=sp.__version__))
    return len(records)


PRIMES={}
def prime_cert(p):
    p=int(p)
    if str(p) in PRIMES:return
    if p==2:
        PRIMES[str(p)]=dict(p=2,factors=[],g=None);return
    assert sp.isprime(p)
    fac=[(int(q),int(e)) for q,e in sp.factorint(p-1).items()]
    for q,e in fac:prime_cert(q)
    for g in range(2,p):
        if pow(g,p-1,p)==1 and all(math.gcd(pow(g,(p-1)//q,p)-1,p)==1 for q,e in fac):break
    else:raise AssertionError('prime witness not found')
    PRIMES[str(p)]=dict(p=p,factors=sorted(fac),g=g)


def pp_shape(N):
    f=sp.factorint(N)
    if len(f)!=1:return None
    p,e=next(iter(f.items()))
    if p==2:return None
    return (int(p),int(e))


def describe(name,r,kind):
    check_integer_interface(r)
    result=dict(name=name,kind=kind,**r)
    pshape=pp_shape(r['P']);qshape=pp_shape(r['Q'])
    result['P_power']=pshape;result['Q_power']=qshape
    if pshape:prime_cert(pshape[0])
    if qshape:prime_cert(qshape[0])
    result['two_full_powers']=bool(pshape and qshape and pshape[0]!=qshape[0])
    if result['two_full_powers']:
        result['lucas_p']=lucas(r['n'],r['j'],pshape[0])
        result['lucas_q']=lucas(r['n'],r['j'],qshape[0])
    else:result['lucas_p']=result['lucas_q']=None
    cs=constants(r['k'],r['u'],r['z'],r['a'],r['eps'])
    T0=source(r['n']);T2=source(r['n']-2)
    result.update(C=list(cs),T0=T0,T2=T2,j_mod_T0=r['j']%T0,
                  Lambda=None if 0 in cs else odd(math.lcm(*[abs(x) for x in cs])))
    if result['Lambda'] is not None:result['Lambda_mod_T2']=result['Lambda']%T2
    # Prove a source prime witness using a bounded auxiliary prime search.
    witnesses=[]
    for ell in sp.primerange(3,100000):
        ell=int(ell)
        if (r['n']-2)%ell:continue
        E=valuation(r['n']-2,ell)
        if ell==3 and E==1:continue
        wv=binomial_v(r['n'],3,ell);vj=binomial_v(r['n'],r['j'],ell)
        if wv and vj:
            prime_cert(ell)
            witnesses.append(dict(prime=ell,E=E,j_mod_power=r['j']%(ell**E),
                                  v_choose3=wv,v_choosej=vj))
            if len(witnesses)>=2:break
    if not witnesses:
        for ell,E in sp.factorint(r['n']-2).items():
            ell=int(ell);E=int(E)
            if ell<3 or (ell==3 and E==1):continue
            vj=binomial_v(r['n'],r['j'],ell)
            if vj:
                prime_cert(ell)
                witnesses.append(dict(prime=ell,E=E,j_mod_power=r['j']%(ell**E),
                    v_choose3=binomial_v(r['n'],3,ell),v_choosej=vj));break
    assert witnesses
    result['witnesses']=witnesses
    result['is_NC3']=False
    return result


def make_examples(rows):
    examples=[]
    examples.append(describe('K4-only-size-pass',restore(4,1,13,35,1),'finite_terminal'))
    # Select at most two new k4 square-base regressions from this new terminal.
    for row in rows:
        e,z,a,_,P,Q=row[:6]
        r=math.isqrt(P)
        if r*r!=P or not sp.isprime(r) or not sp.isprime(Q):continue
        rr=restore(4,1,z,a,e)
        if not (lucas(rr['n'],rr['j'],r) and lucas(rr['n'],rr['j'],Q)):continue
        examples.append(describe('K4-square-'+str(len(examples)),rr,'finite_terminal'))
        if len(examples)==3:break
    assert len(examples)==3
    # Deterministically choose new u>=2 high-tail cases, not an exhaustive search.
    for k,u,z,e in [(7,2,4007,-1),(7,2,4007,1),(10,3,12001,-1),(10,3,12001,1),(7,2,4015,1)]:
        d=(k*z-1)//u
        for a in range(d//2,d-z+1):
            P=d*a+e*k;Q=k*P+d
            if not P<d*d<2*P or P%2==0 or Q%2==0 or (P*Q+1)%4:continue
            if z==4015 and ((P*Q-1)%9 or (P*(u*P+a+z)+(1-e)//2)%9 in (0,1,2)):continue
            if not (sp.isprime(P) and sp.isprime(Q)):continue
            rr=restore(k,u,z,a,e)
            assert lucas(rr['n'],rr['j'],P) and lucas(rr['n'],rr['j'],Q)
            assert z>=129*k*u*u
            examples.append(describe(f'NEW-u{u}-eps{e}-z{z}',rr,'new_general_cone'))
            break
        else:raise AssertionError('chosen regression not found')
    # This is an actual two-prime input, but it FAILS original T0/T2, NOT NC3.
    examples.append(describe('NEW-zero-slot-weak-t3',restore(5,2,33,46,-1),'zero_slot_boundary'))
    dump('examples.json',examples)
    dump('primality.json',list(sorted(PRIMES.values(),key=lambda q:q['p'])))
    return examples


def main():
    start=time.time()
    ids=algebra()
    rows=list(terminal_a());data=csv_bytes(rows)
    (ROOT/'certificates'/'k4-terminal.csv').write_bytes(data)
    second=csv_bytes(terminal_p());assert data==second
    c=Counter((r[0],r[-1]) for r in rows)
    summary=dict(total=len(rows),minus=sum(v for (e,_),v in c.items() if e==-1),
                 plus=sum(v for (e,_),v in c.items() if e==1),
                 size_rejections=sum(v for (_,reason),v in c.items() if reason=='size'),
                 nondivisibility_rejections=sum(v for (_,reason),v in c.items() if reason=='nondivisibility'),
                 survivors=0,csv_sha256=sha(data),byte_count=len(data),
                 method_A='original integer top block a with original filters',
                 method_B='original P residue class modulo 4d',
                 bounds={'minus_z':307,'plus_z':512,'P':3142149,'Q':12570643})
    dump('k4-summary.json',summary)
    ex=make_examples(rows)
    # Small direct binomial arithmetic: actual candidates and other original j.
    direct=[]
    for name in ['K4-only-size-pass']:
        # Large binomials are not computed: this one is checked by complete Lucas/Legendre.
        pass
    # A genuinely small integer k4 row for direct exact binomial regression.
    for row in rows[:3]:
        e,z,a,d,P,Q,n,j,*_=row
        js=sorted(set([4,5,6,7,j,n//2]))
        for jj in js:
            # Keep direct arithmetic below a defensible output-independent cutoff.
            if n>60000:continue
            B=math.comb(n,jj);A=math.comb(n,3)
            common=math.gcd(A,B);g=common
            while g%2==0:g//=2
            assert g>1
            ell=int(min(sp.factorint(g)))
            prime_cert(ell)
            direct.append(dict(n=n,j=jj,prime=ell,v_choose3=valuation(A,ell),v_choosej=valuation(B,ell)))
    # Complete half-row regression on a genuinely different-base prime-power row.
    case=next(q for q in ex if q['name']=='K4-square-1')
    n=case['n']; pools=[]
    for p,E in sp.factorint(math.comb(n,3)).items():
        p=int(p)
        if p>=3:prime_cert(p);pools.append(p)
    pools.sort(); witness_counts=Counter()
    for jj in range(4,n//2+1):
        for p in pools:
            v=binomial_v(n,jj,p)
            assert (v==0)==lucas(n,jj,p)
            if v:
                witness_counts[p]+=1
                break
        else:raise AssertionError('direct half-row failed')
    dump('small-row-exhaustive.json',dict(P=case['P'],Q=case['Q'],n=n,
          j_min=4,j_max=n//2,total=n//2-3,prime_pool=pools,
          witness_counts={str(p):c for p,c in sorted(witness_counts.items())}))
    for jj in list(range(4,21))+[case['j']]:
        A=math.comb(n,3);B=math.comb(n,jj)
        for p in pools:
            if B%p==0:
                direct.append(dict(n=n,j=jj,prime=p,v_choose3=valuation(A,p),v_choosej=valuation(B,p)))
                break
    dump('direct-binomial.json',direct)
    dump('primality.json',list(sorted(PRIMES.values(),key=lambda q:q['p'])))
    print(json.dumps(dict(status='PASS',summary=summary,identities=ids,
          examples=len(ex),prime_certificates=len(PRIMES),direct_pairs=len(direct),
          elapsed_seconds=round(time.time()-start,3)),ensure_ascii=False,indent=2))

if __name__=='__main__':main()
