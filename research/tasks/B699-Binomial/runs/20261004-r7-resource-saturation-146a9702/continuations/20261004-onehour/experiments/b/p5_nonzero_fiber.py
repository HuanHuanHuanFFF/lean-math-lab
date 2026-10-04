"""Fresh characteristic-zero reconstruction of the P5 nonzero-fiber lemma from its coefficients."""
import exact_fiber as f
from pathlib import Path
from fractions import Fraction as Q
import sympy as sp
import json,time,hashlib

def bezout(a,b):
 r0,r1=a,b;s0,s1=[Q(1)],[];t0,t1=[],[Q(1)]
 while r1:
  d,r=f.qd(r0,r1);r0,r1=r1,r;s0,s1=s1,f.qa(s0,f.qn(f.qm(d,s1)));t0,t1=t1,f.qa(t0,f.qn(f.qm(d,t1)))
 assert len(r0)==1
 a=[x/r0[0] for x in s0];b=[x/r0[0] for x in t0]
 return a,b

def bareiss(a):
 n=len(a);a=[list(r) for r in a];old=1;sgn=1
 for k in range(n-1):
  j=next((i for i in range(k,n) if a[i][k]),None)
  if j is None:return 0
  if j!=k:a[k],a[j]=a[j],a[k];sgn=-sgn
  p=a[k][k]
  for i in range(k+1,n):
   for j in range(k+1,n):
    t=a[i][j]*p-a[i][k]*a[k][j];assert t%old==0;a[i][j]=t//old
   a[i][k]=0
  old=p
 return sgn*a[-1][-1]

def sylv(a,b):
 m,n=len(a)-1,len(b)-1;ad=a[::-1];bd=b[::-1];M=[]
 for i in range(n):M.append([0]*i+ad+[0]*(n-1-i))
 for i in range(m):M.append([0]*i+bd+[0]*(m-1-i))
 return M

def ev(poly,t):
 v=0
 for c in poly[::-1]:v=v*t+c
 return v

if __name__=='__main__':
 start=time.monotonic();rs,fs,gs,prov=f.source();u,y,r=rs.u,rs.y,rs.r;U,Y=sp.symbols('u y')
 p0=rs.R.from_dict({(a,b,0):c for (a,b,k),c in fs['P5'].items() if k==0})
 p1=rs.R.from_dict({(a,b,0):c for (a,b,k),c in fs['P5'].items() if k==1})
 p5=rs.R.from_dict({(a,b,0):c for (a,b,k),c in fs['P5'].items() if k==5})
 A5=8*u**3*y-5*(u-1)**2*(y-1)**3;J=u*u+u*y*y-3*u*y+y
 F0=2*u*u*y*y-6*u*u*y+5*u*u+2*u*y-4*u+1
 assert p0==-9*(u-1)**4*(y-1)**3*J*F0
 assert p5==144*u**4*y**4*(u-1)**2*(y-1)*A5
 objs={'A5':A5,'J':J,'F0':F0,'p1':p1};res={};checks=[]
 for name,left,right in [('fJ','A5','J'),('gJ','J','p1'),('fF','A5','F0'),('gF','F0','p1')]:
  P=sp.Poly(objs[left].as_expr(),U,Y);G=sp.Poly(objs[right].as_expr(),U,Y)
  rr=sp.Poly(sp.resultant(P.as_expr(),G.as_expr(),U),Y);cs=[int(rr.nth(k)) for k in range(rr.degree()+1)];res[name]=cs
  m=P.degree(U);n=G.degree(U);bound=n*P.degree(Y)+m*G.degree(Y)
  pc=[[int(P.coeff_monomial(U**i*Y**j)) for j in range(P.degree(Y)+1)] for i in range(m+1)]
  gc=[[int(G.coeff_monomial(U**i*Y**j)) for j in range(G.degree(Y)+1)] for i in range(n+1)]
  assert rr.degree()<=bound
  for t in range(bound+1):assert bareiss(sylv([ev(c,t) for c in pc],[ev(c,t) for c in gc]))==ev(cs,t)
  checks.append({'name':name,'left':left,'right':right,'fixed_u_degrees':[m,n],'y_degree_bound':bound,'actual_y_degree':rr.degree(),'exact_integer_nodes':bound+1})
  print(checks[-1],flush=True)
 cert={}
 for key,a,b in [('J','fJ','gJ'),('F0','fF','gF')]:
  x,z=bezout(list(map(Q,res[a])),list(map(Q,res[b])));assert f.qa(f.qm(x,res[a]),f.qm(z,res[b]))==[1]
  cert[key]={'left':a,'right':b,'bezout_left':[str(c) for c in x],'bezout_right':[str(c) for c in z]}
 out=Path(__file__).parent/'p5-nonzero-fiber-certificate.json'
 out.write_text(json.dumps({'source_provenance':prov,'coefficient_identities':['p0=-9*(u-1)^4*(y-1)^3*J*F0','p5=144*u^4*y^4*(u-1)^2*(y-1)*A5'],'resultants':{k:[str(c) for c in v] for k,v in res.items()},'bezout':cert,'resultant_checks':checks,'seconds':time.monotonic()-start},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print('PASS',out.stat().st_size,hashlib.sha256(out.read_bytes()).hexdigest(),flush=True)
