#!/usr/bin/env python3
"""Standard-library exact replay. No unbounded scans, no LLL, no symbolic CAS.
Yu's stated analytic theorem is an explicit paper input, NOT proved by this code.
"""
from __future__ import annotations
import argparse,hashlib,json,math,sys,time
from fractions import Fraction as F
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
from poly_exact import const,add,sub,scale,mul,power,falling_binom,assert_equal
from consumer import consume,rough6,numerators,some_power_divides

def check(ok: bool,msg: str):
    if not ok:raise AssertionError(msg)

def load(name):return json.loads((ROOT/'evidence'/name).read_text())

def hashes():
    seen=set()
    for line in (ROOT/'SHA256SUMS').read_text().splitlines():
        h,p=line.split('  ',1);path=ROOT/p
        check(p not in seen and path.is_file(),'manifest path')
        check(path.resolve().is_relative_to(ROOT.resolve()),'unsafe manifest path')
        seen.add(p);check(hashlib.sha256(path.read_bytes()).hexdigest()==h,'hash mismatch: '+p)
    actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file() and p.name!='SHA256SUMS' and '__pycache__' not in p.parts}
    check(seen==actual,'manifest is not complete')
    return len(seen)

def evalp(p,a,b):return sum(c*a**e[0]*b**e[1] for e,c in p.items())

def algebra():
    x={(1,0):F(1)};y={(0,1):F(1)}
    # Here x=n, y=U. Exact identities used for positive nonzero branches.
    K=add(scale(power(x,2),10),scale(mul(x,y),-36),scale(x,-34),scale(power(y,2),27),scale(y,81),const(12))
    H=add(scale(mul(sub(x,const(3)),sub(x,const(4))),16),scale(mul(sub(x,const(3)),y),-36),scale(power(y,2),27))
    b=sub(x,scale(y,3))
    assert_equal(K,add(scale(power(b,2),3),scale(mul(b,sub(scale(x,2),const(9))),3),mul(sub(x,const(3)),sub(x,const(4)))),'positive K identity')
    assert_equal(H,add(scale(power(add(scale(y,3),scale(x,-2),const(6)),2),3),scale(mul(sub(x,const(7)),sub(x,const(3))),4)),'positive H identity')
    assert_equal(sub(K,H),scale(add(scale(power(x,2),2),scale(x,-26),scale(y,9),const(60)),-3),'first-route exact elimination')
    # Exact fixed-gcd reduction in the RES10 full-nearside system.
    T7=sub(scale(mul(sub(x,const(5)),sub(x,const(4)),sub(x,const(3))),8),mul(sub(y,const(1)),H))
    def compose(pol,A,B):
        return add(*(scale(mul(power(A,i),power(B,j)),c) for (i,j),c in pol.items()))
    h2=compose(H,add(const(2),scale(x,8)),scale(y,8))
    t2=compose(T7,add(const(2),scale(x,8)),scale(y,8))
    check(all(c.denominator==1 and int(c)%32==0 for c in h2.values()),'H divisible by32')
    check(all(c.denominator==1 and int(c)%32==0 for c in add(t2,const(16)).values()),'T exactly four 2-adic layers')
    for pol in (H,T7):
        pp=compose(pol,scale(x,3),y)
        check(all(c.denominator==1 and int(c)%3==0 for c in pp.values()),'H/T divisible by3')
    h5=sub(compose(H,scale(x,5),scale(y,5)),const(2))
    check(all(c.denominator==1 and int(c)%5==0 for c in h5.values()),'H is a 5-adic unit')
    expected=[(0,0,1472,512),(1,4,320,-208),(2,6,68,-244),(3,6,68,-244),(4,4,320,-208),(5,0,1472,512)]
    actual=[]
    for slot,J,kv,hv in expected:
        U=F(J,4);Kc=16*evalp(K,5,U);Hc=16*evalp(H,5,U)
        check(Kc==kv and Hc==hv,'raw numerator source evaluation')
        val=abs(int(Kc*Hc));parts=[]
        for p in (2,3,5):
            while val%p==0:val//=p
        check(val==({0:23,1:13,2:1037,3:1037,4:13,5:23}[slot]),'exact squarefree slot support')
        actual.append({'slot':slot,'J':J,'Kcal':kv,'Hcal':hv,'rough_product_constant':val})
    check(actual==load('algebra.json')['slot_values'],'frozen complete six-slot table')
    check(13*17*23*61==310063,'support product constant')
    for p in (13,17,23,61):check(all(p%d for d in range(2,math.isqrt(p)+1)),'support prime')
    # Native four-source quartic integer gap, reconstructed from falling factorials.
    n=add(x,y);J=mul(x,y)
    cs=[mul(falling_binom(x,t),falling_binom(y,4-t)) for t in range(5)]
    a0,a1,a2,a3,a4=cs
    I=add(scale(mul(a4,a0),12),scale(mul(a3,a1),-3),power(a2,2))
    Q=add(scale(mul(a4,a2,a0),72),scale(mul(a3,a2,a1),9),scale(mul(a4,power(a1,2)),-27),scale(mul(power(a3,2),a0),-27),scale(power(a2,3),-2))
    A=add(J,scale(n,-1),const(1))
    assert_equal(scale(I,8),mul(J,A,sub(n,const(3)),sub(n,const(2))),'quartic I')
    assert_equal(scale(Q,-16),mul(power(J,2),A,power(sub(n,const(3)),2),sub(n,const(2))),'quartic J')
    gap=sub(power(Q,2),scale(power(I,3),2))
    expected_gap=mul(power(J,3),power(A,2),power(sub(n,const(3)),3),power(sub(n,const(2)),2),sub(mul(sub(n,const(1)),sub(n,const(2))),J))
    assert_equal(scale(gap,256),expected_gap,'positive quartic gap')
    return {'complete_slot_values':6,'integer_polynomial_identities':6,'fixed_gcd_congruence_certificates':5,'support_product':310063}

def valid(case,E,b,c,f,e):
    if E<2:return False
    if case=='A':return (E+b+e)%2==0 and (E+c)%2==1
    return (E+b+e)%2==1 and (E+4*b+3*c+2*f+2*e)%6==4

def classification():
    cases=0
    for p in (5,13,17,23,61):check(pow(p,6,72)==1,'complete unit period')
    for E0 in range(6):
      E=E0+6
      for b in range(6):
       for c in range(6):
        for d in range(6):
         for e in range(6):
          P=math.prod(pow(p,a,1800) for p,a in zip((5,13,17,23,61),(E,b,c,d,e)))%1800
          for case,delta,target in [('A',3,1280),('B',1,1530)]:
           ok=(d%2==0 and valid(case,E,b,c,d//2,e))
           check(((delta*P+5)%1800==target)==ok,'full residue parameterization')
           cases+=1
    return cases

def analytic():
    C=22000*100**14*2*5**6*6
    check(C==41250000000000000000000000000000000000 and C<10**38,'six-log constant envelope')
    check(F(133,2)**2*2<100**2,'six-log square-root bound')
    check(F(8,3)**6>300,'log300<6')
    check(F(8,3)**5>61,'log61<5')
    check(10**42>3*10**38*126,'absolute cap monotone comparison')
    check(3*30**6<2**32,'QIG mass constant')
    for p,w in zip((5,13,17,529,61),(2,3,4,8,5)):check(p>2**w,'weighted growth')
    check(load('analytic.json')=={'logarithm_count':6,'height_parameters':[5]*6,'Phi_upper':str(C),'H_cap':str(10**42),'weighted_coordinates':[2,3,4,8,5],'external_theorem_reproved':False},'analytic record')
    return {'Phi_upper':str(C),'H_cap':str(10**42),'external_theorem_reproved':False}

def duals():
    seen=set();data=load('dual_certificates.json')
    for d in data:
        case=d['case'];p=d['p'];h=d['h'];X=int(d['X'])
        check(case in ('A','B'),'tail key')
        check((p,h,X) in ((2,800,10**42),(3,505,10**42),(2,85,1000),(3,55,1000)),'work level and coordinate bound')
        mod=p**h;M=2**(h-2) if p==2 else 2*3**(h-1)
        check(M==int(d['M']),'complete period')
        check(pow(5,M,mod)==1,'period exponent')
        for prime in ((2,) if p==2 else (2,3)):check(pow(5,M//prime,mod)!=1,'exact order')
        logs=list(map(int,d['logs']));target=int(d['target'])
        check(len(logs)==4 and all(0<=z<M for z in logs+[target]),'canonical logarithms')
        for z,b in zip(logs,(13,17,529,61)):check(pow(5,z,mod)==b%mod,'actual base logarithm')
        expected={('A',2):(-5,3),('A',3):(-1,1),('B',2):(-3,1),('B',3):(-5,1)}[case,p]
        check((d['num'],d['den'])==expected,'correct original affine target')
        check((d['den']*pow(5,target,mod)-d['num'])%mod==0,'target logarithm')
        row=list(map(int,d['dual']));check(len(row)==5,'dual dimension')
        for a,b in zip(row[1:],logs):check((a-row[0]*b)%M==0,'dual congruence')
        z=row[0]*target%M;dist=min(z,M-z);cost=X*sum(map(abs,row))
        check(dist==int(d['distance']) and cost==int(d['cost']) and dist>cost,'strict integer separation')
        key=(case,p,X);check(key not in seen,'duplicate dual key');seen.add(key)
    check(seen=={(case,p,X) for case in ('A','B') for p in (2,3) for X in (10**42,1000)},'all eight dual obligations')
    first={case:(12+6*799+12*(505 if case=='A' else 504))//14 for case in ('A','B')}
    check(first=={'A':776,'B':775} and max(first.values())<1000,'intermediate global H bound')
    caps={case:(12+6*84+12*(55 if case=='A' else 54))//7 for case in ('A','B')}
    check(caps=={'A':168,'B':166},'weighted bounds')
    return len(data),caps

def vp(x,p):
    if x<=0:raise ValueError('valuation argument')
    a=0
    while x%p==0:x//=p;a+=1
    return a

def tuples_independent(case,D):
    # Enumerate exact weighted degree first, not the discovery program's rectangular loops.
    for total in range(D,3,-1):
      for e in range((total-4)//5+1):
       for f in range((total-4-5*e)//8+1):
        for c in range((total-4-5*e-8*f)//4+1):
         for b in range((total-4-5*e-8*f-4*c)//3+1):
          rem=total-5*e-8*f-4*c-3*b
          if rem%2:continue
          E=rem//2
          if valid(case,E,b,c,f,e):yield E,b,c,f,e

def n_from(case,x):return (3 if case=='A' else 1)*math.prod(p**a for p,a in zip((5,13,17,529,61),x))+5

def qig(n):
    T=math.prod((n-r)//rough6(n-r) for r in range(4))
    return T,T**6*(3*n*n-12*n+8),2**20*(n-1)**6*(n-3)**3

def finite(caps):
    checks=0;stage_out=[]
    for rec in load('finite_compression.json'):
        case=rec['case'];D=rec['Dmax'];check(D==caps[case],'finite stage has proved predecessor')
        vals=[]
        for x in tuples_independent(case,D):
            n=n_from(case,x);u=vp(n-(0 if case=='A' else 2),2);w=vp(n-(2 if case=='A' else 0),3)
            vals.append((*x,u,w))
        vals.sort();check(len(vals)==rec['count'],'complete finite count')
        umax=max(z[-2] for z in vals);wmax=max(z[-1] for z in vals)
        check((umax,wmax)==(rec['u_max'],rec['w_max']),'exact maxima')
        hasher=hashlib.sha256()
        for z in vals:hasher.update((','.join(map(str,z))+'\n').encode())
        check(hasher.hexdigest()==rec['hash'],'whole finite domain checksum')
        bound=(12+6*umax+12*wmax)//7
        check(bound==rec['next_Dmax'] and bound<D,'strict finite compression')
        caps[case]=bound;checks+=len(vals)
        stage_out.append({'case':case,'from':D,'to':bound,'count':len(vals)})
    check(caps=={'A':13,'B':12},'complete terminal domains')
    actual=[]
    for case in ('A','B'):
        for x in tuples_independent(case,caps[case]):
            n=n_from(case,x);T,l,r=qig(n);check(l<r,'strict native original-row QIG')
            actual.append({'case':case,'exponents':list(x),'n':str(n),'T':str(T),'lhs':str(l),'rhs':str(r),'pass':True})
    sortkey=lambda z:(z['case'],z['exponents'])
    check(sorted(actual,key=sortkey)==sorted(load('finite_tail.json'),key=sortkey),'all original-row endpoints')
    check(len(actual)==6 and max(int(z['n']) for z in actual)==121880,'terminal summary')
    return {'finite_exponent_checks':checks,'terminal_rows':len(actual),'max_n':str(max(int(z['n']) for z in actual)),'stages':stage_out}

def vp_binom(n,j,p):
    ans=0;Q=p
    while Q<=n:ans+=n//Q-j//Q-(n-j)//Q;Q*=p
    return ans

def examples():
    data=load('examples.json')
    for rec in data:
        n=int(rec['n']);j=int(rec['j']);p=rec['p']
        check(all(p%d for d in range(2,math.isqrt(p)+1)) and p>=7,'example prime')
        check(vp_binom(n,6,p)>0 and vp_binom(n,j,p)>0,'original common prime')
        out=consume(n,j);check(out['accepted'],'example accepted')
        if rec.get('strict_joint_example'):
            q=rough6(n-5);kc,hc=numerators(n,j)
            check(not some_power_divides(q,kc) and not some_power_divides(q,hc),'outside both single-absorption clauses')
            check(some_power_divides(q,kc*hc),'joint-absorption clause')
            check(q==13**2*17 and math.gcd(q,kc)==17 and math.gcd(q,hc)==13,'exact mixed supports')
            check((kc*hc)**2%q==0 and (kc*hc)%q!=0,'complete prime powers retained')
    # This is ONLY an exact counterexample to a positive-sum inference; NOT an NC model.
    for E in (1,2,7,50):
        a=24*5**E-1;b=24*5**E+1
        check(a+b==48*5**E and min(a,b)>1 and math.gcd(a,b)==1 and a%5*b%5!=0,'positive-sum diagnostic implementation')
    for E in (3,4,7,50):
        l6=1;l7=5**E-77;eta=1
        check(5**E==7*11*l6+eta*l7 and l7>0 and l7%2==0 and math.gcd(l6,l7)==1 and math.gcd(77,l7)==1,'primitive-sum diagnostic')
        check(math.gcd(48*l6,48*l7)==48,'fixed-gcd diagnostic')
    return len(data)

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--json',action='store_true');args=parser.parse_args()
    start=time.monotonic();members=hashes()
    out={'status':'PASS_Q5_MIXED_FOUR_SUPPORT_FULL_ROW_CLOSURE','members':members,'algebra':algebra(),'classification_cells':classification(),'analytic':analytic()}
    num,caps=duals();out['dual_certificates']=num;out['finite']=finite(caps);out['examples']=examples()
    check(hashes()==members,'post-replay member hashes')
    out['elapsed_seconds']=round(time.monotonic()-start,3)
    print(json.dumps(out,ensure_ascii=False,indent=2) if args.json else out['status'])
if __name__=='__main__':main()
