#!/usr/bin/env python3
"""Deterministic evidence replay. Finite tests are regressions, not global end cases."""
from __future__ import annotations
import argparse,copy,json
from math import gcd,isqrt
from pathlib import Path
from lattice_gate import fixed_ag,full_row,row_gate,sqrt10_mod_3power
from consumer import consume,valuation_binomial
ROOT=Path(__file__).resolve().parents[1]

# Independent sparse integer polynomial arithmetic, five variables.
ZERO=(0,)*5
def con(c):return {ZERO:c} if c else {}
def var(i):
    e=[0]*5;e[i]=1;return {tuple(e):1}
def add(*ps):
    out={}
    for p in ps:
        for e,c in p.items():out[e]=out.get(e,0)+c
    return {e:c for e,c in out.items() if c}
def scale(p,c):return {e:v*c for e,v in p.items() if v*c}
def mul(p,q):
    out={}
    for a,c in p.items():
        for b,d in q.items():
            e=tuple(x+y for x,y in zip(a,b));out[e]=out.get(e,0)+c*d
    return {e:c for e,c in out.items() if c}
def sq(p):return mul(p,p)
def power(p,e):
    out=con(1)
    for _ in range(e):out=mul(out,p)
    return out

def algebra():
    A,b,N,z,D=[var(i) for i in range(5)];checks=0
    assert not add(sq(add(A,scale(b,-2))),scale(mul(N,sq(z)),40),scale(sq(A),-1),scale(add(mul(b,add(A,scale(b,-1))),scale(mul(N,sq(z)),-10)),4));checks+=1
    R,g,A=var(0),var(1),var(2);c=add(con(2),scale(mul(g,A),-1))
    assert not add(mul(sq(R),sq(c)),scale(add(mul(g,A),con(-1)),40),scale(mul(add(sq(R),con(-10)),sq(c)),-1),scale(mul(sq(g),sq(A)),-10));checks+=1
    x,y,u,v,D=[var(i) for i in range(5)]
    fx=add(sq(x),mul(D,sq(y)));fu=add(sq(u),mul(D,sq(v)))
    for e in (-1,1):
        cross=add(mul(x,v),scale(mul(u,y),-e))
        other=add(mul(x,u),scale(mul(D,mul(y,v)),e))
        assert not add(mul(fx,fu),scale(mul(D,sq(cross)),-1),scale(sq(other),-1));checks+=1
    ip=add(mul(x,u),mul(D,mul(y,v)));det=add(mul(x,v),scale(mul(y,u),-1))
    assert not add(mul(fx,fu),scale(sq(ip),-1),scale(mul(D,sq(det)),-1));checks+=1
    t=var(0);n=add(t,con(2))
    positive=add(scale(mul(power(n,3),add(n,con(-1))),320),scale(power(n,4),-1))
    assert positive and all(c>0 for c in positive.values());checks+=1
    assert 8*125<1152;checks+=1
    return checks

def independent_basis_check(record):
    n=record['n'];c=record['certificate'];a0=record['a0'];v3=record['v3n'];alpha_max=record['alpha_max']
    assert 3**v3==alpha_max and n%alpha_max==0 and (n//alpha_max)%3
    assert a0>=2 and 3**(4*a0)>8*n**3
    assert a0==2 or 3**(4*(a0-1))<=8*n**3
    m=3**(2*a0);d=40*(n-1);radius=alpha_max**2
    assert c['d']==d and c['modulus']==m and c['radius_squared']==radius
    r=c['root'];u=c['u'];w=c['v']
    assert 0<=r<m and (r*r+d)%m==0
    assert all((x-r*y)%m==0 for x,y in (u,w))
    assert abs(u[0]*w[1]-u[1]*w[0])==m
    nu=u[0]**2+d*u[1]**2;nw=w[0]**2+d*w[1]**2;ip=u[0]*w[0]+d*u[1]*w[1]
    assert (nu,nw,ip)==(c['norm_u'],c['norm_v'],c['dot'])
    assert nu<=nw and 2*abs(ip)<=nu
    assert d*m*m>radius*radius
    if record['reason']=='NO_VECTOR_IN_RADIUS':assert nu>radius
    return True

def brute(a,g):
    alpha=3**a;n=g*alpha;d=40*(n-1);ans=[]
    for z in range(1,isqrt((alpha*alpha-1)//d)+1):
        if z%3==0:continue
        rem=alpha*alpha-d*z*z;delta=isqrt(rem)
        if delta*delta!=rem or delta%3==0 or (alpha-delta)%2:continue
        beta=(alpha-delta)//2
        if beta>=1 and gcd(beta,alpha)==1:ans.append((g*beta,z))
    return ans

def differential():
    expected=json.loads((ROOT/'evidence/norm_brute.json').read_text());found=[];tested=0
    for a in range(2,13):
        r=sqrt10_mod_3power(2*a)
        for g in range(1,501):
            ref=brute(a,g);result=fixed_ag(a,g,r)
            got=[] if result['status']=='EMPTY' else [(result['j'],result['z'])]
            assert got==ref,(a,g,got,ref)
            tested+=1
            if got:found.append({'a':a,'g':g,'j':got[0][0],'z':got[0][1]})
    assert tested==expected['pairs'] and found==expected['recoveries']
    return tested,len(found)

def run():
    checks=algebra();pairs,recovered=differential()
    root_tests=0
    for e in range(1,121):
        r=sqrt10_mod_3power(e);m=3**e
        assert r%3==1 and (r*r-10)%m==0
        root_tests+=1
    rows=json.loads((ROOT/'evidence/row_certificates.json').read_text());certs=0;rejected=0
    for record in rows:
        assert row_gate(record['n'])==record
        if 'certificate' in record:independent_basis_check(record);certs+=1
    base=next(r for r in rows if 'certificate' in r)
    for mutation in range(5):
        bad=copy.deepcopy(base);c=bad['certificate']
        if mutation==0:c['root']=(c['root']+1)%c['modulus']
        elif mutation==1:c['u'][0]+=1
        elif mutation==2:c['norm_u']+=1
        elif mutation==3:c['modulus']*=3
        else:c['v'][1]+=1
        try:independent_basis_check(bad)
        except AssertionError:rejected+=1
        else:raise AssertionError('damaged certificate accepted')
    positives=[]
    for a,g in [(4,2),(5,3),(8,1),(8,42),(11,5),(132,22801932293924839964495280670096909541988843295029343600579930)]:
        ans=fixed_ag(a,g);assert ans['status']=='CANDIDATE'
        n=ans['n'];fr=full_row(n);assert fr['solutions']==[ans]
        gate=row_gate(n,require_tail=False)
        small=8*g**4<n
        assert (gate['status']=='CANDIDATE')==small
        if small:assert gate['j']==ans['j'] and gate['g']==g
        positives.append({'a':a,'g':g,'n':n,'j':ans['j'],'z':ans['z'],'delta':ans['delta'],
                          'correct_B_tail':n%1800==1530,'mod9000':n%9000,
                          'has_mass_cut':small,'one_lattice_status':gate['status']})
    assert fixed_ag(6,1)['status']=='EMPTY' and fixed_ag(5,3)['j']==105
    consumer_result=consume(108268610952065130,73341537334800)
    assert consumer_result['status']=='COMMON6_CERTIFIED' and consumer_result['prime_witness']['p']==19
    assert consume(162,70)['status']=='OUT_OF_SCOPE'
    # Correct B-tail W10/F1 positive outside the mass cut: replay the explicit prime-7 boundary.
    last=positives[-1];n,j=last['n'],last['j']
    assert n%9000==5130 and (n-5)%125==0 and (n-5)%625!=0 and last['g']**4>n
    assert valuation_binomial(n,6,7)==1 and valuation_binomial(n,j,7)==69
    saved=json.loads((ROOT/'evidence/positive_recoveries.json').read_text())
    assert positives==saved
    return {'status':'PASS','evidence_level':'author paper + same-session exact replay; not Lean or external review',
            'polynomial_or_inequality_checks':checks,'root_levels_checked':root_tests,
            'fixed_pair_differential_tests':pairs,'small_positive_recoveries':recovered,
            'row_basis_certificates':certs,'damaged_certificates_rejected':rejected,
            'positive_full_row_and_single_lattice_checks':len(positives),'consumer_prime':19,
            'frontier_reduction':0,'global_finite_endpoint_completed':False,
            'discovery_scans_replayed_by_default':False}

if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--write-result',action='store_true');args=parser.parse_args()
    out=run();target=ROOT/'evidence/replay.json'
    if args.write_result:target.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    elif target.exists():assert out==json.loads(target.read_text()),'replay result differs'
    print(json.dumps(out,ensure_ascii=False,indent=2))
