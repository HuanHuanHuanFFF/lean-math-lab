#!/usr/bin/env python3
"""Regenerate the exact proof DAGs from four complete characteristic-zero charts."""
import sys,json,time,argparse
from pathlib import Path
import sympy as sp
from traced_gb import certificate
if not __debug__:
    raise RuntimeError('Certificate validation requires assertions: do not use python -O.')
sys.set_int_max_str_digits(0)

def square_remainders(P,x,n):
    # Work in a sparse multivariate QQ ring; avoid repeated full-expression factoring.
    # x is the final variable. All divisions below are by the nonzero constant 2.
    from sympy.polys.rings import ring
    from sympy.polys.domains import QQ
    params=sorted(P.free_symbols-{x},key=str)
    R,*gens=ring(','.join(map(str,params+[x])),QQ)
    pp=R.from_expr(P);xx=gens[-1]
    def coeff(poly,degree):
        return R.from_dict({mon[:-1]+(0,):c for mon,c in poly.items() if mon[-1]==degree})
    assert max(mon[-1] for mon in pp)==2*n and coeff(pp,2*n)==R.one
    B=xx**n
    for degree in range(2*n-1,n-1,-1):
        B += (coeff(pp-B*B,degree)/2)*xx**(degree-n)
    residual=pp-B*B
    assert not residual or max(mon[-1] for mon in residual)<n
    return [coeff(residual,i).as_expr() for i in range(n-1,-1,-1)]

def charts():
    x,b,k,e,t=sp.symbols('x b k e t')
    M=x*x+b;V=x*x+k*x+e
    E=square_remainders((M*V+t)**3+3*t*t*V+4*t*M*V*V,x,6)
    yield 'all0_center',[p.subs(k,0) for p in E if p.subs(k,0)!=0],[b,e,t]
    z,h=sp.symbols('z h');eq=[]
    for degree,p in zip(range(5,-1,-1),E):
        if degree%2:p=sp.cancel(p/k)
        p=sp.expand(p).subs(k**2,z)
        eq.append(sp.expand(p.subs(e,b+h)))
    yield 'all0_noncenter',eq,[b,h,z,t]
    h,j,k,l=sp.symbols('h j k l')
    V=(x*x+h*x+j)**2+k*x+l
    P=M*M*V**3-8*t*M*V*V+16*t*t*V-5*t*t*M*V+t**3*(M+20)
    yield 'all4',square_remainders(P,x,8),[b,h,j,k,l,t]
    print('BUILD_MIXED_CHART=START',flush=True)
    a=sp.symbols('a');t=a+j*j+l
    D5=x*(x*x+h*x+j)**2+k*x*x+l*x-a
    V=(x-1)*D5-a
    C5,rem=sp.div(V,x,x);assert rem==0
    P,rem=sp.div(C5*C5*D5-5*a*t*C5/4+a*t*t*(x-1)/4,x,x);assert rem==0
    print('BUILD_MIXED_SQUARE_REMAINDERS=START',flush=True)
    E=square_remainders(P,x,7)
    print('BUILD_MIXED_SQUARE_REMAINDERS=PASS',flush=True)
    yield 'mixed',E,[h,j,k,l,a]

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);args=pa.parse_args()
    args.out.mkdir(parents=True,exist_ok=False)
    for name,E,vars_ in charts():
        certificate(E,vars_,str(args.out/(name+'.json')),name)
    print('M2_NO14_EXACT_REGENERATION=PASS')
if __name__=='__main__':main()
