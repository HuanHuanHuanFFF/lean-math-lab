#!/usr/bin/env python3
"""All-parameter ordinary signatures and diagonal weighted-order strata.
For two parameters this treats affine lines and their intersection points, not
just generic parameters or a sample. Every Taylor coefficient is affine-linear.
"""
import json,math,itertools,sys
from fractions import Fraction as Q
from pathlib import Path
from sympy import Matrix,Poly,symbols,factor_list
from recover import enc
RR=range(3,9)
def decode(p):return {(a,b):Q(n,d) for a,b,n,d in p}
def jet(H,r,v,i,j):
    return sum(c*math.comb(a,i)*math.comb(b,j)*r**(a-i)*v**(b-j) for (a,b),c in H.items() if a>=i and b>=j)
def tangent(H,s,i,j):
    r=2*s;v=s*s
    z=Q(0)
    for (a,b),c in H.items():
        if b<j:continue
        for l in range(max(0,i-b+j),min(a,i)+1):
            k=i-l
            z+=c*math.comb(a,l)*r**(a-l)*math.comb(b,j)*math.comb(b-j,k)*v**(b-j-k)*s**k
    return z

def solve(eq,d):
    """Rows are (constant, coefficients). Return affine basis or None."""
    eq=[e for e in eq if any(e)]
    if not eq:return [Q(0)]*d,[[Q(i==j) for i in range(d)] for j in range(d)],[]
    M=Matrix([[*e[1:],-e[0]] for e in eq]);R,piv=M.rref()
    if d in piv:return None
    free=[i for i in range(d) if i not in piv];base=[Q(0)]*d
    for k,i in enumerate(piv):base[i]=Q(R[k,d])
    dirs=[]
    for f in free:
        a=[Q(0)]*d;a[f]=Q(1)
        for k,i in enumerate(piv):a[i]=-Q(R[k,f])
        dirs.append(a)
    ceq=[[Q(-R[k,d])]+[Q(R[k,i]) for i in range(d)] for k in range(len(piv))]
    return base,dirs,ceq

def value(e,x):return e[0]+sum(a*b for a,b in zip(e[1:],x))
def identzero(e,aff):
    base,dirs,_=aff
    return not value(e,base) and all(not sum(a*b for a,b in zip(e[1:],v)) for v in dirs)
def sample(aff,nonzero):
    b,dirs,_=aff
    for radius in range(100):
        for t in itertools.product(range(-radius,radius+1),repeat=len(dirs)):
            x=[b[i]+sum(c*v[i] for c,v in zip(t,dirs)) for i in range(len(b))]
            if all(any(value(e,x) for e in layer) for layer in nonzero):return x
    raise AssertionError('failed rational witness search')

def main(src,out):
    obj=json.loads(src.read_text());res=[]
    for fam in obj['solutions']:
        Ps=[decode(x) for x in fam['polynomials']];d=len(Ps)-1;roots=fam['record']['roots'];masses=[];leading=[]
        for r,row in zip(RR,roots):
            for v in [s*(r-s) for s in range(r//2+1)]:
                m=row.count(v);masses.append([r,v,m]);
                for i in range(m):
                    for j in range(m-i):assert all(jet(P,r,v,i,j)==0 for P in Ps)
                lead=[jet(P,r,v,0,m) for P in Ps]
                assert lead[0] and all(not x for x in lead[1:])
                leading.append([r,v,m,[enc(x) for x in lead]])
        layers={};ms=[];diagonal=[]
        for s in (2,3,4):
            m=roots[2*s-3].count(s*s);ms.append(m);layers[s]={}
            for w in range(m,2*m+1):
                lay=[];terms=[]
                for j in range(w//2+1):
                    i=w-2*j;e=[tangent(P,s,i,j) for P in Ps]
                    if any(e):lay.append(e);terms.append([i,j,[enc(x) for x in e]])
                layers[s][w]=lay
                diagonal.append({'r':2*s,'m':m,'weight':w,'coefficients':terms})
        strata=[]
        for ws in itertools.product(*(range(m,2*m+1) for m in ms)):
            eq=[];nonzero=[]
            for s,w in zip((2,3,4),ws):
                eq.extend(e for ww,lay in layers[s].items() if ww<w for e in lay)
                nonzero.append(layers[s][w])
            aff=solve(eq,d)
            if aff is None:continue
            if any(not lay or all(identzero(e,aff) for e in lay) for lay in nonzero):continue
            x=sample(aff,nonzero)
            strata.append({'weighted_orders':ws,'kappa':[2*m-w for m,w in zip(ms,ws)],'affine_dimension':len(aff[1]),'equations':[[enc(x) for x in e] for e in aff[2]],'nonzero_layers':[[[enc(x) for x in e] for e in lay] for lay in nonzero],'rational_witness':[enc(v) for v in x]})
        lb=[min(s['kappa'][i] for s in strata) for i in range(3)]
        res.append({'index':fam['index'],'parameters':d,'ordinary_multiplicities':masses,'exact_order_witnesses':leading,'diagonal_coefficients':diagonal,'strata':strata,'coordinatewise_kappa_lower':lb})
        print('SIGNATURE',fam['index'],'d',d,'strata',len(strata),'lower',lb,flush=True)
        for z in strata:print(' ',z['weighted_orders'],z['kappa'],'dim',z['affine_dimension'],'params',z['rational_witness'],flush=True)
    out.write_text(json.dumps({'q':obj['q'],'families':res},separators=(',',':'),sort_keys=True)+'\n')
if __name__=='__main__':main(Path(sys.argv[1]),Path(sys.argv[2]))
