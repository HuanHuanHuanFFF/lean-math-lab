#!/usr/bin/env python3
"""Independent integer-interval checker. Does not import the generator.

Logarithms use directed fixed-point arithmetic, decimal square-root brackets,
and 130 terms, rather than Fraction sums and binary brackets. Pell endpoints
use binary powering. Endpoint-seven congruences use the original quadratic
image, rather than a discriminant-square test.
"""
from __future__ import annotations
import argparse
import copy
import hashlib
import json
from functools import lru_cache
from math import gcd, isqrt
from pathlib import Path

S=10**100
M=10**16
DATA=[
 ('D7-seed1',7,6,(8,3),(1,1),3,2,1876842045899887043,469876424782486584,13,15,17),
 ('D7-seed13',7,6,(8,3),(13,5),3,2,1876842045899887043,469876424782486584,13,15,17),
 ('D3',3,2,(2,1),(1,1),3,2,1043570439386514912,549256669074638639,3,3,41),
 ('D6',6,2,(5,2),(2,1),6,4,321202785856910779,97119930927902412,3,9,20),
]

def need(ok: bool, message: str) -> None:
    if not ok: raise ValueError(message)

def up(a: int,b: int) -> int:
    return -((-a)//b)

def mul(x: tuple[int,int],y: tuple[int,int]) -> tuple[int,int]:
    need(x[0]>=0 and y[0]>=0,'positive interval multiplication')
    return x[0]*y[0]//S,up(x[1]*y[1],S)

def divide(x: tuple[int,int],y: tuple[int,int]) -> tuple[int,int]:
    need(x[0]>=0 and y[0]>0,'positive interval division')
    return x[0]*S//y[1],up(x[1]*S,y[0])

@lru_cache(None)
def reduced_log(lo: int,hi: int) -> tuple[int,int]:
    need(S<=lo<=hi<=2*S,'range-reduced logarithm')
    z=((lo-S)*S//(lo+S),up((hi-S)*S,hi+S))
    zz=mul(z,z);power=z;lower=upper=0;terms=130
    for i in range(terms):
        lower+=2*power[0]//(2*i+1)
        upper+=up(2*power[1],2*i+1)
        power=mul(power,zz)
    upper+=up(2*power[1]*S,(2*terms+1)*(S-zz[1]))
    return lower,upper

@lru_cache(None)
def log_quad(D: int,a: int,b: int) -> tuple[int,int]:
    rr=isqrt(D*S*S)
    need(rr*rr<D*S*S<(rr+1)*(rr+1),'irrational square root')
    lo,hi=a*S+b*rr,a*S+b*(rr+1)
    k=0
    while lo>=2*S:
        lo//=2;hi=up(hi,2);k+=1
    l,h=reduced_log(lo,hi);l2,h2=reduced_log(2*S,2*S)
    return l+k*l2,h+k*h2

def encloses(claim: list[int],actual: tuple[int,int],scale: int,label: str) -> None:
    need(len(claim)==2 and claim[0]*S<=actual[0]*scale
         and actual[1]*scale<=claim[1]*S,'claimed interval: '+label)

@lru_cache(None)
def checked_approx(index: int) -> dict:
    name,D,t,unit,seed,shift,divisor,p,q,den,base,cutoff=DATA[index]
    l2=reduced_log(2*S,2*S);la=log_quad(D,*unit);le=log_quad(D,*seed)
    need(S//2<l2[0] and l2[1]<3*S//4,'log(2) bound')
    need(S<la[0] and la[1]<3*S,'unit height bound')
    need(le[1]<4*S,'seed height bound')
    tau=divide(la,l2);sigma=divide(le,l2)
    delta=max(abs(q*tau[0]-p*S),abs(q*tau[1]-p*S))
    lo,hi=q*sigma[0],q*sigma[1]
    nearest=(lo+hi+S)//(2*S)
    need(2*lo>(2*nearest-1)*S and 2*hi<(2*nearest+1)*S,'nearest cell')
    dist=0 if lo<=nearest*S<=hi else min(abs(lo-nearest*S),abs(hi-nearest*S))
    epsilon=dist-M*delta
    need(den*epsilon>S,'strict epsilon lower bound')
    need(10*den*q<base**cutoff,'strict terminal cutoff')
    rr=isqrt(D*S*S)
    need(unit[0]*S+unit[1]*rr>base*S,'unit dominates base')
    return dict(log2=l2,log_unit=la,log_seed=le,tau=tau,mu=sigma,
                nearest=nearest,delta=delta,epsilon=epsilon)

def pairmul(x: tuple[int,int],y: tuple[int,int],D: int) -> tuple[int,int]:
    return x[0]*y[0]+D*x[1]*y[1],x[0]*y[1]+x[1]*y[0]

def power(x: tuple[int,int],h: int,D: int) -> tuple[int,int]:
    ans=(1,0)
    while h:
        if h%2: ans=pairmul(ans,x,D)
        x=pairmul(x,x,D);h//=2
    return ans

def is_two_power(n: int) -> bool:
    if n<1: return False
    while n%2==0:n//=2
    return n==1

def params() -> list[list[int]]:
    out=[]
    for lam in (1,3):
        for mu in (1,3):
            if lam*mu>3:continue
            A=7*lam*mu
            for r in range(1,(A-1)//4+1):
                odd=set()
                for m in range(1,r+1):
                    if m%2==0 or r%m or gcd(m,A)!=1:continue
                    for c in (1,3):
                        if c==3 and (lam*mu!=1 or m%3==0):continue
                        odd.add(c*m)
                out.extend([lam,mu,r,x] for x in sorted(odd))
    return sorted(out)

def isprime(p: int) -> bool:
    if p<2:return False
    d=2
    while d*d<=p:
        if p%d==0:return False
        d+=1
    return True

def check_modular(part: dict) -> dict:
    period=2520
    need(part['period']==period,'endpoint period')
    ps=params();need(len(ps)==14,'14 coefficient tuples')
    need(part['parameter_count']==14 and len(part['rows'])==14,'coefficient completeness')
    total=nonempty=removed=0
    for par,row in zip(ps,part['rows']):
        need(row['parameters']==par,'coefficient order/content')
        lam,mu,r,odd=par;A=7*lam*mu
        pending=[]
        for v in range(period):
            n9=odd*pow(2,v,9)%9
            ll=3 if n9==4 or n9==7 else 1
            mm=3 if n9==5 or n9==8 else 1
            n49=odd*pow(2,v,49)%49
            lift= n49%7==2 and (r*((n49-2)//7)-2*lam*mu)%7==0
            if (ll,mm)==(lam,mu) and lift:pending.append(v)
        need(len(pending)==row['initial_count'],'initial exponent coverage')
        total+=len(pending);nonempty+=bool(pending)
        for step in row['steps']:
            p=step['prime'];need(isprime(p) and p<=433 and p>2,'prime witness')
            need(pow(2,period,p)==1 and A%p,'period and invertibility')
            need(step['before']==len(pending),'witness before count')
            images={A*y*(y-1)%p for y in range(p)}
            keep=[]
            for v in pending:
                n=odd*pow(2,v,p)%p
                if r*(n-1)*(n-2)%p in images:keep.append(v)
            need(len(keep)==step['after'] and len(keep)<len(pending),'original quadratic image')
            removed+=len(pending)-len(keep);pending=keep
        expected=[4] if par==[3,1,3,1] else []
        need(pending==row['residual']==expected,'complete residual')
    need(total==part['initial_exponent_cells']==360,'initial total')
    need(nonempty==part['nonempty_parameter_count']==6,'nonempty total')
    return dict(parameter_tuples=14,nonempty_tuples=6,initial_exponent_cells=total,
                excluded_cells=removed,residual={'parameters':[3,1,3,1],'v_mod_2520':4})

def verify(cert: dict) -> dict:
    need(cert['schema']=='B699-r7-pell-v1','schema')
    need(cert['M']==M,'global exponent bound')
    coefficient=7*30**6*81*7*4*7*24//(5*4*4)
    need(coefficient==24304568400000 and coefficient<3*10**13,'Matveev coefficient')
    need(cert['matveev_coefficient_upper']==3*10**13,'coefficient claim')
    need(M-3>3*10**13*52,'global cutoff endpoint')
    expected_seeds=[]
    for D,t,a,b in ((7,6,8,3),(3,2,2,1),(6,2,5,2)):
        need(a*a-D*b*b==1,'unit norm')
        found=[]
        for Y in range(1,isqrt(a*a*t//D)+1):
            X2=D*Y*Y-t
            if X2<0:continue
            X=isqrt(X2)
            if X*X==X2:found.append([X,Y])
        expected_seeds.append(dict(D=D,t=t,unit=[a,b],reduced_X_bound=isqrt(b*b*D*t),seeds=found))
    need(cert['seeds']==expected_seeds,'complete Pell seed enumeration')
    need(len(cert['approximations'])==len(DATA)==len(cert['terminals']),'complete orbit list')
    results={};eps_report={};states=0
    for i,(ap,term) in enumerate(zip(cert['approximations'],cert['terminals'])):
        name,D,t,unit,seed,shift,divisor,p,q,den,base,cutoff=DATA[i]
        wanted=dict(name=name,D=D,t=t,unit=list(unit),seed=list(seed),shift=shift,
                    divisor=divisor,p=p,q=q,eps_den=den,base=base,cutoff=cutoff,M=M)
        for key,value in wanted.items():need(ap[key]==value,'orbit field '+key)
        scale=ap['interval_scale'];need(scale==10**65,'certificate scale')
        actual=checked_approx(i)
        for key in ('log2','log_unit','log_seed','tau','mu'):encloses(ap[key],actual[key],scale,key)
        need(ap['nearest_mu_q']==actual['nearest'],'nearest integer')
        need(ap['delta_upper']*S>=actual['delta']*scale,'delta outward bound')
        need(ap['epsilon_lower']*S<=actual['epsilon']*scale,'epsilon outward bound')
        need(ap['epsilon_lower']*den>scale,'published epsilon threshold')
        rows=[];sol=[]
        for h in range(cutoff):
            X,Y=pairmul(seed,power(unit,h,D),D)
            need(X*X-D*Y*Y==-t and X>0 and Y>0,'Pell terminal')
            need((X+shift)%divisor==0 and Y%2==1,'inverse-map integrality')
            n=(X+shift)//divisor;y=(Y+1)//2;isp=is_two_power(n)
            if isp:sol.append([n,y])
            rows.append(dict(h=h,X=X,Y=Y,n=n,y=y,n_power_of_two=isp))
        need(term==dict(name=name,rows=rows,solutions=sol),'complete terminal reconstruction')
        for n,y in sol:
            if D==7:need(7*y*(y-1)==(n-1)*(n-2),'E7 direct equation')
            if D==3:need(3*y*(y-1)==(n-1)*(n-2),'E3 direct equation')
            if D==6:need(3*y*(y-1)==2*(n-1)*(n-2),'E6 direct equation')
        results[name]=sol;states+=cutoff
        eps_report[name]=dict(lower_numerator=actual['epsilon']//10**88,lower_denominator=10**12,
                             accepted_threshold='1/'+str(den),h_upper_exclusive=cutoff)
    need(results=={'D7-seed1':[[2,1],[16,6]],'D7-seed13':[[8,3]],
                   'D3':[[2,1],[4,2]],'D6':[[2,1]]},'complete equation solution lists')
    mod=check_modular(cert['endpoint7_reduction'])
    return dict(status='PASS',method='fixed-point intervals, binary powering, original quadratic image',
                Pell_terminal_states=states,solutions=results,epsilon_certificates=eps_report,
                endpoint_seven=mod)

def negative_tests(cert: dict) -> list[str]:
    mutants=[]
    c=copy.deepcopy(cert);c['approximations'].pop();mutants.append(('missing_orbit',c))
    c=copy.deepcopy(cert);c['seeds'][0]['seeds'].pop();mutants.append(('missing_norm_seed',c))
    c=copy.deepcopy(cert);c['approximations'][0]['p']+=1;mutants.append(('wrong_approximant',c))
    c=copy.deepcopy(cert);c['M']=10**15;mutants.append(('unjustified_global_bound',c))
    c=copy.deepcopy(cert);c['approximations'][0]['cutoff']=16;mutants.append(('truncated_endpoint',c))
    c=copy.deepcopy(cert);c['approximations'][0]['epsilon_lower']=10**65;mutants.append(('false_epsilon',c))
    c=copy.deepcopy(cert);c['terminals'][0]['rows'][0]['n']=4;mutants.append(('wrong_inverse_map',c))
    c=copy.deepcopy(cert);c['endpoint7_reduction']['rows'].pop();mutants.append(('missing_coefficients',c))
    c=copy.deepcopy(cert)
    for row in c['endpoint7_reduction']['rows']:
        if row['parameters']==[3,1,3,1]:row['residual']=[]
    mutants.append(('discarded_live_residue',c))
    rejected=[]
    for name,bad in mutants:
        try:verify(bad)
        except (ValueError,KeyError,TypeError):rejected.append(name)
        else:raise ValueError('bad certificate accepted: '+name)
    return rejected

def main() -> None:
    p=argparse.ArgumentParser();p.add_argument('--certificate',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);p.add_argument('--negative-tests',action='store_true')
    args=p.parse_args();raw=args.certificate.read_bytes();cert=json.loads(raw)
    result=verify(cert);result['certificate_sha256']=hashlib.sha256(raw).hexdigest()
    result['negative_tests_rejected']=negative_tests(cert) if args.negative_tests else []
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
