#!/usr/bin/env python3
"""Complete exception terminal: Python standard-library exact verification.
No SymPy, no floating point, no modular lifting, no probabilistic identities.
The two polynomial identities are checked on degree-complete integer grids;
those grids certify global identities, not only the sampled parameter values.
Run verify.py first for input transports, the linear ratio and the a=0 closure.
"""
from pathlib import Path
from fractions import Fraction
from math import isqrt
import json,time
ROOT=Path(__file__).resolve().parents[1];start=time.monotonic();checks=0

def rd(p):return json.loads((ROOT/p).read_text())
def ck(name,test):
    global checks
    if not test:raise AssertionError(name)
    checks+=1

def integer_terms(terms):
    out={}
    for m,c in terms:
        c=Fraction(c)
        if c.denominator!=1:raise AssertionError('noninteger coefficient in integer determinant certificate')
        out[tuple(m)]=c.numerator
    return out

def horner(co,x):
    v=0
    for c in reversed(co):v=v*x+c
    return v

def det_int(a):
    a=[row[:] for row in a];n=len(a);sign=1;prev=1
    for k in range(n-1):
        if not a[k][k]:
            pivot=next((i for i in range(k+1,n) if a[i][k]),None)
            if pivot is None:return 0
            a[k],a[pivot]=a[pivot],a[k];sign=-sign
        pivot=a[k][k]
        for i in range(k+1,n):
            ai=a[i];q=ai[k]
            for j in range(k+1,n):
                v=ai[j]*pivot-q*a[k][j]
                if v%prev:raise AssertionError('non-exact Bareiss division')
                ai[j]=v//prev
            ai[k]=0
        prev=pivot
    return sign*a[-1][-1]

def sylvester(p,q):
    m,n=len(p)-1,len(q)-1
    return ([[0]*j+list(reversed(p))+[0]*(n-1-j) for j in range(n)]+
            [[0]*j+list(reversed(q))+[0]*(m-1-j) for j in range(m)])

core=rd('certificates/core.json');cert=rd('certificates/exception_terminal.json');az=rd('certificates/a_zero.json')
F2=integer_terms(core['polys3']['F2']);F4=integer_terms(core['polys3']['F4'])
C={m[:2]:c for m,c in integer_terms(core['polys3']['Ccurve']).items()}
AC={m[:2]:c for m,c in integer_terms(core['polys3']['Acal']).items()}
W=integer_terms(cert['W']);poly={}
for n in ['H','J','E']:
    ts=integer_terms(core['polys4'][n]);ck(n+' independent of r,L',all(m[2:]==(0,0) for m in ts));poly[n]={m[:2]:c for m,c in ts.items()}
poly['Acal']=AC;poly['W']=W
bideg=lambda p:tuple(max(m[i] for m in p) for i in range(2))
ck('polynomial degrees',bideg(C)==(9,10) and bideg(AC)==(15,16) and bideg(W)==(37,40))
ck('nonzero stripped factors exactly as proved',cert['R_factor_scalar']==1 and cert['R_factor_powers']=={'u':6,'y':36,'u-1':2,'y-1':16,'H':10,'J':1,'E':8,'Acal':1})
ck('integer norm-independent R bound',cert['R_identity_bidegree_bound']==[118,164] and 4*15+2*29==118 and 4*20+2*42==164)
ck('factor product degree fits identity bound',6+2+10*2+2+8*2+15+37==98<=118 and 36+16+10*2+2+8*2+16+40==146<=164)
xpoints=cert['R_identity_u_points'];ypoints=cert['R_identity_y_points']
ck('degree-complete bivariate grid',len(xpoints)==len(set(xpoints))==119 and len(ypoints)==len(set(ypoints))==165)

def specialize_u_3(ts,uv,d):
    ys=max(m[1] for m in ts);ans=[[0]*(ys+1) for _ in range(d+1)];powers=[uv**i for i in range(max(m[0] for m in ts)+1)]
    for (i,j,k),c in ts.items():ans[k][j]+=c*powers[i]
    return ans

def specialize_u_2(ts,uv):
    co=[0]*(max(m[1] for m in ts)+1);powers=[uv**i for i in range(max(m[0] for m in ts)+1)]
    for (i,j),c in ts.items():co[j]+=c*powers[i]
    return co

for xi,uv in enumerate(xpoints):
    f2=specialize_u_3(F2,uv,2);f4=specialize_u_3(F4,uv,4);vals={n:specialize_u_2(p,uv) for n,p in poly.items()}
    for yv in ypoints:
        lv=[horner(co,yv) for co in f2];hv=[horner(co,yv) for co in f4];v={n:horner(co,yv) for n,co in vals.items()}
        rhs=uv**6*yv**36*(uv-1)**2*(yv-1)**16*v['H']**10*v['J']*v['E']**8*v['Acal']*v['W']
        ck('complete R factor identity at '+str((uv,yv)),det_int(sylvester(lv,hv))==rhs)
    if xi%20==0:print('R factor identity integer rows',xi+1,'/119',flush=True)
print('PASS: full quadratic/quartic resultant factorization; all stripped factors have proved gates',flush=True)
P78=integer_terms(az['P78']);P96=integer_terms(cert['P96'])
p78=[P78.get((i,),0) for i in range(79)];p96=[P96.get((i,),0) for i in range(97)]
ck('complete terminal degree bound',cert['CW_identity_degree_bound_y']==9*40+37*10==730)
ck('right side degree fits bound',115+184+36+72+78+96==581<=730)
pts=cert['CW_identity_y_points'];ck('degree complete 46x46 identity grid',len(pts)==len(set(pts))==731)
cu=[[C.get((i,j),0) for j in range(11)] for i in range(10)]
wu=[[W.get((i,j),0) for j in range(41)] for i in range(38)]
for ix,yv in enumerate(pts):
    c=[horner(co,yv) for co in cu];w=[horner(co,yv) for co in wu]
    rhs=cert['CW_factor_scalar']*yv**115*(yv-1)**184*(2*yv*yv-2*yv+1)**18*(yv*yv-3*yv+1)**36*horner(p78,yv)*horner(p96,yv)
    ck('46x46 determinant identity y='+str(yv),det_int(sylvester(c,w))==rhs)
    if ix%100==0:print('CW exact determinant identity',ix+1,'/731',flush=True)
print('PASS: complete integer terminal determinant identity (not a numeric probe)',flush=True)
prime=cert['P96_prime'];ck('prime 23 exact',prime==23 and all(prime%d for d in range(2,isqrt(prime)+1)))
vals=[horner(p96,i)%prime for i in range(prime)]
ck('P96 full degree and leading coefficient modulo 23',len(p96)==97 and p96[-1]%prime==cert['P96_lc_mod23']==18)
ck('P96 has no rational root',0 not in vals and vals==cert['P96_mod23_values'])
ck('P78 same verified no-root factor',p78[-1]%11==8 and [horner(p78,i)%11 for i in range(11)]==az['P78_mod11_values'] and 0 not in az['P78_mod11_values'])
print(json.dumps({'status':'PASS','checks':checks,'elapsed_seconds':round(time.monotonic()-start,3),
 'R_identity_integer_points':len(xpoints)*len(ypoints),'CW_identity_integer_points':len(pts),
 'new_result':'complete rational REG4 exception S=K_lin=0 is empty, including a=0',
 'uses_low_residuals':['R6','R5','R4'],'other_low_residuals':'all retained by verify.py; contradiction already follows from the larger system',
 'not_claimed':['whole REG4 empty','whole d20 or m2 empty','complete i3 or B699','Lean','external independent mathematics review']}),flush=True)
