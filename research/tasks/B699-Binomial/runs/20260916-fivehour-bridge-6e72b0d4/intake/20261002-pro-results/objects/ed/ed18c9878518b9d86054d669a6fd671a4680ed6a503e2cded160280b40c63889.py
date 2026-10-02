#!/usr/bin/env python3
"""Deterministic discovery outputs. Python standard library only.
Enumeration is in the primitive distance epsilon=d/g, not the old d strip.
"""
from math import gcd, prod
from pathlib import Path
import hashlib, json, argparse

ROWS=[(252,1,3,2,15),(704,1,2,0,15),(850,3,5,1,3),
      (954,1,3,1,15),(1100,1,5,2,3),(1552,3,2,0,15)]
LIMIT=4096

def save(path, obj):
    path.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')

def rough(x):
    if x<1: raise ValueError('positive integer required')
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def alphas(p,u,N):
    if p==2:
        x=2
        while x<=N:
            yield x; x*=2
    else:
        x=1
        while x<=N:
            for v in range(u+1):
                z=x*(2**v)
                if 2<=z<=N:yield z
            x*=p

def failed_row(n,j):
    for r in range(6):
        q=rough(n-r)
        v=1
        for b in range(r+1):v=v*(j-b)%q
        if v: return r
    return None

def valuation_choose(n,j,p):
    out=0;Q=p
    while Q<=n:
        out+=n//Q-j//Q-(n-j)//Q;Q*=p
    return out

def vp(x,p):
    if x==0:raise ValueError('valuation(0) is infinite')
    e=0
    while x%p==0:e+=1;x//=p
    return e

def witnesses():
    data=[]
    for n,j in [(6250,2083),(6250,2084)]:
        g=gcd(n,j)
        data.append(dict(kind='bounded_epsilon_terminal',n=str(n),j=str(j),g=g,
                         epsilon=(n-2*j)//g,d=n-2*j,p=11,r=2,e=vp(n-2,11),
                         slot=j%(11**vp(n-2,11)),
                         v_choose6=valuation_choose(n,6,11),v_choosej=valuation_choose(n,j,11)))
    family=[]
    for u,v in [(1,0),(1,1),(2,7),(5,12345),(20,0)]:
        alpha=2**(60*u);eps=2**(30*u)+2;g=29+1575*v
        n=g*alpha;j=g*(alpha-eps)//2;d=n-2*j
        oldlhs=15*(n-1)*(n-3)*(n-5);oldrhs=(d*d-1)*(d*d-9)*(d*d-25)
        assert gcd(n,j)==g and n%1800==704 and d>4096 and eps>4096
        assert oldlhs<oldrhs
        assert d*d<(4*g+1)*n-4*g
        family.append(dict(u=u,v=v,n=str(n),j=str(j),g=g,alpha=str(alpha),epsilon=str(eps),d=str(d),
                           old_midpoint_passes=True,outside_both_bounded_strips=True,
                           new_gcd_gap_fails=True,p=7,r=1,e=vp(n-1,7),
                           slot=j%(7**vp(n-1,7)),v_choose6=valuation_choose(n,6,7),v_choosej=valuation_choose(n,j,7)))
    return dict(terminals=data,unbounded_family=family,expected_new_historical_net_deletion=0,
                witnesses_are_counterexamples=False)

def endpoint(limit=LIMIT):
    tables=[];final=[]
    for a,s,p,u,lam in ROWS:
        asc=sorted(alphas(p,u,s*limit*limit-4))
        ac=hc=ic=0;pre=[];rec=[];stream=hashlib.sha256()
        for eps in range(1,limit+1):
            top=s*eps*eps-4
            for alpha in asc:
                if alpha>top:break
                if alpha<=eps or (alpha-eps)%2:continue
                beta=(alpha-eps)//2
                if gcd(alpha,beta)>1:continue
                ac+=1
                for h in range(s*alpha%4 or 4,top//alpha+1,4):
                    hc+=1
                    den=s*eps*eps-h*alpha
                    num=s*alpha-h
                    if num<=0 or num%den:continue
                    g=num//den;n=g*alpha;j=g*beta;tau=den//4
                    ic+=1
                    row=[eps,alpha,h,tau,g,n,j]
                    pre.append(row)
                    stream.update((','.join(map(str,row))+'\n').encode())
                    if n%1800!=a or j<7:continue
                    assert gcd(n,j)==g
                    assert j%rough(n)==0
                    assert (j*(n-j))%rough(n-1)==0
                    r=failed_row(n,j)
                    assert r is not None
                    obj=dict(a=a,epsilon=eps,alpha=alpha,h=h,tau=tau,g=g,n=n,j=j,d=g*eps,first_failed_source=r)
                    rec.append(obj);final.append(obj)
        tables.append(dict(a=a,s1=s,alpha_delta_pairs=ac,h_slots=hc,integer_g_before_row_filter=ic,
                           preclass_recovery_stream_sha256=stream.hexdigest(),preclass_recoveries=pre,
                           target_recoveries=rec))
    return dict(limit=limit,parameter='epsilon=(n-2j)/gcd(n,j)',rows=tables,
                counts=dict(alpha_delta_pairs=sum(r['alpha_delta_pairs'] for r in tables),
                            h_slots=sum(r['h_slots'] for r in tables),
                            integer_g_before_row_filter=sum(r['integer_g_before_row_filter'] for r in tables),
                            target_recoveries=len(final),all_sources_passed=0),
                target_recoveries=sorted(final,key=lambda o:(o['n'],o['j'])),
                old_d_strip_expanded=False,uniform_i6_finiteness=False,
                historical_net_deletion=0)

def regression(bound=30000):
    out=[]
    for a,s,p,u,lam in ROWS:
        cc={'inputs':0,'gcd_gap_triggers':0,'old_midpoint_triggers':0,
            'new_gap_outside_old_midpoint':0,'new_gap_outside_old_midpoint_and_strip':0,
            'source_quotient_checks':0,'complete_window_passes':0}
        examples=[]
        for n in range(a,bound+1,1800):
            qs=[rough(n-r) for r in range(6)]
            for j in range(7,n//2+1):
                cc['inputs']+=1
                d=n-2*j;g=gcd(n,j);alpha=n//g;eps=d//g
                h0=s*alpha%4 or 4
                new=s*(d*d-n)<h0*g*(n-1)
                old=d>=6 and lam*(n-1)*(n-3)*(n-5)>(d*d-1)*(d*d-9)*(d*d-25)
                cc['gcd_gap_triggers']+=new;cc['old_midpoint_triggers']+=old
                if new and not old:
                    cc['new_gap_outside_old_midpoint']+=1
                    if d>4096:
                        cc['new_gap_outside_old_midpoint_and_strip']+=1
                        if len(examples)<3: examples.append([n,j,g,d,eps,alpha])
                if new:
                    assert failed_row(n,j) is not None
                if d>=6 and n<d*d and (j*(n-j))%qs[1]==0:
                    beta=j//g;gamma=(n-j)//g
                    assert (beta*gamma)%qs[1]==0
                    tau=beta*gamma//qs[1];h=s*alpha-4*tau*g
                    assert h>0 and h*alpha==s*eps*eps-4*tau
                    assert h==s*(d*d-n)//(g*(n-1))
                    assert s*(d*d-n)%(g*(n-1))==0
                    assert h>=h0 and alpha<=(s*eps*eps-4)//h0
                    assert 4*g+h0<=s*alpha
                    cc['source_quotient_checks']+=1
        out.append(dict(a=a,counts=cc,examples_outside_prior_two_consumers=examples))
    return dict(n_bound=bound,rows=out,finite_regression_only=True)

def row_cert():
    out=[]
    for a,s,p,u,lam in ROWS:
        sodd=[(a-r)//rough(a-r) for r in [1,3,5]]
        act=[next(r for r in range(6) if (a-r)%P==0) for P in [8,9,25]]
        assert sodd[0]==s and 45//prod(sodd)==lam
        out.append(dict(a=a,s1=s,odd_small_parts=sodd,active_positions_235=act,lambda_midpoint=lam,
                        alpha_prime=p,max_power_two_multiplier=u,
                        h0_values=[(k,(s*k)%4 or 4) for k in range(4)]))
    return dict(rows=out,source0_is_actual_full_power=True,
                general_bound='n < (s1^3/4) epsilon^4',
                pure2_bound='n < (s1^3/64) epsilon^4',
                origin_alpha_is_divisor_not_equal=True)

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--out',required=True);args=pa.parse_args()
    target=Path(args.out);target.mkdir(parents=True,exist_ok=True)
    for name,fn in [('rows.json',row_cert),('endpoint.json',endpoint),('witnesses.json',witnesses),('regression.json',regression)]:
        data=fn();save(target/name,data);print('WROTE',name,flush=True)
if __name__=='__main__':main()
