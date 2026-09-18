#!/usr/bin/env python3
"""Independent exact checker, using only Python standard-library arithmetic.

It reconstructs all polynomials and checks the explicit proof tables. It does
not replace the quantified mathematical arguments in PROOFS.md.
"""
from __future__ import annotations
import json
import sys
from fractions import Fraction
from math import comb
from pathlib import Path

BASE=Path(__file__).resolve().parents[1]

class Poly:
    def __init__(self, value=0):
        if isinstance(value,dict):
            self.t={k:Fraction(v) for k,v in value.items() if v}
        elif isinstance(value,Poly): self.t=value.t.copy()
        else: self.t={} if not value else {():Fraction(value)}
    @staticmethod
    def var(name): return Poly({((name,1),):1})
    def __add__(self, other):
        other=Poly(other); ans=self.t.copy()
        for m,c in other.t.items(): ans[m]=ans.get(m,Fraction(0))+c
        return Poly(ans)
    __radd__=__add__
    def __neg__(self): return Poly({m:-c for m,c in self.t.items()})
    def __sub__(self,other): return self+-Poly(other)
    def __rsub__(self,other): return Poly(other)+-self
    def __mul__(self,other):
        other=Poly(other); ans={}
        for m,c in self.t.items():
            for n,d in other.t.items():
                powers=dict(m)
                for x,e in n: powers[x]=powers.get(x,0)+e
                term=tuple(sorted(powers.items()))
                ans[term]=ans.get(term,Fraction(0))+c*d
        return Poly(ans)
    __rmul__=__mul__
    def __pow__(self,e):
        if not isinstance(e,int) or e<0: raise ValueError('nonnegative integer power required')
        result=Poly(1); base=self
        while e:
            if e&1: result=result*base
            base=base*base; e//=2
        return result
    def canonical(self):
        return [{'powers':[list(x) for x in m],'coefficient':str(c)} for m,c in sorted(self.t.items())]

def polynomials():
    v={n:Poly.var(n) for n in 'n j k C H u g z lam mu delta'.split()}
    n,j,k=v['n'],v['j'],v['k']
    C,H,u,g,z,lam,mu,d=(v[t] for t in 'C H u g z lam mu delta'.split())
    # Independently derived factorial-count coefficients, scaled by 6.
    f=[k*(k-1)*(k-2),3*j*k*(k-1),3*j*(j-1)*k,j*(j-1)*(j-2)]
    total=j+k
    a=[total*(total-1)*(total-2),3*j*(total-1)*(total-2),
       3*j*(j-1)*(total-2),j*(j-1)*(j-2)]
    out=[]
    for r in range(4):
        out.append((f'transform_{r}',sum((comb(i,r)*f[i] for i in range(r,4)),Poly(0)),a[r]))
    k2=n-j
    A=n*(n-1)*(n-2); B=3*j*(n-1)*(n-2)
    CC=3*j*(j-1)*(n-2); DD=j*(j-1)*(j-2)
    I=B**2-3*A*CC
    out.extend([
        ('recovery_n',n*I,3*A*(B-CC)),
        ('recovery_j',j*I,B*(B-CC)),
        ('recovery_third',3*(n-2)*DD,CC*(j-2)),
        ('C2_original_identity',(n-1)*(k2-j)**2+n**2*(j-1)*(k2-1),j*k2*(n-2)**2),
    ])
    norm=C*u*g**2-z*H**2-lam
    discr=lam*mu**2*C**2-lam*g**2*d**2-z*(2*mu*C*H+1)
    full=4*mu**2*C**3*u*g**2-4*lam*g**2*d**2-z*(2*mu*C*H+2)**2
    out.extend([
        ('C2_ideal_membership',full,4*mu**2*C**2*norm+4*discr),
        ('reflection_b',3*k2*(n-1)*(n-2),3*A-B),
        ('reflection_c',3*k2*(k2-1)*(n-2),3*A-2*B+CC),
        ('reflection_d',k2*(k2-1)*(k2-2),A-B+CC-DD),
        ('basic_product_gap',j*k2-(j-1)*(k2-1),n-1),
    ])
    return out

def need(condition,msg):
    if not condition: raise ValueError(msg)

def check_tables(t):
    need(set(t)=={'large_primes','prime_three','isolated_three','large_prime_normalized_profile',
        'prime_three_normalized_profile','prime_three_endpoint_exponent_min'},'source-table keys')
    large=t['large_primes']; small=t['prime_three']
    need(len(large)==len(small)==3,'missing source row')
    for r in range(3):
        need(large[r]=={'r':r,'E_min':1,'content_loss':0,'decisive_coefficient':r+1,
                       'required_source_power':'E'},f'large-prime row {r}')
        expected={'r':r,'E_min':2,'content_loss':1,
                  'preliminary_coefficient':(r+1 if r<2 else None),
                  'allowed_slots':list(range(r+1)),'decisive_coefficient':3,
                  'required_source_power':'E'}
        need(small[r]==expected,f'3-adic row {r}: full source power lost')
    need(t['isolated_three']=={'E':1,'content_exponent':0,'imposed_source_power':0},'isolated 3 was not removed exactly once')
    need(t['large_prime_normalized_profile']==['0','a','a','a-ell'],'large-prime coefficient profile')
    need(t['prime_three_normalized_profile']==['0','a+1','a+1','a-ell'],'3-adic coefficient profile')
    need(t['prime_three_endpoint_exponent_min']==2,'invalid singleton 3 endpoint')

def check_split(d):
    need(d['variables']==['a','b','ell','r','constant'],'split variable convention')
    need(d['region']==['ell<=a<2ell','b>=2r','ell>=1','r>=1'],'cross region')
    P={'C':[0,0,1,0,0],'u':[1,0,-1,0,0],'D':[1,0,-1,0,0],
       'A':[-1,0,2,0,0],'B':[0,0,0,0,0],'t3':[1,0,0,0,0]}
    Q={'C':[0,0,0,1,0],'u':[0,1,0,-1,0],'D':[0,0,0,1,0],
       'A':[0,0,0,0,0],'B':[0,1,0,-2,0],'t3':[0,1,0,0,0]}
    for name,expected in [('P',P),('Q',Q)]:
        need(d[name]==expected,f'full exponent split {name}')
        e=d[name]
        def add(*vectors): return [sum(x) for x in zip(*vectors)]
        need(e['C']==add(e['D'],e['A']),'C=DA')
        need(e['u']==add(e['D'],e['B']),'u=DB')
        need(e['t3']==add(e['C'],e['u'])==add(e['D'],e['D'],e['A'],e['B']),'t3 split')
    need(d['gcd_D_A_min_inputs']==[P['D'],P['A']],'overlap formula')
    need(d['D_unitary_in_C_forced'] is False,'false unitary assumption')
    need(d['C_unitary_in_K'] is True,'source full powers missing')
    need(d['B_equals_one_boundary']=='b=2r','high endpoint omitted')
    need(d['overlap_zero_boundary']=='a=ell','low endpoint omitted')

def verify(path):
    data=json.loads(Path(path).read_text())
    need(data['schema']==1,'unknown schema')
    want=polynomials(); got=data['identities']
    need(len(got)==len(want),'missing or extra identity')
    for row,(name,l,r) in zip(got,want):
        need(row['id']==name,f'wrong identity id {name}')
        need(not (l-r).t,f'checker algebra failure {name}')
        need(row['left']==l.canonical(),f'left coefficients {name}')
        need(row['right']==r.canonical(),f'right coefficients {name}')
    check_tables(data['source_cases']); check_split(data['cross_split'])
    need(data['claims']=={'new_NC_region_closed':False,'absolute_height':False,
       'NC_preserving_descent':False,'full_counterexample_found':False,'Lean':False,
       'numerical_scan_performed':False},'unsupported theorem claim')
    return {'status':'PASS','polynomial_identities':len(want),'standard_library_only':True,
            'independent_algorithm_not_external_review':True,'numerical_scan_count':0}

def main():
    path=Path(sys.argv[1]) if len(sys.argv)>1 else BASE/'outputs'/'certificate.json'
    try: result=verify(path)
    except (ValueError,KeyError,TypeError,IndexError,json.JSONDecodeError) as exc:
        print(f'REJECT: {exc}',file=sys.stderr); raise SystemExit(1)
    if len(sys.argv)==1:
        (BASE/'outputs'/'secondary.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result))
if __name__=='__main__': main()
