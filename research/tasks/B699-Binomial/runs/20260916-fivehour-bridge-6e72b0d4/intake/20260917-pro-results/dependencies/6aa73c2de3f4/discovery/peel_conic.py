from pathlib import Path
import sympy as s,json,math,itertools
from functools import reduce
X,Y=s.symbols('X Y');mon=[s.Integer(1),X,Y,X*X,X*Y,Y*Y]
allans=[]
for miss in [0,1]:
 orig=[(b,r-b) for r in [1,3,4]for b in range(r+1)if(r,b)!=(3,miss)]
 atoms={}
 for ps in itertools.combinations(orig,5):
  ns=s.Matrix([[m.subs({X:x,Y:y})for m in mon]for x,y in ps]).nullspace()
  if len(ns)!=1:continue
  f=sum(c*m for c,m in zip(ns[0],mon));num=s.fraction(s.factor(f))[0]
  for fac,e in s.factor_list(num)[1]:
   P=s.Poly(fac,X,Y); den=math.lcm(*[int(c.q) for c in P.coeffs()]);P=s.Poly(fac*den,X,Y);gc=reduce(math.gcd,[int(c)for c in P.coeffs()]);P=s.Poly(P.as_expr()/gc,X,Y)
   if P.LC()<0:P=-P
   deg=P.total_degree();order=[]
   for x,y in orig:
    shift=s.Poly(P.as_expr().subs({X:X+x,Y:Y+y},simultaneous=True),X,Y);order.append(min(a+b for(a,b),c in shift.terms()))
   atoms[str(P.as_expr())]=(deg,order,[[a,b,int(c)]for(a,b),c in P.terms()])
 for weights in [(29,20,12),(30,19,12),(30,20,11),(30,20,12)]:
  D=sum(weights)-1;ws=[dict(zip([1,3,4],weights))[sum(p)]for p in orig];fac={}
  while 1:
   cand=[(sum(a*b for a,b in zip(orders,ws))-deg*D,expr,deg,orders,terms)for expr,(deg,orders,terms)in atoms.items() if sum(a*b for a,b in zip(orders,ws))>deg*D]
   if not cand:break
   excess,expr,deg,orders,terms=max(cand)
   D-=deg;ws=[max(0,a-b)for a,b in zip(ws,orders)];fac[expr]=fac.get(expr,0)+1
   if D<0:break
  unknown=(D+1)*(D+2)//2;nc=sum(w*(w+1)//2 for w in ws)
  ans={'miss':miss,'weights':weights,'reducedD':D,'unknown':unknown,'conditions':nc,'points':[list(p)+[w]for p,w in zip(orig,ws)],'factors':fac}
  print(json.dumps(ans),flush=True);allans.append(ans)
open(str(Path(__file__).with_name('peeled_conic.json')),'w').write(json.dumps(allans,indent=2))
