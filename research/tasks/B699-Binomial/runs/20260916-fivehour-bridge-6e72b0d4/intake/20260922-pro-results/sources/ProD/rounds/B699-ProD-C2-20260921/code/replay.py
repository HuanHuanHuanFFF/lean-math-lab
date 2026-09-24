"""Standard-library exact replay. Finite regressions are NOT finite terminals.

The infinite claims are proved in PROOFS.md. This program checks coefficient
identities, supplied certificates, original-input examples, and implementations.
It neither enumerates all n nor runs the frozen LROW algorithm.
"""
from __future__ import annotations
from collections import Counter
from math import gcd, isqrt
from pathlib import Path
import json
import sys
from two_cluster import family, certify_tc7, certify_bl6

ROOT = Path(__file__).resolve().parents[1]


# Sparse multivariate polynomials over Z for exact coefficient comparisons.
class Poly:
    def __init__(self, n: int, terms=None):
        self.n = n
        self.d = {k: v for k, v in (terms or {}).items() if v}
    @classmethod
    def scalar(cls, n, c):
        return cls(n, {(0,)*n: c})
    @classmethod
    def variable(cls, n, i):
        e = [0]*n; e[i] = 1
        return cls(n, {tuple(e): 1})
    def wrap(self, b):
        if isinstance(b, int): return Poly.scalar(self.n, b)
        assert b.n == self.n
        return b
    def __add__(self, b):
        b = self.wrap(b); d = dict(self.d)
        for k, v in b.d.items(): d[k] = d.get(k, 0) + v
        return Poly(self.n, d)
    __radd__ = __add__
    def __neg__(self): return Poly(self.n, {k: -v for k,v in self.d.items()})
    def __sub__(self, b): return self + (-self.wrap(b))
    def __rsub__(self, b): return self.wrap(b) + (-self)
    def __mul__(self, b):
        b = self.wrap(b); d = {}
        for p,c in self.d.items():
            for q,e in b.d.items():
                k = tuple(x+y for x,y in zip(p,q))
                d[k] = d.get(k, 0) + c*e
        return Poly(self.n,d)
    __rmul__ = __mul__
    def __pow__(self, e):
        assert isinstance(e, int) and e >= 0
        r = Poly.scalar(self.n, 1)
        for _ in range(e): r = r*self
        return r


def assert_zero(p):
    assert not p.d, p.d


def coeff_checks():
    A,b,Q,P,q,c,g = [Poly.variable(7,i) for i in range(7)]
    alpha = Q*P**2; x = A*Q*P+b
    H = A**2*Q+q; t = c*Q*P+b**2
    assert_zero((x**2-alpha*H-t) - Q*P*(2*A*b-q*P-c))
    assert_zero((x-H-g*t) - (Q*((A-g*c)*P-A**2)+b-q-g*b**2))
    assert_zero((x*(alpha-x)-(g*alpha-1)*t)
                - (alpha*(x-H-g*t)-(x**2-alpha*H-t)))
    D,u,v,s,w = [Poly.variable(5,i) for i in range(5)]
    assert_zero((u**2+D*v**2)*(s**2+D*w**2)
                - ((u*s-D*v*w)**2+D*(u*w+v*s)**2))
    M = Poly.variable(1,0)
    assert_zero((M**3-((M-1)**3+M-2))-(3*M**2-4*M+3))
    y = Poly.variable(1,0)
    assert_zero((3*(y+3)**2-4*(y+3)+3)-(3*y**2+14*y+18))
    return 6


def bezout_checks():
    certs = json.loads((ROOT/'code/bezout_certificates.json').read_text())
    T = Poly.variable(1,0)
    f = T**5-T**4+T-2
    def fromlist(cs):
        p = Poly.scalar(1,0)
        for i,c in enumerate(cs): p += c*T**i
        return p
    for row in certs:
        z = fromlist(row['P_multiplier'])*(T**7+row['sign'])
        z += fromlist(row['F_multiplier'])*(f+row['offset'])
        assert_zero(z-row['constant'])
    return [r['constant'] for r in certs]


def exact_recovery(alpha, x):
    H,t = divmod(x*x,alpha)
    if not t or (x-H) % t:
        return None
    g = (x-H)//t
    if g >= 2:
        assert x*(alpha-x) == t*(g*alpha-1)
        return g
    return None


def regression_tc7():
    cases=0; branches=Counter()
    for h in (1,2,3):
        M=3**h
        for a in range(7*h,7*h+3):
            alpha=3**a
            for r in range(h,a):
                for A in range(1,M):
                    for b in range(1,M):
                        if b%3==0:continue
                        x=A*3**r+b
                        if x>=alpha:continue
                        cases+=1
                        if 2*r+2*h<=a:key='low_square'
                        elif 2*r<a:key='middle_square'
                        elif a-r>=2*h+1:key='high_no_wrap'
                        else:key='high_recovery'
                        branches[key]+=1
                        assert exact_recovery(alpha,x) is None,(h,a,r,A,b)
    return {'purpose':'implementation regression, not complete original-problem terminal',
            'cases':cases,'branches':dict(branches)}


def regression_bl6():
    cases=0; boundary=0
    for T in (3,5,7,9,15,27,81):
        for m in (6,7,8):
            alpha=T**m
            for r in range(1,m):
                for b in range(1,T):
                    if gcd(b,T)>1:continue
                    for A in range(1,T):
                        x=A*T**r+b
                        cases+=1
                        boundary += (m==6 and r==4)
                        assert exact_recovery(alpha,x) is None,(T,m,r,A,b)
    return {'purpose':'implementation regression, not complete original-problem terminal',
            'cases':cases,'m6_r4_boundary_cases':boundary}


def wt(x, base=3):
    n=0
    while x:
        x,r=divmod(x,base);n+=r!=0
    return n


def vp(x,p):
    if x<=0:raise ValueError('vp requires a positive integer')
    e=0
    while x%p==0:x//=p;e+=1
    return e


def vp_binomial(n,j,p):
    ans=0;Q=p
    while Q<=n:
        ans+=n//Q-j//Q-(n-j)//Q
        Q*=p
    return ans


def example_checks():
    result=[]
    assert pow(3,20,100)==1
    assert pow(3,42,49)==1
    assert 3**203>4*1906**2
    for u in (0,1):
        row=family(u);n,j,g=row['n'],row['j'],row['g']
        alpha,x=row['alpha'],row['beta'];k=n-j
        c=certify_tc7(n,j,row['h'],4*row['h'])
        bc=certify_bl6(n,j,row['T'],7)
        assert c['source_deficit']==bc['source_deficit']>1
        assert gcd(n,j)==g==190
        assert n%9000==5130 and j%2==0 and 7<=j<=n//2
        assert 8*g**4<n
        assert wt(x)==2*row['h'] and wt(alpha-x)==5*row['h']+1
        assert n%49==33 and j%7==4 and vp(n-5,7)==1
        for y in (x,alpha-x):
            assert ((alpha-1)//gcd(alpha-1,y))**3>alpha
            assert ((alpha+1)//gcd(alpha+1,y)-1)**3>alpha
        N=n-1;J=j*k;q4=(n-4)//2
        C=gcd(q4,j-2);A4=gcd(q4,(j-1)*(k-1))
        E=vp(n-5,5);q5=(n-5)//5**E
        W=N*J
        item={'u':u,'h':row['h'],'a':row['a'],'n_decimal_digits':len(str(n)),
              'g':g,'tail9000':n%9000,'low_mass':True,
              'wt_beta':wt(x),'wt_gamma':wt(alpha-x),
              'DEN_minus_triggered':False,'DEN_plus_triggered':False,
              'q5_has_complete_7_to_exponent':1,'q5_7_near_slot':j%7,
              'first_source':False,'C':C,'A4':A4,'CENTER_triggered':C>=A4,
              'q5_all_near':(J-N)%q5==0,
              'W10':W%10==0 and isqrt(W//10)**2==W//10}
        if u==0:
            assert C==A4==1 and not item['W10'] and not item['q5_all_near']
            p=53
            vals=[vp_binomial(n,i,p) for i in (4,5,6,j)]
            assert (n-1)%p==0 and j%p>1 and all(v>0 for v in vals)
            item['original_witness']={'p':p,'target_indices':[4,5,6,j],
                                      'valuations':vals}
            (ROOT/'outputs'/'seed_original_input.json').write_text(
                json.dumps({'n':n,'j':j,'g':g,'h':row['h'],'a':row['a'],
                            'alpha':alpha,'beta':x,'source_deficit':c['source_deficit']},indent=2)+'\n')
        result.append(item)
    return result


def failure_checks():
    even=[]
    for m in (6,7,31,80):
        alpha=2**m;g=2**(m-2);n=g*alpha
        beta=alpha//2-1;gamma=alpha//2+1;j=g*beta
        assert beta*gamma==n-1 and gcd(n,j)==g
        assert wt(gamma,2)==2
        assert exact_recovery(alpha,gamma)==g
        assert not 8*g**4<n and n%1800 not in (1280,1530)
        even.append({'m':m,'g':g,'first_source':True,'t':1})
    wide=[]
    for s in (2,3,10,50):
        B=3**s;alpha=3*B*B;x=B*B+B+1;g=B//3;t=2*B+1
        H=(B*B+2*B+3)//3;n=g*alpha;j=g*x
        assert x*x==alpha*H+t and g*t==x-H
        assert exact_recovery(alpha,x)==g and gcd(n,j)==g
        assert 7<=j<=n//2 and n==B**3 and n%2==1
        wide.append({'s':s,'a':2*s+1,'width':s+1,'first_source':True,'g_odd':True})
    old=json.loads((ROOT/'sources/PREVIOUS_C1_outputs_norm_probe.json').read_text())['models'][0]
    n,g,a,z,delta=old['n'],old['g'],old['a'],old['z'],old['delta']
    alpha=3**a;D=10*(n-1)
    assert n==g*alpha and delta*delta+4*D*z*z==alpha*alpha and D>alpha
    assert gcd(n,old['j'])==g and n%9000==5130
    assert not 8*g**4<n
    return {'even_base_examples':even,'missing_width_gate_examples':wide,
            'NP_existing_norm_model':{'a':a,'z':z,'norm_identity':True,
                                     'D_greater_than_alpha':True,'low_mass':False},
            'limits':'These models do not satisfy the full current NC6 hypotheses'}


def main():
    if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(20000)
    out={'status':'PASS','coefficient_identities':coeff_checks(),
         'bezout_constants':bezout_checks(),'TC7_regression':regression_tc7(),
         'BL6_regression':regression_bl6(),'comparison_family':example_checks(),
         'failure_models':failure_checks(),'frontier_reduction_certified':0,
         'Lean':False,'external_independent_review':False,
         'finite_original_problem_terminal':False}
    (ROOT/'outputs'/'replay.json').write_text(json.dumps(out,indent=2)+'\n')
    summary={'status':out['status'],'coefficient_identities':out['coefficient_identities'],
             'bezout_constants':out['bezout_constants'],
             'TC7_cases':out['TC7_regression']['cases'],
             'BL6_cases':out['BL6_regression']['cases'],
             'certified_net_frontier_reduction':0}
    print(json.dumps(summary,indent=2))

if __name__=='__main__':main()
