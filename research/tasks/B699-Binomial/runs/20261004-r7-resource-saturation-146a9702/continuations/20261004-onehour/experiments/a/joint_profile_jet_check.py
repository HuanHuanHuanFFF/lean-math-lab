from pathlib import Path
from math import comb
from fractions import Fraction
import json,hashlib,time
OUT=Path(__file__).parent
w=json.loads((OUT/'joint-geometry-probe.json').read_text())['witness']
q=w['q'];D=w['weighted_degree'];mons=[(a,b) for b in range(q,-1,-1) for a in range(D-2*b,-1,-1)]

def jet(a,b,r,x,shear,i,j):
    if j>b:return 0
    ans=0
    for t in range(b-j+1):
        if 0<=i-t<=a:
            ans+=comb(b,j)*comb(b-j,t)*x**(b-j-t)*shear**t*comb(a,i-t)*r**(a-i+t)
    return ans

rows=[];labels=[]
for r,ms in enumerate(w['multiplicities'],3):
    for s,m in enumerate(ms):
        diag=2*s==r;ww=2*m if diag else 0
        for i in range(max(m,ww)):
            for j in range(m):
                if i+j<m or diag and i+2*j<ww:
                    rows.append([jet(a,b,r,s*(r-s),s if diag else 0,i,j) for a,b in mons]);labels.append([r,s,i,j])

def eliminate(p):
    basis={};pivots=[];detscale=1
    for ri,row in enumerate(rows):
        x=[a%p for a in row]
        for c,b in basis.items():
            if x[c]:
                f=x[c];x=[(a-f*z)%p for a,z in zip(x,b)]
        c=next((c for c,v in enumerate(x) if v),None)
        if c is None:continue
        val=x[c];detscale=detscale*val%p;iv=pow(val,-1,p);basis[c]=[a*iv%p for a in x];pivots.append(ri)
    return dict(prime=p,rank=len(basis),pivot_rows=pivots,pivot_product_mod_p=detscale)

mods=[eliminate(p) for p in (257,263)]
r=dict(scope='Complete 56-column degree <=13 X-degree <=6 source-jet test of the diagnostic integer profile only. A zero kernel eliminates this profile, not every profile or E1 state.',q=q,D=D,monomial_count=len(mons),condition_count=len(rows),modular_checks=mods,monomials=mons,conditions=labels)
if mods[0]['rank']==len(mons):
    inds=mods[0]['pivot_rows'];r['full_rank_minor']=dict(prime=mods[0]['prime'],rows=inds,matrix=[rows[i] for i in inds])
(OUT/'joint-profile-jet-check.json').write_text(json.dumps(r,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in r.items() if k not in ('monomials','conditions','full_rank_minor')},ensure_ascii=False))
