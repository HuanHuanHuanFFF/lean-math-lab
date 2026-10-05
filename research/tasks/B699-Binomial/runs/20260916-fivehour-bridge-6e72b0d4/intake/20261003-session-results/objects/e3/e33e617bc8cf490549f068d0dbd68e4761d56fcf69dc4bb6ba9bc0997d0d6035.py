import sympy as s,json,math
from pathlib import Path
from fractions import Fraction as F
n,j,u,v=s.symbols('n j u v')
bad=json.loads(Path('/mnt/data/c_r8_work/zero_bad.json').read_text())
# exact polynomial affine restriction coefficients and Bernstein conversion
from math import comb

def affine(p,lx,hx,ly,hy):
 out={}
 for (a,b),c in p.items():
  for i in range(a+1):
   for k in range(b+1):
    out[i,k]=out.get((i,k),F(0))+c*comb(a,i)*lx**(a-i)*(hx-lx)**i*comb(b,k)*ly**(b-k)*(hy-ly)**k
 return {ab:c for ab,c in out.items() if c}
def bern(p,dx,dy):
 return [sum(c*F(comb(i,a),comb(dx,a))*F(comb(k,b),comb(dy,b)) for (a,b),c in p.items() if a<=i and b<=k) for i in range(dx+1) for k in range(dy+1)]
ret=[]
for r in bad:
 f=s.sympify([x for x in r['proof'][0]['factors'] if not(x['sign'] or x['smooth_zero_obstruction'])][0]['f']);p=s.Poly(f,n,j);d=p.total_degree();p={(b,d-a-b):F(int(c)) for (a,b),c in p.terms()};dx=max(a for a,b in p);dy=max(b for a,b in p)
 proof=None
 for steps in (1,2,4,8,16,32,64):
  for sign in (1,-1):
   boxes=[];good=True
   for i in range(steps):
    q=affine({ab:c*sign for ab,c in p.items()},F(i,2*steps),F(i+1,2*steps),F(0),F(1,352))
    vals=bern(q,dx,dy)
    if min(vals)<=0:good=False;break
    boxes.append([str(x) for x in vals])
   if good:proof=dict(steps=steps,sign=sign,boxes=boxes);break
  if proof:break
 print(r['pairs'],None if not proof else (proof['steps'],proof['sign']))
 ret.append(dict(pairs=r['pairs'],proof=proof))
Path('/mnt/data/c_r8_work/bern_bad.json').write_text(json.dumps(ret,indent=2))
