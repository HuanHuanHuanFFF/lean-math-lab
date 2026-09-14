"""Bounded discovery only. Search new degree4-6 positive auxiliary polynomials.
Not a completeness claim; all candidate coefficients/vanishing must be exact-received.
"""
import json,time
from pathlib import Path
from fractions import Fraction
import numpy as np
from scipy.optimize import linprog
R=Path(__file__).resolve().parents[1]
old=json.loads((R/'inputs/positions/B699-ProA-i9-quadratic-position-20260913/evidence/relaxation_witnesses.json').read_text())
cells=[(r,b,r-b) for r in range(9) for b in range(r+1)]
rng=np.random.default_rng(132026)
start=time.monotonic(); records=[]
for pos_index in [2,0]:
 w=old['witnesses'][pos_index]; mass=np.array([float(Fraction(x)) for x in w['cell_masses']]);pos=w['positions']
 for degree in [4,5,6]:
  monoms=[(u,t-u) for t in range(degree+1) for u in range(t,-1,-1)]
  E=np.array([[((b-9)/16)**u*((c-b)/16)**v for u,v in monoms] for r,b,c in cells])
  constrow=np.array([float(v==0) for u,v in monoms]);best=0;bestrec=None
  active=np.flatnonzero(mass>1e-8)
  for trial in range(55):
   order=active[np.argsort(-(mass[active]+rng.uniform(0,0.65,len(active))))]
   selected=[];res=None
   for ix in order:
    inds=selected+[ix];eq=np.vstack([E[inds],constrow]);scale=np.max(np.abs(eq),axis=1);scale[scale==0]=1
    ans=linprog(np.ones(len(monoms)),A_eq=eq/scale[:,None],b_eq=np.array([0.]*len(inds)+[1.])/scale,bounds=(0,None),method='highs')
    if ans.success:selected=inds;res=ans
   if res is None:continue
   vals=E@res.x
   van=[i for i in range(45) if abs(vals[i])<1e-7*max(1,np.max(np.abs(res.x)))]
   score=float(mass[van].sum())
   if score>best:
    best=score;bestrec={'positions':pos,'degree':degree,'score':score,'trial':trial,'selected':list(map(int,selected)),'zeros_discovery':van,'monomials':monoms,'positive_shifted_coefficients_float':res.x.tolist()}
   if score>degree+1e-7:
    records.append(bestrec);print('FOUND',pos,degree,score,trial,flush=True);break
  print('DONE',pos,degree,'best',best,'seconds',round(time.monotonic()-start,2),flush=True)
  if bestrec:records.append(bestrec)
  (R/'evidence/high_degree_probe.json').write_text(json.dumps({'status':'DISCOVERY_NOT_ACCEPTED','records':records},indent=2))
print('TOTAL',time.monotonic()-start)
