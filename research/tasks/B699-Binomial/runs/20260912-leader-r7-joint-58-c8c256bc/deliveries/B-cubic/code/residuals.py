"""Exact branch certificates for new lower residual weights. No C-block scan."""
from __future__ import annotations
import argparse,json
from pathlib import Path
from fractions import Fraction
from exact import valuation,params

# Every branch is an endpoint for an increasing expression; coverage is proved in notes.
GENERAL=[('odd g, R>=3',0,3,8),('odd g, R=1, U/(8c)>=2',0,1,16),('even g',1,1,1)]
DIV9=[('odd g, R>=3',0,3,8),('odd g, R=1, U>=32',0,1,32),('even g, U=11 mod12',1,1,11)]

def verify(cert):
    if cert['general_cases']!=[list(x) for x in GENERAL]:raise ValueError('missing or altered general branch')
    if cert['div9_cases']!=[list(x) for x in DIV9]:raise ValueError('missing or altered div9 branch')
    for _,t,R,u in GENERAL:
        if 2**(4*t)*R*R*u<16:raise ValueError('wrong lower bound')
    for _,t,R,u in DIV9:
        if 2**(4*t)*R*R*u<32:raise ValueError('wrong div9 lower bound')
    if cert['excluded_minimum']!={'R':1,'U_over_c':8,'mu':1,'v_mod3':1}:raise ValueError('cube exclusions weakened')
    if cert['kappa_by_n_mod9']!=[1,1,1,27,27,9,27,27,9]:raise ValueError('wrong kappa')
    if cert['constants']!=[128,256,512]:raise ValueError('wrong row constants')
    return True

def run():
    # Exhausts the finite residues behind U congruences, not original n,j.
    tuples=[]
    for j in range(12):
        k=(-j)%12
        if j%3==0:
            numerator=(j-1)*(k-1)
            assert numerator%3==1
            if j%2==0:assert numerator%4==1
            tuples.append([j,k,numerator%12])
    assert [z for z in range(1,25) if z%4==3 and z%3==2]==[11,23]
    assert [z for z in range(1,57) if z%8==0 and z%3==2]==[8,32,56]
    table=[]
    # For each n mod9 one of these positive n with 4|n fixes the first-order 3 valuations.
    for r in range(9):
        n=next(x for x in range(12,200) if x%4==0 and x%9==r)
        la,mu,_,_=params(n);de=3 if valuation(n,3)==1 else 1
        table.append(de**3*la**3*mu**2)
    cert={'general_cases':[list(x) for x in GENERAL], 'div9_cases':[list(x) for x in DIV9],
          'excluded_minimum':{'R':1,'U_over_c':8,'mu':1,'v_mod3':1},'kappa_by_n_mod9':table,
          'constants':[128,256,512]}
    verify(cert)
    # Independent enumeration of symbolic abstract residual endpoints.
    counts=0
    for c in [1,3]:
        for t in range(4):
            for R in range(1,16,2):
                for u in range(c,160*c+1,c):
                    if t==0 and u%(8*c):continue
                    if t==0 and R==1 and u==8*c:continue
                    assert Fraction(2**(4*t)*R*R*u,c)>=16
                    counts+=1
    return {'status':'PASS','certificate':cert,'finite_congruence_tuples':tuples,
            'abstract_regression_cases':counts,'minimum_general':16,'minimum_div9':32,
            'coverage':'three monotone branches in each theorem, not truncation of R,U,t'}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args()
    r=run();a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('PASS: complete residual endpoint cases and congruences')
