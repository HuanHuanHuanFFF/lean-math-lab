#!/usr/bin/env python3
"""R4 exact certificate verifier; Python standard library + a local C++17 compiler.
No network, Lean, repository, symbolic algebra system, or package installer is used.
"""
from __future__ import annotations
import sys,os,json,math,time,tempfile,subprocess,hashlib
from pathlib import Path
from fractions import Fraction
sys.path.insert(0,str(Path(__file__).resolve().parent))
import ipoly as ip
ROOT=Path(__file__).resolve().parents[1]
CHECKS=[]
def check(name,ok,detail=None):
 if not ok:raise AssertionError(name)
 CHECKS.append({'name':name, **({'detail':detail} if detail is not None else {})})
def load(s):return json.loads((ROOT/s).read_text())
def p2(t):return ip.unpack(t,2)
def p3(t):return ip.drop_last(t)
def coeff(p,axis,k):return {m[:axis]+m[axis+1:]:v for m,v in p.items() if m[axis]==k}
def l1(p):return sum(map(abs,p.values()))
def prime(n):
 if n<2:return False
 if n%2==0:return n==2
 return all(n%d for d in range(3,math.isqrt(n)+1,2))
def trim(a):
 a=list(a)
 while a and not a[-1]:a.pop()
 return a
# Univariate arithmetic over F_p. Lists are ascending powers.
def rem(a,b,p):
 a=trim([x%p for x in a]);b=trim([x%p for x in b]);iv=pow(b[-1],-1,p)
 while len(a)>=len(b):
  d=len(a)-len(b);c=a[-1]*iv%p
  for j,x in enumerate(b):a[d+j]=(a[d+j]-c*x)%p
  a=trim(a)
 return a

def gcd(a,b,p):
 a=trim(a);b=trim(b)
 while b:a,b=b,rem(a,b,p)
 return [(x*pow(a[-1],-1,p))%p for x in a] if a else []
def pmul(a,b,p):
 c=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%p
 return trim(c)
def ppowmod(a,n,b,p):
 out=[1]
 while n:
  if n&1:out=rem(pmul(out,a,p),b,p)
  a=rem(pmul(a,a,p),b,p);n//=2
 return out
def psub(a,b,p):
 c=[0]*max(len(a),len(b))
 for j,x in enumerate(a):c[j]=x
 for j,x in enumerate(b):c[j]=(c[j]-x)%p
 return trim(c)
def arr1(p):
 a=[0]*(ip.degree(p,0)+1)
 for (k,),v in p.items():a[k]=v
 return a
def aty(p,y,pmod=None):
 a=[0]*(ip.degree(p,0)+1)
 for (i,j),v in p.items():a[i]+=v*y**j if pmod is None else v*pow(y,j,pmod)
 return trim(a if pmod is None else [v%pmod for v in a])
def rat_gcd(a,b):
 a=trim(list(map(Fraction,a)));b=trim(list(map(Fraction,b)))
 while b:
  c=a[:]
  while len(c)>=len(b):
   d=len(c)-len(b);v=c[-1]/b[-1]
   for j,x in enumerate(b):c[d+j]-=v*x
   c=trim(c)
  a,b=b,c
 return [x/a[-1] for x in a] if a else []

def content_one(p,name):
 # Exact Q[y] gcd, not just a modular guess.
 g=[];used=[]
 for j in range(ip.degree(p,0)+1):
  a=arr1(coeff(p,0,j))
  if a:g=rat_gcd(g,a);used.append(j)
  if g==[1]:break
 check(name+' primitive in u',g==[1],{'coefficient_indices':used})

def irreducible_special(p,modulus,name):
 q=aty(p,2,modulus);d=len(q)-1
 check(name+' degree preserved at y=2',d==ip.degree(p,0) and bool(q[-1]))
 q=[v*pow(q[-1],-1,modulus)%modulus for v in q]
 # Rabin irreducibility test, with explicit prime-divisor tests of d.
 divs=[ell for ell in range(2,d+1) if d%ell==0 and prime(ell)]
 check(name+' Frobenius degree identity',not psub(ppowmod([0,1],modulus**d,q,modulus),[0,1],modulus))
 for ell in divs:
  z=psub(ppowmod([0,1],modulus**(d//ell),q,modulus),[0,1],modulus)
  check(name+f' Rabin gcd d/{ell}',gcd(q,z,modulus)==[1])
 return q

class Extension:
 """Exact finite extension; modulus irreducibility is verified separately."""
 def __init__(self,p,q):
  self.p=p;self.q=q;self.d=len(q)-1;self.zero=(0,)*self.d;self.one=(1,)+(0,)*(self.d-1)
 def add(self,a,b):return tuple((x+y)%self.p for x,y in zip(a,b))
 def neg(self,a):return tuple(-x%self.p for x in a)
 def mul(self,a,b):
  t=[0]*(2*self.d-1)
  for i,x in enumerate(a):
   for j,y in enumerate(b):t[i+j]=(t[i+j]+x*y)%self.p
  for k in range(len(t)-1,self.d-1,-1):
   c=t[k]
   for j in range(self.d):t[k-self.d+j]=(t[k-self.d+j]-c*self.q[j])%self.p
  return tuple(t[:self.d])
 def pow(self,a,n):
  v=self.one
  while n:
   if n&1:v=self.mul(v,a)
   a=self.mul(a,a);n//=2
  return v
 def inv(self,a):
  if a==self.zero:raise ZeroDivisionError('zero extension element')
  b=self.pow(a,self.p**self.d-2)
  if self.mul(a,b)!=self.one:raise AssertionError('invalid field inverse')
  return b
 def trim(self,a):
  a=list(a)
  while a and a[-1]==self.zero:a.pop()
  return a
 def prem(self,a,b):
  a=self.trim(a);b=self.trim(b);iv=self.inv(b[-1])
  while len(a)>=len(b):
   d=len(a)-len(b);c=self.mul(a[-1],iv)
   for j,x in enumerate(b):a[d+j]=self.add(a[d+j],self.neg(self.mul(c,x)))
   a=self.trim(a)
  return a
 def monic(self,a):return [self.mul(x,self.inv(a[-1])) for x in a] if a else []
 def gcd(self,a,b):
  while b:a,b=b,self.prem(a,b)
  return self.monic(a)
 def pmul(self,a,b):
  v=[self.zero]*(len(a)+len(b)-1)
  for i,x in enumerate(a):
   for j,y in enumerate(b):v[i+j]=self.add(v[i+j],self.mul(x,y))
  return self.trim(v)
 def spec(self,P):
  u=(0,1)+(0,)*(self.d-2);pw=[self.one]
  for _ in range(ip.degree(P,0)):pw.append(self.mul(pw[-1],u))
  out=[self.zero]*(ip.degree(P,2)+1)
  for (i,j,k),v in P.items():out[k]=self.add(out[k],tuple((v*pow(2,j,self.p)*x)%self.p for x in pw[i]))
  return self.trim(out)

def resultant_check(p,q,out,name):
 # Complete integer interpolation in y of fixed-degree Sylvester determinant.
 m,n=ip.degree(p,0),ip.degree(q,0)
 bound=n*ip.degree(p,1)+m*ip.degree(q,1)
 check(name+' recorded degree bound',ip.degree(out,0)<=bound)
 for y0 in range(2,bound+3):
  a=aty(p,y0);b=aty(q,y0)
  a += [0]*(m+1-len(a));b += [0]*(n+1-len(b))
  d=ip.det_int(ip.sylvester(a,b));v=ip.evaluate(out,[y0])
  if d!=v:raise AssertionError(name+' at y='+str(y0))
 check(name+' exact determinant identity',True,{'matrix_order':m+n,'integer_values':bound+1,'degree_bound':bound})

def serial_poly(p,n=3):
 lines=[str(len(p))]
 for m,v in sorted(p.items()):
  exps=list(m)+[0]*(3-len(m));lines.append(' '.join(map(str,exps+[v])))
 return '\n'.join(lines)+'\n'

def main():
 start=time.monotonic();G=load('inputs/generic.json');P5=p3(G['B5']);N=p3(G['N']);K=p3(G['K']);gi={i:p3(G['low'][str(i)]['stripped']) for i in range(4,-1,-1)}
 U=[ip.var(2,i) for i in range(2)];u,y=U;one=ip.const(2,1);um=ip.sub(u,one);ym=ip.sub(y,one)
 J=ip.add(ip.sub(ip.add(ip.power(u,2,2),ip.mul(u,ip.power(y,2,2))),ip.scale(ip.mul(u,y),3)),y)
 A=ip.sub(ip.scale(ip.mul(ip.power(u,3,2),y),8),ip.scale(ip.mul(ip.power(um,2,2),ip.power(ym,3,2)),5))
 F0=ip.add(ip.add(ip.add(ip.scale(ip.mul(ip.power(u,2,2),ip.power(y,2,2)),2),ip.scale(ip.mul(ip.power(u,2,2),y),-6)),ip.scale(ip.power(u,2,2),5)),ip.add(ip.add(ip.scale(ip.mul(u,y),2),ip.scale(u,-4)),one))
 bf=load('certificates/branch_factors.json');B=p2(next(z['terms'] for z in bf['KN']['factors'] if z['degrees']==[9,10]))
 branches={'J':(J,7),'A5':(A,7),'B9':(B,11)}
 for name,(q,p) in branches.items():content_one(q,name)
 fields={name:Extension(p,irreducible_special(q,p,name)) for name,(q,p) in branches.items()}
 bq=load('certificates/branch_quotients.json')
 check('G4 constant divisible by J',coeff(gi[4],2,0)==ip.mul(J,p2(bq['G4_constant_over_J'])))
 check('G4 leading divisible by A5',coeff(gi[4],2,11)==ip.mul(A,p2(bq['G4_leading_over_A5'])))
 lead=ip.scale(ip.product(ip.power(u,4,2),ip.power(um,2,2),ip.power(y,4,2),ym,A),144)
 const=ip.scale(ip.product(ip.power(um,4,2),ip.power(ym,3,2),J,F0),-9)
 check('P5 leading-r identity',coeff(P5,2,5)==lead)
 check('P5 constant-r identity',coeff(P5,2,0)==const)
 # No vertical r-line, even over C, on the original u,y nonzero gates.
 for kind,target in [('J',J),('F0',F0)]:
  data=load(f'certificates/fiber_{kind}.json');a=p2(data['A']);b=p2(data['G']);p1=p2(data['p1'])
  check(kind+' vertical-fiber input binding',a==A and b==target and p1==coeff(P5,2,1))
  f=ip.unpack(data['f'],1);g=ip.unpack(data['g'],1)
  resultant_check(A,target,f,'Res(A5,'+kind+')')
  resultant_check(target,p1,g,'Res('+kind+',p1)')
  check(kind+' fiber resultants coprime over Q',rat_gcd(arr1(f),arr1(g))==[1])
 # Exact small KN resultant: N is linear, use evaluation at its root without division.
 n0=coeff(N,2,0);n1=coeff(N,2,1);assert ip.degree(N,2)==1 and ip.degree(K,2)==3
 # fixed Res(K,N) = n1^3 K(-n0/n1), for degree(K)=3.
 lhs={}
 for j in range(4):lhs=ip.add(lhs,ip.product(coeff(K,2,j),ip.power(ip.scale(n0,-1),j,2),ip.power(n1,3-j,2)))
 rhs=ip.const(2,int(bf['KN']['scalar']))
 for item in bf['KN']['factors']:rhs=ip.mul(rhs,ip.power(p2(item['terms']),item['power'],2))
 # odd degree gives the fixed Sylvester sign Res(K,N)=-n1^3*K(root)
 check('full exact Res_r(K,N) factorization',ip.scale(lhs,-1)==rhs)
 # Function-field specializations. Recompute all six residues, no stored point sampling claim.
 bg=load('certificates/branch_gcd.json');D=p3(load('inputs/R1_scale.json')['D'])
 for name,field in fields.items():
  polys=[field.spec(P5)]+[field.spec(gi[i]) for i in range(4,-1,-1)]
  check(name+' finite-extension source binding',polys==[[tuple(t) for t in p] for p in bg[name]['specialized_polynomials']])
  gd=field.gcd(polys[0],polys[1]);dn=field.spec(N);dd=field.spec(D)
  expected=0 if name=='A5' else 1 if name=='J' else 2
  check(name+' P5/G4 exact gcd degree',len(gd)-1==expected,{'prime':field.p,'field_degree':field.d,'input_degrees':[len(z)-1 for z in polys]})
  if name=='J':check('J common factor is forbidden r',gd==[field.zero,field.one])
  if name=='B9':
   check('B9 N linear leading nonzero',len(dn)==2 and dn[-1]!=field.zero)
   check('B9 gcd exactly N squared in test field',gd==field.pmul(field.monic(dn),field.monic(dn)))
   check('B9 N coprime D',len(field.gcd(dn,dd))==1)
   check('B9 N divides K in test field',not field.prem(field.spec(K),dn))
  for j,p in zip(range(3,-1,-1),polys[2:]):
   gd=field.gcd(gd,p);check(name+f' further G{j} gcd audit',len(gd)-1==expected)
 # Residual projected polynomials have no common plane factor.
 UU={i:p2(load(f'certificates/U{i}_exact.json')['terms']) for i in [4,3,2]}
 content_one(UU[4],'U4')
 p=32003;sp=[aty(UU[i],2,p) for i in [4,3,2]]
 check('U4 full u-degree retained mod 32003 at y=2',len(sp[0])-1==ip.degree(UU[4],0))
 check('U4 U3 U2 special gcd is one',gcd(gcd(sp[0],sp[1],p),sp[2],p)==[1],{'prime':p,'degrees':[len(z)-1 for z in sp]})
 # Check all LARGE exact resultant factorizations with complete bidegree grids
 # at distinct primes, plus a rigorous integer coefficient bound.
 projection=load('certificates/projections.json');total_points=0;projection_results=[]
 with tempfile.TemporaryDirectory(prefix='b699-r4-check-') as tmp:
  tmp=Path(tmp);exe=tmp/'verify_grid';compiler=os.environ.get('CXX','g++')
  compile_proc=subprocess.run([compiler,'-O2','-std=c++17',str(ROOT/'code/verify_grid.cpp'),'-o',str(exe)],capture_output=True,text=True,timeout=60)
  check('C++ exact grid checker compiled',compile_proc.returncode==0,{'compiler':compiler,'stderr':compile_proc.stderr})
  for i in [4,3,2]:
   rec=projection[str(i)];g=gi[i];exp=dict(rec['known_factors']);sc=int(rec['scalar'])
   m,n=ip.degree(P5,2),ip.degree(g,2);assert(m,n)==(5,11)
   det_deg=[n*ip.degree(P5,j)+m*ip.degree(g,j) for j in [0,1]]
   right_deg=[exp['u']+exp['u-1']+ip.degree(J,0)+ip.degree(A,0)+8*ip.degree(B,0)+ip.degree(UU[i],0),exp['y']+exp['y-1']+ip.degree(J,1)+ip.degree(A,1)+8*ip.degree(B,1)+ip.degree(UU[i],1)]
   bounds=[max(a,b) for a,b in zip(det_deg,right_deg)]
   det_norm=math.factorial(16)*l1(P5)**11*l1(g)**5
   right_norm=abs(sc)*2**(exp['u-1']+exp['y-1'])*l1(J)*l1(A)*l1(B)**8*l1(UU[i])
   primes=rec['primes'];M=math.prod(primes)
   check(f'E{i} distinct certified primes',len(set(primes))==len(primes) and all(prime(p) for p in primes))
   check(f'E{i} integer coefficient bound',M>det_norm+right_norm,{'modulus_bits':M.bit_length(),'difference_bound_bits':(det_norm+right_norm).bit_length(),'degree_bounds':bounds})
   text=f"{sc} {exp['u']} {exp['y']} {exp['u-1']} {exp['y-1']}\n"+''.join(serial_poly(z) for z in [P5,g,J,A,B,UU[i]])
   rows=[]
   for p in primes:
    proc=subprocess.run([str(exe),str(p),str(bounds[0]),str(bounds[1])],input=text,capture_output=True,text=True,timeout=60)
    if proc.returncode:raise RuntimeError(f'E{i} grid failed: '+proc.stderr)
    v=json.loads(proc.stdout);assert v['status']=='PASS' and v['grid_points']==(bounds[0]+1)*(bounds[1]+1)
    total_points+=v['grid_points'];rows.append(v)
   check(f'E{i} exact characteristic-zero factorization',True,{'primes':len(primes),'grid_points':sum(z['grid_points'] for z in rows),'matrix_order':16})
   projection_results.append({'index':i,'moduli':rows,'degree_bounds':bounds,'modulus':str(M),'difference_coefficient_abs_bound':str(det_norm+right_norm)})
 check('four working polynomial total degrees',[max(map(sum,p)) for p in [P5,gi[4],gi[3],gi[2]]]==[21,45,47,47])
 check('isolated normalized point bound arithmetic',21*45*47==44415)
 check('affine translation choice bound arithmetic',20*44415==888300)
 # Exact Q(sqrt(13)) identities for the optional positive-mu CUBIC barrier.
 def qa(a,b):return (a[0]+b[0],a[1]+b[1])
 def qm(a,b):return (a[0]*b[0]+13*a[1]*b[1],a[0]*b[1]+a[1]*b[0])
 def qs(a,n):return (n*a[0],n*a[1])
 c0=(Fraction(1,9),Fraction(-5,9));m0=(Fraction(-70,27),Fraction(26,27))
 qv=qa(qa(qm(qm(c0,c0),c0),qs(qm(c0,c0),4)),qa(qs(qm(m0,c0),5),qm(m0,m0)))
 check('CUBIC barrier exact quadratic-field zero',qv==(0,0))
 check('barrier derivative exact form',qa(qs(m0,2),qs(c0,5))==(Fraction(-125,27),Fraction(-23,27)))
 check('barrier minimal polynomial',qa(qa(qs(qm(m0,m0),27),qs(m0,140)),(-144,0))==(0,0))
 check('sqrt13 elementary rational bounds',3*3<13<4*4)

 print(json.dumps({'status':'PASS','checks':len(CHECKS),'checked':CHECKS,'large_grid_determinants':total_points,'projection_certificates':projection_results,'seconds':round(time.monotonic()-start,3),'proof_scope':'normalized general six-polynomial model is zero-dimensional on stated gates; no emptiness or original-input finiteness claim','lean_run':False,'external_independent_review':False},indent=2))
if __name__=='__main__':main()
