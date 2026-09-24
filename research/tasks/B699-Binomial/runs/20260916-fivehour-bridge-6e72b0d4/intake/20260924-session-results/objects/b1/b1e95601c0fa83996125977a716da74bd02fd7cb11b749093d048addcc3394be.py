import sys,time,json,math
sys.path.insert(0,'/mnt/data/c22_work')
from search_kernels import data
import sympy as s
from sympy.polys.matrices import DomainMatrix

def exact(d,w):
 mons=[(i,j) for i in range(d+1) for j in range(i+1) if w[0]<=i+j<=d]
 rows=[]
 for r in range(1,6):
  for b in range(r//2+1):
   for h in range(w[r]):
    for u in range(h+1):
     v=h-u
     if 2*b==r and u<v:continue
     vals=[]
     for i,j in mons:
      val=0
      if i>=u and j>=v:val=math.comb(i,u)*math.comb(j,v)*b**(i-u)*(r-b)**(j-v)
      if i!=j and j>=u and i>=v:val+=math.comb(j,u)*math.comb(i,v)*b**(j-u)*(r-b)**(i-v)
      vals.append(val)
     rows.append(vals)
 print('matrix',len(rows),len(mons),flush=True)
 mat=DomainMatrix.from_Matrix(s.Matrix(rows)).convert_to(s.QQ)
 t=time.time();nb=mat.nullspace().to_Matrix();print('nullshape',nb.shape,'seconds',time.time()-t,flush=True)
 x,y=s.symbols('x y')
 for jj in range(nb.rows):
  vs=list(nb.row(jj));den=s.ilcm(*[v.q for v in vs]);vs=[int(v*den) for v in vs];g=math.gcd(*vs);vs=[v//g for v in vs]
  pol=sum(c*(x**i*y**j+(x**j*y**i if i!=j else 0)) for (i,j),c in zip(mons,vs))
  fac=s.factor(pol);print(fac,flush=True)
  terms=[[int(i),int(j),int(c)] for (i,j),c in s.Poly(pol,x,y).terms()]
  fs=[]
  for f,e in s.factor_list(pol)[1]:
   fp=s.Poly(f,x,y);sh=s.Poly(fp.as_expr().subs({x:x+7,y:y+7}),x,y)
   print('factor degree',fp.total_degree(),'exp',e,'shift min',min(sh.coeffs()),'max',max(sh.coeffs()),flush=True)
   fs.append({'degree':fp.total_degree(),'exponent':int(e),'terms':[[int(i),int(j),int(c)] for (i,j),c in fp.terms()],'shift_min':int(min(sh.coeffs())),'shift_max':int(max(sh.coeffs()))})
  json.dump({'degree':d,'weights':w,'terms':terms,'factors':fs},open(f'/mnt/data/c22_work/kernel_d{d}.json','w'),indent=2)
for d,w in [(19,[4,4,7,4,2,5]),(21,[4,4,5,4,7,4])]:exact(d,w)
