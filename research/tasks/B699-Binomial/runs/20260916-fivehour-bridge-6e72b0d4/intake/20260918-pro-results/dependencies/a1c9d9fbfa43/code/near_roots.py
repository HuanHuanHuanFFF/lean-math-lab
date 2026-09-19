from pathlib import Path
import json,math
import sympy as S
R=Path(__file__).resolve().parents[1]; data=json.loads((R/'evidence/near-slot-discovery.json').read_text())
u,v,X,Y=S.symbols('u v X Y');PP=[]
for c in data['classes']:
 for k in c['kernel']:
  for ff in k['factors']:
   f=sum(z*u**i*v**j for i,j,z in ff['terms'])
   f=S.Poly(f,u,v).monic().as_expr()
   if f not in PP:PP.append(f)
pts=[(S.Rational(b,2),S.Rational(3-b,2)) for b in range(4)]+[(S.Rational(b,3),S.Rational(4-b,3)) for b in (0,2,3,4)]
C=[];out=[]
for f in PP:
 den=math.lcm(*[x.q for x in S.Poly(f,u,v).coeffs()]);f=S.expand(f*den)
 pp=S.Poly(f,u,v);a=pp.degree(u);b=pp.degree(v);d=pp.total_degree()
 mm=[]
 for p in pts:
  ff=S.Poly(f.subs({u:u+p[0],v:v+p[1]},simultaneous=True),u,v)
  mm.append(min(sum(ab) for ab,cc in ff.terms()))
 orig=S.Poly(sum(c*X**i*Y**j*(X+Y-1)**(d-i-j) for (i,j),c in pp.terms()),X,Y)
 sh=S.Poly(orig.as_expr().subs({X:X+6,Y:Y+6},simultaneous=True),X,Y)
 C.append((a,b,mm)); orders=[]
 for p in [(0,0),(0,2),(1,1),(2,0)]:
  ff=S.Poly(orig.as_expr().subs({X:X+p[0],Y:Y+p[1]},simultaneous=True),X,Y)
  orders.append(min(sum(ab) for ab,cc in ff.terms()))
 print(len(C),f,'class',C[-1],'signs',set(S.sign(c) for c in sh.coeffs()),'constant',sh.TC(),'orders',orders)
 out.append({'terms':[[*ab,int(c)] for ab,c in pp.terms()],'a':a,'b':b,'mult':mm,'original':[[*ab,int(c)] for ab,c in orig.terms()],'orders':orders,'legal_signs':list(set(int(S.sign(c)) for c in sh.coeffs())),'legal_constant':int(sh.TC())})
M=S.Matrix([[a*bb+b*aa-sum(x*y for x,y in zip(mm,nn)) for aa,bb,nn in C] for a,b,mm in C]);print('M',M,'det',M.det())
w=-M.inv()*S.ones(len(C),1);den=math.lcm(*(x.q for x in w));w=w*den
print('w',list(w),'Z2',(w.T*M*w)[0]);print('Z orders',[sum(w[i]*out[i]['orders'][j] for i in range(len(C))) for j in range(4)])
zclass=[sum(w[i]*C[i][j] for i in range(len(C))) for j in [0,1]]+[[sum(w[i]*C[i][2][j] for i in range(len(C))) for j in range(8)]]
print('Zclass',zclass)
(R/'evidence/near-root-discovery.json').write_text(json.dumps({'curves':out,'intersection':M.tolist(),'weights':list(w),'Z_square':(w.T*M*w)[0],'Z_class':zclass},default=int,indent=2))
