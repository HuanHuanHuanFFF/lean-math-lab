#!/usr/bin/env python3
"""Generate this round's exact algebra certificate (SymPy used only here)."""
from pathlib import Path
import json, math, sympy as sp
ROOT=Path(__file__).resolve().parents[1]
x,y,n,X,g,a,b=sp.symbols('x y n X g a b')
F=x*y*((x+y)**2-3*x*y-(x+y))
D=(n-1)**2*(n-3)*(n-4)
def terms(f,vs):
    return [[*e,int(c)] for e,c in sorted(sp.Poly(sp.expand(f),*vs).terms()) if c]
def small(z,i):
    out=1
    for p in (2,3,5,7):
        if p<i:
            while z%p==0: z//=p;out*=p
    if i in (5,7) and z%i==0 and z%(i*i)!=0:out*=i
    return out
zeros=[]
for r,bs,w in [(1,[0,1],2),(3,list(range(4)),1),(4,[0,2,4],1)]:
    for k in bs:
        f=sp.Poly(sp.expand(F.subs({x:x+k,y:y+r-k},simultaneous=True)),x,y)
        for u in range(w):
            for v in range(w-u):zeros.append([r,k,u,v,int(f.coeff_monomial(x**u*y**v))])
cert={'schema':'B699-D-ROW4-THREE-GROUPS-v1',
      'F':terms(F,(x,y)),
      'origin_order':3,
      'divided_origin':terms(sp.cancel(F.subs({x:g*x,y:g*y},simultaneous=True)/g**3),(g,x,y)),
      'legal_positive':terms(F.subs({x:6+x,y:6+x+y},simultaneous=True),(x,y)),
      'taylor_zeros':zeros,
      'upper_identity':terms(n**4-12*X*(n*n-3*X-n)-(n*n-6*X)**2-12*n*X,(n,X)),
      'tail_54D_25n4':terms((54*D-25*n**4).subs(n,18+x),(x,)),
      'tail_2D_n4':terms((2*D-n**4).subs(n,18+x),(x,)),
      'tail_10D_9n4':terms((10*D-9*n**4).subs(n,90+x),(x,)),
      'costs':[],
      'family_periods':{str(m):{'7^12':pow(7,12,m),'13^12':pow(13,12,m),
                               '13^60':pow(13,60,m)} for m in (18,5,25)}}
for i in (5,6):
    for r in range(1800):
        if r%72 not in (18,56) or (i==6 and r%5 not in (0,2)):continue
        ss=[small(r-k,i) for k in (1,3,4)]
        cert['costs'].append({'i':i,'residue':r,'s134':ss,'A':ss[0]**2*ss[1]*ss[2]})
assert all(z[-1]==0 for z in zeros)
assert not cert['upper_identity']
assert len(cert['costs'])==70
p=ROOT/'evidence/new-certificate.json'
p.write_text(json.dumps(cert,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
print(json.dumps({'generated':str(p),'taylor_zeros':len(zeros),'positive_terms':len(cert['legal_positive'])}))
