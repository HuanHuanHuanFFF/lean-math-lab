from pathlib import Path
import sympy as sp,math,itertools,json,time,sys
from sympy.polys.matrices import DomainMatrix
BASE=Path(__file__).resolve().parents[1]
x,y=sp.symbols('x y')
Z=x*y*(x-1)*(y-1)
def zo(a,b):return (a==0)+(b==0)+(a==1)+(b==1)
def tr(m):return max(m,0)*(max(m,0)+1)//2
def trans(F):
 dic={}
 for (a,b),c in sp.Poly(F,x,y).terms():
  for u in range(a+1):
   for v in range(b+1):
    key=(u,v);dic[key]=dic.get(key,0)+int(c)*math.comb(a,u)*math.comb(b,v)*6**(a+b-u-v)
 return dic

def probe(row,B,maxD=36):
 pts={1:list(range(2)),3:list(range(4)),4:list(range(5))};pts[row]=B
 best=None
 for D in range(5,maxD+1):
  cols=(D-3)*(D-2)//2
  cc=[]
  for w1 in range(1,D+1):
   for w3 in range(1,D+1-w1):
    w4=D+1-w1-w3;ww={1:w1,3:w3,4:w4}
    rc=sum(tr(ww[r]-zo(b,r-b)) for r in pts for b in pts[r])
    cc.append((rc,(w1,w3,w4)))
  rc,w=min(cc)
  if rc<cols:best=(D,rc,w);break
 if best is None:return {'row':row,'B':B,'failed':'dimension'}
 D,rc,w=best;ww=dict(zip([1,3,4],w))
 basis=[(a,b) for a in range(D-3) for b in range(D-3-a)]
 mat=[]
 for r in pts:
  for b in pts[r]:
   a=b;b=r-b;m=ww[r]-zo(a,b)
   for u in range(max(0,m)):
    for v in range(max(0,m)-u):
     mat.append([math.comb(A,u)*math.comb(BB,v)*a**(A-u)*b**(BB-v) if A>=u and BB>=v else 0 for A,BB in basis])
 print('start',row,B,D,w,len(mat),len(basis),flush=True);t=time.monotonic()
 ns=DomainMatrix.from_Matrix(sp.Matrix(mat)).nullspace().to_Matrix()
 print('null',ns.shape,'sec',time.monotonic()-t,flush=True)
 kern=[]
 for vrow in range(ns.rows):
  co=[int(z) for z in ns.row(vrow)];gg=math.gcd(*co);co=[z//gg for z in co]
  G=sum(z*x**a*y**b for z,(a,b) in zip(co,basis));
  if G.subs({x:6,y:6})<0:co=[-z for z in co];G=-G
  td=trans(G);neg=sum(v<0 for v in td.values()); pos=sum(v>0 for v in td.values())
  fac=sp.factor(G)
  print('kernel',vrow,'sign',pos,neg,'factor',str(fac)[:1300],flush=True)
  kern.append({'co':co,'pos':pos,'neg':neg,'factor':str(fac)})
 out={'row':row,'B':list(B),'D':D,'w':w,'basis':basis,'kernels':kern,'seconds':time.monotonic()-t}
 path=BASE/'evidence'/('occupancy-'+str(row)+'-'+''.join(map(str,B))+'.json');path.write_text(json.dumps(out,indent=2))
 return out
if __name__=='__main__':
 cases=[(3,B) for B in itertools.combinations(range(4),2)]+[(4,B) for B in itertools.combinations(range(5),3)]
 if len(sys.argv)>1: cases=[(int(sys.argv[1]),tuple(map(int,sys.argv[2])))]
 for r,B in cases:probe(r,B)
