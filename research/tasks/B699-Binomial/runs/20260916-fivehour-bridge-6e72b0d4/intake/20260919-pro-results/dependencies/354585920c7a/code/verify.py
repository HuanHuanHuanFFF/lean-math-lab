#!/usr/bin/env python3
"""Standard-library exact replay. Does not prove Yu's analytic theorem or run unbounded searches."""
from __future__ import annotations
import argparse,hashlib,json,math,sys
from fractions import Fraction as F
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
from poly_exact import const,add,sub,scale,mul,power,falling_binom,assert_equal
from new_algebra import R,S,R_old,S_normal,H_normal,substitute,taylor,order,records,from_records
from consumer import vp,qig_sides,consume,qrow,Znorm,divides_some_power

def check(c,msg):
    if not c:raise AssertionError(msg)

def load(name):return json.loads((ROOT/'evidence'/name).read_text())

def hashes():
    lines=(ROOT/'SHA256SUMS').read_text().splitlines();seen=set()
    for line in lines:
        h,p=line.split('  ',1);path=ROOT/p
        check(p not in seen and path.is_file(),'manifest path');seen.add(p)
        check(hashlib.sha256(path.read_bytes()).hexdigest()==h,'hash mismatch: '+p)
    actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file() and p.name!='SHA256SUMS' and '__pycache__' not in p.parts}
    check(seen==actual,'manifest completeness')
    return len(seen)

def algebra():
    x={(1,0):F(1)};y={(0,1):F(1)};n=add(x,y);J=mul(x,y);N=sub(n,const(1));A=mul(sub(x,const(1)),sub(y,const(1)))
    r=R(n,J);s=S(n,J);f=mul(power(J,2),power(A,3),r,s)
    data=load('algebra.json')
    for name,p in [('R',r),('S',s),('F20',f)]:
        assert_equal(p,from_records(data['polynomials'][name]),'new coefficient reconstruction '+name)
    for name,p in [('R_positive',r),('S_positive',s),('R_upper',sub(scale(power(n,4),4),r)),('S_upper',sub(scale(power(n,6),8),s))]:
        q=substitute(p,add(x,const(7)),add(x,y,const(7)))
        check(records(q)==data['positive_shifts'][name],name+' coefficients')
        check(q.get((0,0),0)>0 and all(c>0 for c in q.values()),name+' positivity')
    check(min(sum(e) for e in f)==4,'origin order')
    obligations=0
    targets=[]
    for row,w in [(1,10),(3,5),(4,4)]:
        targets.extend((b,row-b,w) for b in range(row+1))
    targets.extend([(0,5,2),(5,0,2),(1,4,4),(4,1,4)])
    for a,b,w in targets:
        t=taylor(f,a,b)
        for i in range(w):
            for j in range(w-i):
                check(t.get((i,j),0)==0,'full Taylor order');obligations+=1
    for a,b,o in data['source_orders']:check(order(f,a,b)==o,'exact source order')
    # Native normal-coordinate identities: here x=n, y=U.
    nn=x;u=y
    assert_equal(S(nn,mul(sub(nn,const(1)),u)),mul(power(sub(nn,const(1)),3),S_normal(nn,u)),'S normalization')
    expected_r=add(scale(power(u,2),27),scale(mul(u,nn),-9),scale(power(nn,2),4),scale(nn,-28),const(48))
    assert_equal(R(nn,mul(sub(nn,const(1)),u)),mul(power(sub(nn,const(1)),2),expected_r),'R normalization')
    h=H_normal(nn,u);sn=S_normal(nn,u)
    assert_equal(sn,sub(scale(mul(sub(nn,const(5)),sub(nn,const(4)),sub(nn,const(3))),8),mul(sub(u,const(1)),h)),'positive pure-5 recovery identity')
    hh=substitute(h,add(x,const(14)),sub(scale(add(x,const(14)),F(1,3)),y))
    check(hh.get((0,0),0)>0 and all(c>0 for c in hh.values()),'H positive on U<n/3')
    expected={F(0):F(32),F(1):F(-13),F(3,2):F(-61,4)}
    for v,e in expected.items():
        t=substitute(h,const(5),const(v));check(t==const(e),'row5 residue table')
    # The second normalized quotient is integral at the three full source blocks.
    for n0,u0 in [(3,F(0)),(4,F(0)),(4,F(4,3))]:
        check(substitute(h,const(n0),const(u0))=={},'H source divisibility')
    xx=x;yy=y;ns=add(xx,yy);JJ=mul(xx,yy);NN=sub(ns,const(1))
    ZZ=add(scale(mul(power(NN,2),sub(ns,const(3)),sub(ns,const(4))),16),
           scale(mul(NN,sub(ns,const(3)),JJ),-36),scale(power(JJ,2),27))
    for b0,expectedZ in [(0,512),(1,-208),(2,-244),(3,-244),(4,-208),(5,512)]:
        check(taylor(ZZ,b0,5-b0).get((0,0),0)==expectedZ,'actual integer Z source value')
    for prime in (2,3,5,13,61):
        check(all(prime%d for d in range(2,math.isqrt(prime)+1)),'support primality')
    # Source orders for the integral L6, including the true center double precision.
    for a,b,w in [(0,3,2),(3,0,2),(1,2,1),(2,1,1),(0,4,1),(4,0,1),(1,3,1),(3,1,1),(2,2,2),(1,4,1),(4,1,1)]:
        check(order(s,a,b)>=w,'S integral-quotient source order')
    # Fixed-factor-cone limitation, not a claim about arbitrary polynomials.
    pool={'J':J,'A':A,'R0':R_old(n,J),'R':r,'S':s}
    points=[tuple(t) for t in data['pool_points']];weights=data['pool_weights']
    for rec in data['pool_records']:
        p=pool[rec['name']];o=[order(p,*pt) for pt in points];D=max(sum(e) for e in p)
        check(o==rec['orders'] and D==rec['degree'],'pool data')
        check(sum(w*a for w,a in zip(weights,o))==4*D,'pool dual bound')
    # All upper constants use exact rational comparisons.
    check(F(1)-F(41,1530)>F(243,250),'B positive denominator factor')
    check(F(1)-F(41,1280)>F(8,9),'A positive denominator factor')
    check(F(3**5*2**4,32)==F(243,2) and F(4**4,32)==8,'small-part costs')
    return {'F20_terms':len(f),'Taylor_zero_checks':obligations,'positive_core_terms':[len(r),len(s)],'fixed_pool_factors':len(pool)}

def qig_algebra():
    x={(1,0):F(1)};y={(0,1):F(1)};n=add(x,y);X=mul(x,y)
    cs=[mul(falling_binom(x,t),falling_binom(y,4-t)) for t in range(5)];a0,a1,a2,a3,a4=cs
    I=add(scale(mul(a4,a0),12),scale(mul(a3,a1),-3),power(a2,2))
    J=add(scale(mul(a4,a2,a0),72),scale(mul(a3,a2,a1),9),scale(mul(a4,power(a1,2)),-27),scale(mul(power(a3,2),a0),-27),scale(power(a2,3),-2))
    d=sub(add(X,const(1)),n)
    assert_equal(scale(I,8),mul(X,d,sub(n,const(3)),sub(n,const(2))),'quartic I')
    assert_equal(scale(J,-16),mul(power(X,2),d,power(sub(n,const(3)),2),sub(n,const(2))),'quartic J')
    gap=sub(power(J,2),scale(power(I,3),2))
    ans=mul(power(X,3),power(d,2),power(sub(n,const(3)),3),power(sub(n,const(2)),2),sub(mul(sub(n,const(1)),sub(n,const(2))),X))
    assert_equal(scale(gap,256),ans,'strict positive integer gap')
    return True

def classification():
    check(pow(5,6,72)==pow(13,6,72)==pow(61,6,72)==1,'full exponent periods')
    cases=0
    for E0 in range(6):
        E=E0+6
        for b in range(6):
            for c in range(6):
                A=(3*pow(5,E,1800)*pow(13,b,1800)*pow(61,c,1800)+5)%1800
                B=(pow(5,E,1800)*pow(13,b,1800)*pow(61,c,1800)+5)%1800
                check((A==1280)==(E%2==1 and (b+c)%2==1),'A complete residue classification')
                check((B==1530)==(E%2==0 and (b+c)%2==1 and (E+4*b+2*c)%6==4),'B complete residue classification')
                cases+=2
    return cases

def analytic_constants():
    # The analytic theorem is a documented source assumption. This verifies ONLY the substituted rational envelope.
    C=22000*100**10*2*5**4*6
    check(C<10**29,'Yu constant envelope')
    check(10**33>3*10**29*99,'absolute cap comparison')
    check(3*30**6<2**32,'native QIG mass constant')
    return {'Phi_upper':str(C),'H_cap':str(10**33),'external_theorem_reproved':False}

def duals():
    data=load('dual_certificates.json');seen=set()
    for d in data:
        case=d['case'];p=d['p'];h=d['h'];X=int(d['coordinate_bound'])
        check((X,h) in ([(10**33,420),(500,45)] if p==2 else [(10**33,275),(500,30)]),'certificate working level')
        mod=p**h;M=2**(h-2) if p==2 else 2*3**(h-1)
        check(M==int(d['period']),'complete multiplicative order')
        a,b,T=map(int,(d['log13'],d['log61'],d['target']))
        check(0<=a<M and 0<=b<M and 0<=T<M,'canonical exponent residues')
        check(pow(5,a,mod)==13%mod and pow(5,b,mod)==61%mod,'source exponent logarithms')
        num,den=(((-5,3) if p==2 else (-1,1)) if case=='A' else ((-3,1) if p==2 else (-5,1)))
        check(d['numerator']==num and d['denominator']==den,'actual affine target')
        check((den*pow(5,T,mod)-num)%mod==0,'target logarithm')
        v=list(map(int,d['dual']));check(len(v)==3,'dual dimension')
        check((v[1]-v[0]*a)%M==0 and (v[2]-v[0]*b)%M==0,'dual congruences')
        z=v[0]*T%M;dist=min(z,M-z);cost=X*sum(map(abs,v))
        check(dist==int(d['distance']) and cost==int(d['cost']) and dist>cost,'strict separation')
        key=(case,p,X);check(key not in seen,'unique dual key');seen.add(key)
    check(seen=={(c,p,X) for c in ('A','B') for p in (2,3) for X in (10**33,500)},'dual coverage')
    caps={}
    for c in ('A','B'):
        w=275 if c=='A' else 274
        first=(12+6*419+12*w)//14
        check(first<500,'first-stage exponent bound')
        w=30 if c=='A' else 29
        caps[c]=(12+6*44+12*w)//14
    check(caps=={'A':45,'B':44},'second-stage bound')
    return len(data),caps

def triples_reverse(case,H):
    # Complete total-degree enumeration, different from the discovery loop nesting.
    for total in range(H,2,-1):
        for c in range(total-1):
            for b in range(total-c-1):
                E=total-b-c
                if E<2:continue
                if case=='A' and E%2 and (b+c)%2:yield E,b,c
                elif case=='B' and E%2==0 and (b+c)%2 and (E+4*b+2*c)%6==4:yield E,b,c

def finite(caps):
    records0=load('modular_caps.json');count=0
    for d in records0:
        c=d['case'];H=d['H_max'];check(H==caps[c],'finite stage follows proved cap')
        vals=[]
        for E,b,k in triples_reverse(c,H):
            n=(3 if c=='A' else 1)*5**E*13**b*61**k+5
            u=vp(n-(0 if c=='A' else 2),2);w=vp(n-(2 if c=='A' else 0),3)
            vals.append((E,b,k,u,w))
        check(len(vals)==d['count'],'complete finite count')
        check(max(v[-2] for v in vals)==d['u_max'] and max(v[-1] for v in vals)==d['w_max'],'exact finite valuation caps')
        digest=hashlib.sha256(json.dumps(sorted(vals),separators=(',',':')).encode()).hexdigest()
        check(digest==d['digest'],'finite-domain digest')
        bound=(12+6*d['u_max']+12*d['w_max'])//14
        check(bound==d['next_H_max'] and bound<H,'strict finite compression')
        caps[c]=bound;count+=len(vals)
    check(caps=={'A':11,'B':6},'final exponent caps')
    actual=[]
    for c in ('A','B'):
        for E,b,k in triples_reverse(c,caps[c]):
            n=(3 if c=='A' else 1)*5**E*13**b*61**k+5
            T,L,R=qig_sides(n);check(L<R,'strict native QIG terminal')
            check(n%1800==(1280 if c=='A' else 1530),'terminal row type')
            actual.append(dict(case=c,E=E,b=b,c=k,n=str(n),T=str(T),lhs=str(L),rhs=str(R)))
    key=lambda d:(d['case'],d['E'],d['b'],d['c'])
    check(sorted(actual,key=key)==sorted(load('finite_tail.json'),key=key),'complete terminal list')
    return {'bounded_triples':count,'terminal_rows':len(actual),'A_rows':sum(d['case']=='A' for d in actual),'B_rows':sum(d['case']=='B' for d in actual),'max_terminal_n':str(max(int(d['n']) for d in actual))}

def witnesses():
    data=load('witnesses.json')
    for d in data:
        n,j,p=d['n'],d['j'],d['p']
        check(p>=7 and all(p%d for d in range(2,math.isqrt(p)+1)),'deterministic witness primality')
        def bv(i):
            v=0;h=p
            while h<=n:
                v+=n//h-i//h-(n-i)//h;h*=p
            return v
        check(bv(6)>0 and bv(j)>0,'actual binomial common prime')
        res=consume(n,j);check(res['covered'],'actual consumer test')
    # Formula checks are implementation regressions, not evidence for unbounded quantifiers.
    for t in (0,1,19):
        q=41+360*t;n=125*q+5;j=9*q+1
        check(math.gcd(n,j)==10 and qrow(n,5)==q and n%9000==5130,'nonempty family identities')
        check(consume(n,j)['covered'],'nonempty family consumer')
    return len(data)

def main():
    p=argparse.ArgumentParser();p.add_argument('--json',action='store_true');p.add_argument('--skip-hashes',action='store_true',help='development only')
    args=p.parse_args()
    info={'status':'PASS_Q5_NEARSIDE_L7_1361_CLOSURE','hashes':None if args.skip_hashes else hashes(),
          'new_algebra':algebra(),'qig_identities':qig_algebra(),'period_classification_cases':classification(),
          'analytic_parameters':analytic_constants()}
    n,c=duals();info['dual_certificates']=n;info['finite']=finite(c);info['witnesses']=witnesses()
    print(json.dumps(info,ensure_ascii=False,indent=2) if args.json else info['status'])

if __name__=='__main__':main()
