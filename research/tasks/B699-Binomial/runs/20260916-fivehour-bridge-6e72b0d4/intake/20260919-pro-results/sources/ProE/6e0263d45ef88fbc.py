#!/usr/bin/env python3
"""Generate exact algebra certificates. No input or prime scan is performed."""
from __future__ import annotations
import json
import argparse
import math
from pathlib import Path
import sympy as s

BASE = Path(__file__).resolve().parents[1]

def canonical(expr):
    expr = s.expand(expr)
    if expr == 0:
        return []
    vs = sorted(expr.free_symbols, key=str)
    if not vs:
        return [{"powers": [], "coefficient": str(expr)}]
    terms = []
    for powers, coeff in s.Poly(expr, *vs).terms():
        mon = tuple((str(v), int(e)) for v, e in zip(vs, powers) if e)
        terms.append((mon, str(coeff)))
    return [{"powers": [list(x) for x in mon], "coefficient": c}
            for mon, c in sorted(terms)]

def identities():
    n,j,k,C,H,u,g,z,lam,mu,d = s.symbols('n j k C H u g z lam mu delta')
    f = [k*(k-1)*(k-2), 3*j*k*(k-1), 3*j*(j-1)*k, j*(j-1)*(j-2)]
    nn = j+k
    aa = [nn*(nn-1)*(nn-2), 3*j*(nn-1)*(nn-2),
          3*j*(j-1)*(nn-2), j*(j-1)*(j-2)]
    result = []
    for r in range(4):
        result.append((f'transform_{r}', sum(math.comb(i,r)*f[i] for i in range(r,4)), aa[r]))
    a0=n*(n-1)*(n-2); a1=3*j*(n-1)*(n-2)
    a2=3*j*(j-1)*(n-2); a3=j*(j-1)*(j-2)
    I=a1*a1-3*a0*a2
    result += [
        ('recovery_n',n*I,3*a0*(a1-a2)),
        ('recovery_j',j*I,a1*(a1-a2)),
        ('recovery_third',3*(n-2)*a3,a2*(j-2)),
        ('C2_original_identity',(n-1)*(n-2*j)**2+n*n*(j-1)*(n-j-1),j*(n-j)*(n-2)**2),
    ]
    f0=C*u*g*g-z*H*H-lam
    q=lam*mu*mu*C*C-lam*g*g*d*d-z*(2*mu*C*H+1)
    R=4*mu*mu*C**3*u*g*g-4*lam*g*g*d*d-z*(2*mu*C*H+2)**2
    result += [
        ('C2_ideal_membership',R,4*mu*mu*C*C*f0+4*q),
        ('reflection_b',3*(n-j)*(n-1)*(n-2),3*a0-a1),
        ('reflection_c',3*(n-j)*(n-j-1)*(n-2),3*a0-2*a1+a2),
        ('reflection_d',(n-j)*(n-j-1)*(n-j-2),a0-a1+a2-a3),
        ('basic_product_gap',j*(n-j)-(j-1)*(n-j-1),n-1),
    ]
    return result

def source_cases():
    return {
        'large_primes': [
            {'r':0,'E_min':1,'content_loss':0,'decisive_coefficient':1,'required_source_power':'E'},
            {'r':1,'E_min':1,'content_loss':0,'decisive_coefficient':2,'required_source_power':'E'},
            {'r':2,'E_min':1,'content_loss':0,'decisive_coefficient':3,'required_source_power':'E'},
        ],
        'prime_three': [
            {'r':0,'E_min':2,'content_loss':1,'preliminary_coefficient':1,'allowed_slots':[0],'decisive_coefficient':3,'required_source_power':'E'},
            {'r':1,'E_min':2,'content_loss':1,'preliminary_coefficient':2,'allowed_slots':[0,1],'decisive_coefficient':3,'required_source_power':'E'},
            {'r':2,'E_min':2,'content_loss':1,'preliminary_coefficient':None,'allowed_slots':[0,1,2],'decisive_coefficient':3,'required_source_power':'E'},
        ],
        'isolated_three': {'E':1,'content_exponent':0,'imposed_source_power':0},
        'large_prime_normalized_profile':['0','a','a','a-ell'],
        'prime_three_normalized_profile':['0','a+1','a+1','a-ell'],
        'prime_three_endpoint_exponent_min':2,
    }

def split_data():
    # Affine vectors in (a,b,ell,r,constant).
    return {
        'variables':['a','b','ell','r','constant'],
        'region':['ell<=a<2ell','b>=2r','ell>=1','r>=1'],
        'P':{'C':[0,0,1,0,0],'u':[1,0,-1,0,0],'D':[1,0,-1,0,0],
             'A':[-1,0,2,0,0],'B':[0,0,0,0,0],'t3':[1,0,0,0,0]},
        'Q':{'C':[0,0,0,1,0],'u':[0,1,0,-1,0],'D':[0,0,0,1,0],
             'A':[0,0,0,0,0],'B':[0,1,0,-2,0],'t3':[0,1,0,0,0]},
        'gcd_D_A_min_inputs':[[1,0,-1,0,0],[-1,0,2,0,0]],
        'D_unitary_in_C_forced':False,
        'B_equals_one_boundary':'b=2r',
        'overlap_zero_boundary':'a=ell',
        'C_unitary_in_K':True,
    }

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument("--out",type=Path,default=BASE/"outputs")
    out=parser.parse_args().out
    result=[]
    for name,l,r in identities():
        if s.expand(l-r) != 0:
            raise ArithmeticError(f'identity failed: {name}')
        result.append({'id':name,'left':canonical(l),'right':canonical(r)})
    cert={
        'schema':1,'scope':'same-input i3; symbolic and valuation bookkeeping only',
        'identities':result,'source_cases':source_cases(),'cross_split':split_data(),
        'claims':{'new_NC_region_closed':False,'absolute_height':False,
                  'NC_preserving_descent':False,'full_counterexample_found':False,
                  'Lean':False,'numerical_scan_performed':False},
    }
    out.mkdir(parents=True,exist_ok=True)
    (out/'certificate.json').write_text(json.dumps(cert,indent=2,ensure_ascii=False)+'\n')
    report={'status':'PASS','polynomial_identities':len(result),'scan_count':0,
            'sympy':s.__version__,'note':'No claim to kernel-check the full paper proof.'}
    (out/'primary.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report))
if __name__=='__main__': main()
