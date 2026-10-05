import json
from pathlib import Path
import sympy as s
w=Path('/mnt/data/r6_work');xx,yy,rr=s.symbols('x y r')
def base(name):
 d=json.load(open(w/f'trans_{name}.json'));pp=d['polynomial'];E=[(e[0]-2*e[2],e[1]-2*e[2],e[2])for e,c in pp];mi=[min(e[i]for e in E)for i in range(3)];p={tuple(e[i]-mi[i]for i in range(3)):int(c)for e,(a,c)in zip(E,pp)}
 return s.Poly.from_dict(p,(xx,yy,rr))
names=['P5','G4','G3','G2','G1','G0'];ps=[base(n)for n in names]
for order in [[2,0,1],[0,2,1],[0,1,2],[1,0,2],[1,2,0],[2,1,0]]:
 out=[str(len(ps))]
 for p in ps:
  out.append(str(len(p.terms())))
  out.extend(' '.join(map(str,[*(e[i]for i in order),c]))for e,c in p.terms())
 (w/('mob_'+''.join(map(str,order))+'.txt')).write_text('\n'.join(out)+'\n')
for n in ['N','K']:print(n,base(n).as_expr())
