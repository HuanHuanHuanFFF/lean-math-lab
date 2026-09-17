import sympy as S,json
from pathlib import Path
r=Path(__file__).resolve().parents[1]
u,v,X,Y=S.symbols('u v X Y')
P=[v,v-1,u-1,u*v+2*u+2*v-3,9*u*u*v+12*u*u+3*u*v-34*u-16*v+24,27*u*u*v*v+45*u*u*v-12*u*u+45*u*v*v-105*u*v+10*u-12*v*v+10*v+12]
pts=[(S.Rational(b,2),S.Rational(3-b,2)) for b in range(4)]+[(S.Rational(b,3),S.Rational(4-b,3)) for b in (1,2,3,4)]
classes=[];out=[]
for f in P:
 pp=S.Poly(f,u,v);a=pp.degree(u);b=pp.degree(v);mm=[]
 for x0,y0 in pts:
  shifted=S.Poly(f.subs({u:u+x0,v:v+y0},simultaneous=True),u,v)
  mm.append(min(sum(ab) for ab,cc in shifted.terms()))
 classes.append((a,b,mm))
 d=pp.total_degree();orig=S.Poly(sum(cc*X**i*Y**j*(X+Y-1)**(d-i-j) for (i,j),cc in pp.terms()),X,Y)
 sh=S.Poly(orig.as_expr().subs({X:X+6,Y:Y+6},simultaneous=True),X,Y)
 signs={S.sign(c) for c in sh.coeffs()}
 print('P=',f,'class=',classes[-1],'ORIG signs',signs,'constant',sh.TC())
 out.append({'p':str(f),'a':a,'b':b,'mult':mm,'terms':[[*ab,int(c)] for ab,c in pp.terms()], 'original_terms':[[*ab,int(c)] for ab,c in orig.terms()], 'shift_signs':list(map(int,signs)), 'shift_constant':int(sh.TC())})
M=S.Matrix([[a*d+b*c-sum(x*y for x,y in zip(mm,nn)) for c,d,nn in classes] for a,b,mm in classes])
print('M=',M,'det=',M.det());w=-M.inv()*S.ones(6,1);print('weights=',w)
lcm=S.ilcm(*(x.q for x in w));w=w*lcm;print('integers=',list(w));z=[sum(w[i]*classes[i][j] for i in range(6)) for j in [0,1]]+[ [sum(w[i]*classes[i][2][j] for i in range(6)) for j in range(8)] ]
print('Z=',z,'square=',(w.T*M*w)[0], 'ZCi=',list(M*w))
(r/'evidence'/'root_curves.json').write_text(json.dumps({'curves':out,'intersection':list(map(list,M.tolist())),'weights':list(map(int,w)),'Z_a':int(z[0]),'Z_b':int(z[1]),'Z_mult':list(map(int,z[2])),'Z_square':int((w.T*M*w)[0])},default=int,indent=2))
