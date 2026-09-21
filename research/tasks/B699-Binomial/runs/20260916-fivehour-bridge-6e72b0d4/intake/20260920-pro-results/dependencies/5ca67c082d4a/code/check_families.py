#!/usr/bin/env python3
"""Current-round family receiver. Exact rationals; no discovery/CAS imports.
This verifies full affine spaces with potentially redundant equations,
all source-line exclusions, and all ordinary/diagonal parameter strata.
"""
from fractions import Fraction as F
from itertools import product
from accept_core import *

def fracvec(xs): return [F(*x) for x in xs]

def line_restriction(P,t):
    out={}
    for (a,b),c in P.items():
        for j in range(b+1):
            out[a+j]=out.get(a+j,F(0))+c*math.comb(b,j)*t**j*(-t*t)**(b-j)
    return {k:v for k,v in out.items() if v}

def verify_affine(fam,q):
    M=ReceiverModel(q);c=fam['record'];labs,A=M.build(c);nc=M.nc
    piv=fam['pivot_columns'];free=fam['free_columns'];rank=fam['rank']
    need(len(piv)==rank and len(set(piv))==rank,'bad pivot columns')
    need(set(free)==set(range(nc))-set(piv),'bad free columns')
    v=fracvec(fam['solution']);ds=list(map(fracvec,fam['directions']))
    need(len(v)==nc and len(ds)==nc-rank and all(len(x)==nc for x in ds),'affine dimension')
    need(all(sum(F(a)*b for a,b in zip(row[:-1],v))==row[-1] for row in A),'base equation')
    need(all(sum(F(a)*b for a,b in zip(row[:-1],x))==0 for row in A for x in ds),'direction equation')
    need(all(ds[i][j]==int(i==k) for i in range(len(ds)) for k,j in enumerate(free)),'direction independence')
    # Directions prove rank <= rank. Choose rank independent rows using
    # small-modulus Gaussian elimination, then independently evaluate a minor.
    p=1000033;selected=[];work=[];pivotcols=[]
    for i,row in enumerate(A):
        r=[int(row[j]%p) for j in piv]
        for old,pc in zip(work,pivotcols):
            a=r[pc];r=[(x-a*y)%p for x,y in zip(r,old)]
        pc=next((j for j,x in enumerate(r) if x),None)
        if pc is None: continue
        iv=pow(r[pc],-1,p);r=[x*iv%p for x in r]
        work.append(r);pivotcols.append(pc);selected.append(i)
        if len(selected)==rank:break
    need(len(selected)==rank,'coefficient rank not certified')
    det=determinant_mod([[A[i][j] for j in piv] for i in selected],p)
    need(det!=0,'zero coefficient rank minor')
    Ps=[M.assemble(c,x,k==0) for k,x in enumerate([v]+ds)]
    need(Ps[0].get((0,q))==1 and all(not P.get((0,q),0) for P in Ps[1:]),'affine monic normalization')
    need(all(all(a+2*b<=2*q for a,b in P) for P in Ps),'affine weighted degree')
    need([packpoly(P) for P in Ps]==fam['polynomials'],'polynomial recovery mismatch')
    lines=[t for t in range(9) if all(not line_restriction(P,t) for P in Ps)]
    need(lines==fam['common_source_lines'],'common source line mismatch')
    return Ps, {'index':fam['index'],'rank':rank,'equations':len(A),'parameters':len(ds),'rank_rows':selected,'rank_columns':piv,'rank_modulus':p,'rank_minor':det,'common_lines':lines}

def verify_signature(fam,Ps,sg):
    c=fam['record'];q=c['q'];d=len(Ps)-1
    need(c['lambda'] not in VALUES[c['h']],'collision requires separate ordinary analysis')
    masses=[];leading=[]
    for r,row in zip(ROWS,c['roots']):
        for v in VALUES[r]:
            m=row.count(v);masses.append([r,v,m])
            for i in range(m):
                for j in range(m-i):need(all(ordinary_jet(P,r,v,i,j)==0 for P in Ps),'ordinary lower order')
            lead=[ordinary_jet(P,r,v,0,m) for P in Ps]
            need(lead[0]!=0 and not any(lead[1:]),'actual ordinary multiplicity may jump')
            leading.append([r,v,m,[enc(x) for x in lead]])
    need(masses==sg['ordinary_multiplicities'] and leading==sg['exact_order_witnesses'],'ordinary signature mismatch')
    layers={};ms=[];lc=[]
    for s in (2,3,4):
        m=c['roots'][2*s-3].count(s*s);ms.append(m);layers[s]={}
        for w in range(m,2*m+1):
            ls=[];ts=[]
            for j in range(w//2+1):
                i=w-2*j;e=[tangent_jet(P,s,i,j) for P in Ps]
                if any(e):ls.append(e);ts.append([i,j,[enc(x) for x in e]])
            layers[s][w]=ls;lc.append({'r':2*s,'m':m,'weight':w,'coefficients':ts})
    need(lc==sg['diagonal_coefficients'],'diagonal expansion disagreement')
    old={tuple(z['weighted_orders']):z for z in sg['strata']};actual=[]
    need(len(old)==len(sg['strata']),'duplicate stratum')
    for ws in product(*(range(m,2*m+1) for m in ms)):
        eq=[];nz=[]
        for s,w in zip((2,3,4),ws):
            eq.extend(e for ww,ls in layers[s].items() if ww<w for e in ls);nz.append(layers[s][w])
        aff=affine_space(eq,d)
        if aff is None:continue
        if any(not ls or all(identically_zero(e,aff) for e in ls) for ls in nz):continue
        need(ws in old,'missing parameter stratum');z=old[ws];x=fracvec(z['rational_witness'])
        value=lambda e:e[0]+sum(a*b for a,b in zip(e[1:],x))
        need(not any(value(e) for e in eq) and all(any(value(e) for e in ls) for ls in nz),'invalid rational stratum witness')
        need(z['affine_dimension']==len(aff[1]),'stratum dimension')
        need([[enc(v) for v in e] for e in aff[2]]==z['equations'],'stratum equality system')
        need([[[enc(v) for v in e] for e in ls] for ls in nz]==z['nonzero_layers'],'stratum exclusion system')
        need(z['kappa']==[2*m-w for m,w in zip(ms,ws)],'incorrect kappa')
        actual.append(z)
    need({tuple(z['weighted_orders']) for z in actual}==set(old),'stratum completeness')
    lower=[min(z['kappa'][i] for z in actual) for i in range(3)]
    need(lower==sg['coordinatewise_kappa_lower'],'wrong all-parameter lower bound')
    return {'source_multiplicities':masses,'mu':sum(x[2] for x in masses),'z':sum(x[2]>0 for x in masses),'strata':actual,'raw_kappa_lower':lower}

def combine(Ps,coeffs):
    need(len(coeffs)==len(Ps)-1,'parameter dimension')
    P={}
    for c,H in zip([F(1)]+list(coeffs),Ps):
        for k,v in H.items():P[k]=P.get(k,F(0))+c*v
    return {k:v for k,v in P.items() if v}
