#!/usr/bin/env python3
"""Exact, deterministic checks for this round. No Lean and no NC oracle.
The infinite assertions are proved in PROOFS.md; evaluations below are tests.
"""
from __future__ import annotations
import argparse, hashlib, json
from fractions import Fraction
from math import gcd, isqrt
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

def vp(x: int, p: int) -> int:
    if x == 0 or p < 2:
        raise ValueError('valuation requires nonzero x and p >= 2')
    x=abs(x); e=0
    while x % p == 0:
        x//=p; e+=1
    return e

def binom_v(n: int, j: int, p: int) -> int:
    if not (0 <= j <= n):
        raise ValueError('invalid binomial arguments')
    ans=0; q=p
    while q <= n:
        ans += n//q-j//q-(n-j)//q
        q*=p
    return ans

def prime(p: int) -> bool:
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def rough6(x: int) -> int:
    if x <= 0: raise ValueError('positive integer required')
    for p in (2,3,5):
        while x%p==0: x//=p
    return x

# Small exact multivariate polynomial implementation, over Q.
class Poly:
    nvars=6
    def __init__(self, terms=None):
        if isinstance(terms,(int,Fraction)):
            terms={(0,)*self.nvars: Fraction(terms)}
        self.terms={m:Fraction(c) for m,c in (terms or {}).items() if c}
    @classmethod
    def var(cls,i):
        m=[0]*cls.nvars; m[i]=1
        return cls({tuple(m):1})
    @staticmethod
    def coerce(x): return x if isinstance(x,Poly) else Poly(x)
    def __add__(self,o):
        o=self.coerce(o); d=dict(self.terms)
        for m,c in o.terms.items():d[m]=d.get(m,Fraction(0))+c
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({m:-c for m,c in self.terms.items()})
    def __sub__(self,o):return self+-self.coerce(o)
    def __rsub__(self,o):return self.coerce(o)+-self
    def __mul__(self,o):
        o=self.coerce(o);d={}
        for m,a in self.terms.items():
            for k,b in o.terms.items():
                r=tuple(x+y for x,y in zip(m,k));d[r]=d.get(r,Fraction(0))+a*b
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,n):
        if n<0:raise ValueError('nonnegative power required')
        r=Poly(1)
        for _ in range(n):r=r*self
        return r
    def zero(self):return not self.terms

def identities():
    a,b,g,t,n,U=(Poly.var(i) for i in range(6))
    gamma=a-b
    rho=b*gamma-t*(g*a-1)
    Hj=b-g*t; Hk=gamma-g*t
    assert (b*b-a*Hj-t+rho).zero()
    assert (Hj*Hk-t*(g*g*t-1)-rho).zero()
    assert ((n-2)**2-4*(n-1)*(U-1)-(n*n-4*(n-1)*U)).zero()
    # Original-target shift identity is checked by factorial arguments in paper.
    # Family identity: c=10g+d, w=z^2; clear the denominator d.
    d,w=(Poly.var(4),Poly.var(5));c=10*g+d
    assert (c*w*((c*c-d*c)*w-10)-10*w*(g*c*c*w-10*g-d)).zero()
    return {'four_cleared_polynomial_identities':True}

def local_q2():
    checked=0
    # Complete finite residue checks at the stated selected local n values.
    for p in (7,11,13):
        assert prime(p)
        for e in (1,2):
            Q=p**e; mod=Q*Q
            for h in (1,p-1):
                n=2+h*Q; inv=pow(n-1,-1,mod)
                for j in range(mod):
                    U=j*(n-j)*inv%mod
                    E=gcd(Q,U); M=Q//E
                    got=gcd(E,M)==1 and (U-1)%(M*M)==0
                    want=j%Q in (0,1,2)
                    assert got==want
                    checked+=1
    # Weak U-1 congruence can hold at p^e but not p^(2e).
    p=7;Q=p*p;n=Q+2;j=p+1;mod=Q*Q
    U=j*(n-j)*pow(n-1,-1,mod)%mod
    assert (U-1)%Q==0 and (U-1)%mod!=0 and j%Q not in (0,1,2)
    return {'selected_local_residue_checks':checked,
            'weak_congruence_counterexample':{'p':p,'e':2,'n':n,'j':j,'U_mod_p4':U}}

G=130; DELTA=31; C0=1331
Z0=262296091
PERIOD=2025000*31**4

def family(t: int):
    if t<0:raise ValueError('t must be nonnegative')
    z=Z0+PERIOD*t
    assert (C0*C0*z*z-10)%DELTA==0
    alpha=(C0*C0*z*z-10)//DELTA
    n=G*alpha;j=G*C0*z*z;k=n-j
    U=10*G*G*z*z
    assert 7<=j<=n//2 and j%2==0
    assert gcd(n,j)==G and n%9000==5130
    assert j*k==(n-1)*U
    assert vp(alpha,3)==3 and alpha>27
    assert vp(n-5,5)==5
    assert G**4<n
    assert vp(n-2,31)==2 and vp(j-1,31)==vp(k-1,31)==1
    assert vp(U-1,31)==2
    q2=rough6(n-2);q3=rough6(n-3);q4=rough6(n-4);q5=rough6(n-5)
    M2=gcd(q2,j-1);E2=gcd(q2,U);D2=q2//(E2*M2)
    assert q2%(E2*M2)==0 and vp(D2,31)==1
    E3=gcd(q3,j*k);I3=q3//E3
    A4=gcd(q4,(j-1)*(k-1));Q51=gcd(q5,(j-1)*(k-1))
    nu=(U-1)//gcd(U-1,I3*A4*Q51)
    assert nu%(M2*M2)==0
    assert Q51<=4*DELTA*(3*C0-4*DELTA)<q5
    source=binom_v(n,6,31);target=binom_v(n,j,31)
    assert source==2 and target>=1
    # Missing full source layer is an actual target carry, not a weak model NC.
    assert n%(31**2)==2 and j%(31**2)>2
    Hj=(j-U)//G; Hk=(k-U)//G
    assert Hj==DELTA*z*z and gcd(Hj,Hk)==M2
    return {'t':t,'z':z,'n':n,'j':j,'alpha':alpha,'g':G,
            'source31_exponent':source,'target31_exponent':target,
            'M2':M2,'D2':D2,'nu_star':nu,'Q51':Q51,'q5':q5,
            'alpha_v3':3,'E':5,'full_source_layer':31**2,
            'j_mod_31sq':j%(31**2)}

def family_cert():
    assert C0==10*G+DELTA and prime(31)
    assert PERIOD%(31**4)==0 and PERIOD%81==0 and PERIOD%(5**5)==0
    assert PERIOD%9000==0
    assert Z0%2==1 and Z0%5!=0
    # The modular seed + period imply the valuations for ALL t, as in paper.
    seed=family(0)
    test=[family(t) for t in (1,2,7,100)]
    return {'parameters':{'g':G,'delta':DELTA,'c':C0,'z0':Z0,'period':PERIOD},
            'seed':seed,'additional_test_parameters':[x['t'] for x in test],
            'all_t_proof':'PROOFS.md section 4; not inferred from these evaluations'}

def shift_cert():
    p=11;assert prime(p)
    digs=[];n0=5130
    while n0:digs.append(n0%11);n0//=11
    jd=[];j0=770
    while j0:jd.append(j0%11);j0//=11
    assert all(jd[i]<=digs[i] for i in range(len(jd)))
    # 11^L mod 7 runs through a period-three group; this is a modular identity.
    assert pow(11,3,7)==1
    assert all((900*pow(11,L,7)+513)%7!=0 for L in range(3))
    records=[]
    for L in (4,5,6,10,20):
        n=9000*11**L+5130;j=770;k=n-j
        assert n%9000==5130 and gcd(n,j)==10 and 7<=j<=n//2
        assert vp(n-5,5)==3 and vp(n-4,11)==1
        old=binom_v(n,j,11);new=binom_v(n-2,j-1,11)
        assert old==0 and new==1 and binom_v(n-2,3,11)==1
        assert binom_v(n,6,11)==1
        assert binom_v(n-2,4,5)==3 and binom_v(n-2,j-1,5)>=1
        assert j*k%(n-1)!=0
        assert vp(n//10,3)==2 and n//10>9
        records.append({'L':L,'old_target11':old,'shifted_target11':new,
                        'shifted_i4_source5':3,'shifted_target5':binom_v(n-2,j-1,5)})
    return {'n_low_base11_digits':digs,'j_base11_digits':jd,'tests':records,
            'all_L_proof':'PROOFS.md section 6; L>=4'}

def norm_checks():
    # Unit-residue proofs of the two norm obstructions, not exponent scans.
    nonres={D:all((x*x-D*y*y)%5 for x in range(5) for y in range(5)
                 if x%5 or y%5) for D in (2,3)}
    assert all(nonres.values())
    assert all((x*x-5*y*y)%8==4 for x in (1,3,5,7) for y in (1,3,5,7))
    assert all((3*y*y+z*z)%8==4 for y in (1,3,5,7) for z in (1,3,5,7))
    assert all((3*y*y+z*z)%2==1 for y in range(2) for z in range(2) if y!=z)
    assert (7*7-3*3)==10*2*2 # D=1 has rational norm solutions: need gap lemma.
    return {'obstructed_squareclasses_of_alphaH':[1,2,3,5,30],
            'D1_uses_integer_gap_not_local_anisotropy':True}

def hashes():
    f=ROOT/'SHA256SUMS'
    if not f.exists():return {'status':'not_present_during_bootstrap'}
    count=0
    for line in f.read_text().splitlines():
        digest,name=line.split('  ',1)
        p=ROOT/name
        assert p.is_file(),name
        assert hashlib.sha256(p.read_bytes()).hexdigest()==digest,name
        count+=1
    return {'status':'PASS','files':count}

def main():
    if not __debug__:
        raise RuntimeError('Do not run this verifier with Python -O: assertions must stay enabled')
    ap=argparse.ArgumentParser();ap.add_argument('--json',action='store_true');ap.add_argument('--write',action='store_true')
    args=ap.parse_args()
    out={'status':'PASS','identities':identities(),'q2_tests':local_q2(),
         'partial_source_family':family_cert(),'shift_obstructions':shift_cert(),
         'squareclass_checks':norm_checks()}
    if args.write:
        (ROOT/'evidence/replay_results.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    elif (ROOT/'evidence/replay_results.json').exists():
        assert out == json.loads((ROOT/'evidence/replay_results.json').read_text()), 'replay results differ'
    out['hashes']=hashes()
    if args.json:print(json.dumps(out,ensure_ascii=False,indent=2))
    else:print(json.dumps({'status':out['status'],'q2_checks':out['q2_tests']['selected_local_residue_checks'],
                           'family_period':PERIOD,'source31':out['partial_source_family']['seed']['source31_exponent'],
                           'target31':out['partial_source_family']['seed']['target31_exponent'],
                           'hashes':out['hashes']},ensure_ascii=False))
if __name__=='__main__':main()
