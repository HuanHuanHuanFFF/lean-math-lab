#!/usr/bin/env python3
"""Generate only the new R2 certificates from frozen R1 coefficients. SymPy required.
Does not rerun R1's finite-fiber/interval theorems or any repository/Lean command.
"""
from pathlib import Path
import json,time,math
from sympy import QQ
from sympy.polys.rings import ring
ROOT=Path(__file__).resolve().parents[1];PR=ROOT/'inputs/prior';OUT=ROOT/'certificates'
def read(p):return json.loads(p.read_text())
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
def save(name,data):(OUT/name).write_text(json.dumps(data,ensure_ascii=False,separators=(',',':'))+'\n')
t0=time.monotonic();old=read(PR/'certificates/scale.json');reg=read(PR/'certificates/regular.json')['R']
R,u,y,r,L=ring('u,y,r,L',QQ)
def ld(n):return R.from_dict({tuple(m):QQ(c) for m,c in old[n]})
H=u*u-u*y*y+3*u*y-2*u+(y-1)**2;J=u*u+u*y*y-3*u*y+y
A=4*u*y*y*H;B=3*(u-1)*(y-1)**2*J;T=A*r-B;E=u*J-(u-1)*H
D,F,C0=ld('D'),ld('F'),ld('C');a,b,c=ld('a'),ld('b'),ld('c');K,S=ld('K'),ld('S');Q2,Q3=ld('Q2'),ld('Q3');CS=ld('Cstar');q=ld('q');hf=u*(u-1)*(D/2)**2
assert (u-1)*S-b*K==a*(u-1)*T
assert c*(Q3.coeff_wrt(L,1)-q*c)-b*Q3.coeff_wrt(L,0)==hf*CS*(u-1)*T
assert H-J==(1-2*u)*(y*y-3*y+1)
P,U,Y,Z=ring('u,y,L',QQ)
def to3(p):return P.from_dict({(m[0],m[1],m[3]):v for m,v in p.items()})
A3,B3=to3(A),to3(B)
def rclear(p):
 n=p.degree(r);out=P.zero
 for i in range(n+1):out+=to3(p.coeff_wrt(r,i))*B3**i*A3**(n-i)
 return out,n
Ccurve=rclear(K)[0].exquo(to3(48*u*u*y*y*(u-1)*E))
assert rclear(D)[0]==to3(24*u*y*y*(u-1)*(y-1)**2*E)
low={};N=L*F+C0;DD=L*D;units={4:-3,3:6,2:-3,1:6,0:3}
for i in range(4,-1,-1):
 terms=reg[str(i)]['terms'];dw=max(m[0] for m,co in terms);raw=R.zero
 for j in range(dw+1):
  ch=R.zero
  for (ww,uu,yy,ll,aa),co in terms:
   if ww==j:ch+=QQ(co)*u**uu*y**yy*r**aa*L**(ll+aa)
  raw+=ch*N**j*DD**(dw-j)
 qi=raw.exquo(units[i]*L**4)
 low[str(i)]={'w_degree':dw,'L_power':4,'unit':units[i],'Q':pack(qi)}
 print('new complete R'+str(i)+' identity generated',flush=True)
 if i==4:Q4=qi
F2=rclear(Q2)[0].exquo(to3(576*u**3*(u-1)**2*y**2*(y-1)**2))
F4=rclear(Q4)[0].exquo(to3(5308416*u**7*(u-1)**4*y**2*(y-1)**2))
AC=F2.coeff_wrt(Z,2)
assert rclear(a)[0]==to3(576*u**3*(u-1)**2*y**2*(y-1)**2)*AC
save('core.json',{'variables4':['u','y','r','L'],'variables3':['u','y','L'],'polys4':{n:pack(p) for n,p in [('H',H),('J',J),('A',A),('B',B),('T',T),('E',E)]},'polys3':{n:pack(p) for n,p in [('Ccurve',Ccurve),('F2',F2),('F4',F4),('Acal',AC)]},'low':low})
print('linear ratio, curve and full R4..R0 certificates generated',flush=True)
RR,uu,yy=ring('u,y',QQ)
def to2(p):return RR.from_dict({(m[0],m[1]):v for m,v in p.items()})
res_sympy=to2(Ccurve).resultant(to2(AC))
# The production convention is the explicit descending-coefficient Sylvester
# matrix: 15 shifted C rows, then 9 shifted Acal rows. Its determinant is
# the negative of this installed PolyElement.resultant output; the independent
# checker verifies the chosen determinant identity at all 295 required points.
res=-res_sympy;RY=res.ring;y1=RY.gens[0]
fac=123974556480*y1**48*(y1-1)**70*(2*y1*y1-2*y1+1)**8*(y1*y1-3*y1+1)**16
P78=res.exquo(fac);assert P78.degree()==78
vals=[]
for x in range(11):vals.append(int(P78.evaluate(y1,x))%11)
assert 0 not in vals and int(P78[(78,)])%11==8
save('a_zero.json',{'resultant_variables':['u','y'],'degree_bound_y':294,'evaluation_points':list(range(-147,148)),'factor_scalar':123974556480,'determinant_convention':'15 shifted descending C rows, followed by 9 shifted descending Acal rows','P78':pack(P78),'P78_mod11_values':vals,'P78_lc_mod11':8,'resultant':pack(res)})
print('complete a=0 resultant and rational-root obstruction generated',flush=True)
norm=lambda p:sum(abs(int(c)) for c in p.values())
nc,n2,n4=map(norm,[Ccurve,F2,F4]);br=math.factorial(6)*n2**4*n4**2;be=math.factorial(174)*nc**164*br**10
save('finite_bounds.json',{'C_l1':nc,'F2_l1':n2,'F4_l1':n4,'R_l1_bound_formula':'6!*F2_l1^4*F4_l1^2','R_bound_bit_length':br.bit_length(),'E_l1_bound_formula':'174!*C_l1^164*(6!*F2_l1^4*F4_l1^2)^10','E_bound_bit_length':be.bit_length(),'E_degree_u_bound':2656,'normalized_rational_tuple_bound':53120,'rational_u_height_strict_power2_exponent':be.bit_length()})
print(json.dumps({'status':'PASS','seconds':round(time.monotonic()-t0,3),'Ccurve_degrees':Ccurve.degrees(),'F2_degrees':F2.degrees(),'F4_degrees':F4.degrees(),'Acal_degrees':AC.degrees(),'height_exponent':be.bit_length()}),flush=True)
