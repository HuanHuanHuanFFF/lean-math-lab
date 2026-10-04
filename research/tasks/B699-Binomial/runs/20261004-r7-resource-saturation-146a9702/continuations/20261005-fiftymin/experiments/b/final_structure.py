from pathlib import Path
import sys,json,time,hashlib
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path(__file__).parent;st=time.monotonic()
J=u*u+u*y*y-3*u*y+y;F0=2*u*u*y*y-6*u*u*y+5*u*u+2*u*y-4*u+1
A=u*u*y*y-3*u*u*y+3*u*u+u*y-3*u+1
C=u**3*y**3-3*u**3*y**2+3*u**3*y+u**3+5*u*u*y*y-15*u*u*y+9*u*u+5*u*y-9*u+3
M=108*(u-1)**3*(y-1)**4*A*C
F=J*fs['V0']+M*fs['P5'];W,rem=F.div(r);assert not rem and r*W==F
G=rs.R.from_dict({(a,b,0):c for (a,b,k),c in W.items() if k==0});common=G.gcd(F0)
result={'identity':'r*Wr=J*V0+108*(u-1)^3*(y-1)^4*A*C*P5','Wr':[[list(e),str(c)] for e,c in sorted(W.items())],'J':[[list(e[:2]),str(c)] for e,c in sorted(J.items())],'A':[[list(e[:2]),str(c)] for e,c in sorted(A.items())],'C':[[list(e[:2]),str(c)] for e,c in sorted(C.items())],'F0':[[list(e[:2]),str(c)] for e,c in sorted(F0.items())],'Wr_stats':rs.stats(W),'gcd_F0_Wr_at_r0':str(common.as_expr()),'source_provenance':prov,'seconds':time.monotonic()-st}
p=out/'one-step-r-colon.json';p.write_text(json.dumps(result,separators=(',',':'))+'\n',encoding='utf-8');print({'Wr':rs.stats(W),'gcd':str(common.as_expr()),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()},flush=True)
# Current-source B9 irreducibility and N-colon nonvanishing witness.
base=json.loads((out/'Nzero-component.json').read_text());Bn=base['polynomials']['B9'];By2=[0]*10
from math import gcd
cont=0
for (i,j),c in Bn:By2[i]+=int(c)*2**j;cont=gcd(cont,abs(int(c)))
assert cont==1 and By2[-1]%11
pmod=11
trim=lambda a: next((a[:i+1] for i in range(len(a)-1,-1,-1) if a[i]),[])
def remp(a,b):
 a=trim(a[:]);iv=pow(b[-1],-1,pmod)
 while len(a)>=len(b):
  k=len(a)-len(b);c=a[-1]*iv%pmod
  for j,v in enumerate(b):a[k+j]=(a[k+j]-c*v)%pmod
  a=trim(a)
 return a
def mulp(a,b):
 z=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y0 in enumerate(b):z[i+j]=(z[i+j]+x*y0)%pmod
 return trim(z)
def powp(a,n,b):
 z=[1]
 while n:
  if n&1:z=remp(mulp(z,a),b)
  a=remp(mulp(a,a),b);n//=2
 return z
def gcdp(a,b):
 while b:a,b=b,remp(a,b)
 iv=pow(a[-1],-1,pmod);return [x*iv%pmod for x in a]
modulus=[x%11 for x in By2];states=[];xx=[0,1]
for i in range(1,10):xx=powp(xx,11,modulus);states.append(xx)
assert xx==[0,1]
z=states[2]+[0]*max(0,2-len(states[2]));z[1]=(z[1]-1)%11;assert len(gcdp(modulus,trim(z)))==1
import sympy as s
U,Y=s.symbols('u y');bexpr=sum(int(c)*U**i*Y**j for (i,j),c in Bn);bpoly=s.Poly(bexpr,U);coefs=[s.Poly(bpoly.nth(i),Y,domain=s.QQ) for i in range(10)];content=coefs[0];
for cc in coefs[1:]:content=s.gcd(content,cc)
assert content.degree()==0
col=json.loads((out/'one-step-N-colon.json').read_text());w=col['modular_nonvanishing_witness'];assert w=={'prime':101,'u':9,'y':4,'r':97,'W':40,'N1':46}
proof={'B9_integer_content':cont,'B9_QQy_content_degree':content.degree(),'prime':11,'u_degree_preserved':9,'B9_at_y2':By2,'frobenius_states':states,'rabin_x_p9_eq_x':True,'rabin_gcd_p3':1,'N_colon_nonvanishing_witness':w,'cleared_N_colon_value_mod101':pow(46,8,101)*40%101,'conclusion':'B9 is irreducible over QQ[u,y]; the cleared N-colon remainder is not divisible by B9. This removes the generic N=K=0 boundary curve, not the legal domain.'}
(out/'boundary-component-structure.json').write_text(json.dumps(proof,indent=2)+'\n',encoding='utf-8');print({k:v for k,v in proof.items() if k not in ['frobenius_states','B9_at_y2']},flush=True)

