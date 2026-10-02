#!/usr/bin/env python3
"""R2 independent implementation: exact standard-library arithmetic only.
Adopts hash-bound R1 input coefficients, not their claimed provenance as a Lean proof.
Verifies new identities, all five complete low-residual transports, a 24x24
resultant identity by a degree-complete integer grid, and a nonzero eliminant.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import permutations
from math import factorial,isqrt
import hashlib,json,sys,time
sys.path.insert(0,str(Path(__file__).resolve().parent))
from sparse import Poly,unpack,ring
ROOT=Path(__file__).resolve().parents[1];PR=ROOT/'inputs/prior';t0=time.monotonic();checks=[]
def rd(p):return json.loads(p.read_text(encoding='utf-8'))
def ck(name,test):
 if not test:raise AssertionError(name)
 checks.append(name)
def announce(text):print(text,flush=True)
sources=rd(ROOT/'inputs/SOURCE_VERSIONS.json')
for name,h in sources['prior_input_hashes'].items():ck('frozen input '+name,hashlib.sha256((PR/name).read_bytes()).hexdigest()==h)
ck('prior archive SHA256',hashlib.sha256((ROOT/'inputs/PREVIOUS_EVIDENCE.zip').read_bytes()).hexdigest()==sources['previous_zip_sha256'])
r14=(ROOT/'inputs/R14_HANDOFF.md').read_bytes()
ck('R14 content addressing',hashlib.sha256(r14).hexdigest()==sources['R14_sha256'])
ck('R14 Git blob unchanged',hashlib.sha1(b'blob '+str(len(r14)).encode()+b'\0'+r14).hexdigest()==sources['R14_current_git_blob'])
announce('PASS: frozen source bytes; prior theorems not recomputed')
old=rd(PR/'certificates/scale.json');reg=rd(PR/'certificates/regular.json')['R'];core=rd(ROOT/'certificates/core.json')
p={n:unpack(v,4) for n,v in core['polys4'].items()};pp={n:unpack(v,3) for n,v in core['polys3'].items()}
o={n:unpack(old[n],4) for n in ['a','b','c','Q2','Q3','q','S','K','D','F','C','Cstar','eprime']}
u,y,r,L=ring(4);H,J,A,B,T,E=(p[n] for n in ['H','J','A','B','T','E'])
ck('H definition',H==u*u-u*y*y+3*u*y-2*u+(y-1)**2)
ck('J definition',J==u*u+u*y*y-3*u*y+y)
ck('A,B,T,E definitions',A==4*u*y*y*H and B==3*(u-1)*(y-1)**2*J and T==A*r-B and E==u*J-(u-1)*H)
ck('division-free exceptional identity I',(u-1)*o['S']-o['b']*o['K']==o['a']*(u-1)*T)
base=u*(u-1)*(o['D']/2)**2*o['Cstar']
ck('division-free exceptional identity II',o['c']*(o['Q3'].coeff(3,1)-o['q']*o['c'])-o['b']*o['Q3'].coeff(3,0)==base*(u-1)*T)
ck('Q3 decomposition (zero a retained)',o['Q3']==o['q']*L*o['Q2']+o['eprime']*L**2+(o['Q3'].coeff(3,1)-o['q']*o['c'])*L+o['Q3'].coeff(3,0))
ck('zero-a eprime relation',o['a']*o['Q3'].coeff(3,0)-o['eprime']*o['c']==base*o['K'])
ck('zero-ratio-coefficient identity',H-J==(1-2*u)*(y*y-3*y+1))
ck('H+J at u=1/2 positive', (H+J).substitute([F(1,2),y,r,L])==(2*y*y-2*y+1)/2)
ck('quadratic irrationality witness',isqrt(5)**2!=5)
announce('PASS: new linear ratio, including a=0 and the entire zero-coefficient branch')
U,Y,Z=ring(3);A3=A.substitute([U,Y,Poly(3),Z]);B3=B.substitute([U,Y,Poly(3),Z]);E3=E.substitute([U,Y,Poly(3),Z])
def clear_r(poly):
 n=poly.degree(2);out=Poly(3)
 for i in range(n+1):out+=poly.coeff(2,i).substitute([U,Y,Poly(3),Z])*B3**i*A3**(n-i)
 return out
ck('complete K substitution / curve',clear_r(o['K'])==48*U*U*Y*Y*(U-1)*E3*pp['Ccurve'])
ck('D substitution / nonzero E',clear_r(o['D'])==24*U*Y*Y*(U-1)*(Y-1)**2*E3)
ck('Q2 ratio substitution',clear_r(o['Q2'])==576*U**3*(U-1)**2*Y**2*(Y-1)**2*pp['F2'])
ck('a ratio substitution',clear_r(o['a'])==576*U**3*(U-1)**2*Y**2*(Y-1)**2*pp['Acal'])
ck('Acal is exact quadratic leading coefficient',pp['F2'].coeff(2,2)==pp['Acal'])
announce('PASS: whole exception lies on Ccurve; no forbidden factor cancelled')
N=L*o['F']+o['C'];DD=L*o['D'];low={}
for i in range(4,-1,-1):
 ri=unpack(reg[str(i)]['terms'],5);dd=core['low'][str(i)];raw=Poly(4)
 for j in range(ri.degree(0)+1):
  chunk=ri.coeff(0,j).substitute([Poly(4),u,y,L,r*L])
  raw+=N**j*DD**(ri.degree(0)-j)*chunk
 qi=unpack(dd['Q'],4);low[i]=qi
 ck('all-source low residual R'+str(i),dd['w_degree']==ri.degree(0)==4 and dd['L_power']==4 and raw==dd['unit']*L**4*qi)
 announce('PASS: full R'+str(i)+' transported with its exact denominator and scalar')
ck('Q4 ratio substitution',clear_r(low[4])==5308416*U**7*(U-1)**4*Y**2*(Y-1)**2*pp['F4'])

def det_int(mat):
 a=[list(map(int,row)) for row in mat];n=len(a);sign=1;prev=1
 if n==0:return 1
 for k in range(n-1):
  if not a[k][k]:
   pivot=next((i for i in range(k+1,n) if a[i][k]),None)
   if pivot is None:return 0
   a[k],a[pivot]=a[pivot],a[k];sign=-sign
  pivot=a[k][k]
  for i in range(k+1,n):
   ai=a[i];q=ai[k]
   for j in range(k+1,n):
    v=ai[j]*pivot-q*a[k][j]
    if v%prev:raise AssertionError('Bareiss non-exact division')
    ai[j]=v//prev
   ai[k]=0
  prev=pivot
 return sign*a[-1][-1]
def sylvester(p,q):
 m=len(p)-1;n=len(q)-1;size=m+n;rows=[]
 for j in range(n):rows.append([0]*j+list(reversed(p))+[0]*(n-1-j))
 for j in range(m):rows.append([0]*j+list(reversed(q))+[0]*(m-1-j))
 assert all(len(row)==size for row in rows)
 return rows
az=rd(ROOT/'certificates/a_zero.json');C=pp['Ccurve'];AC=pp['Acal'];P78=unpack(az['P78'],1)
ck('Ccurve exact bidegrees',tuple(C.degree(i) for i in range(3))==(9,10,0))
ck('Acal exact bidegrees',tuple(AC.degree(i) for i in range(3))==(15,16,0))
ck('A0 identity verification degree bound',az['degree_bound_y']==9*16+15*10==294)
points=az['evaluation_points'];ck('complete identity interpolation grid',len(set(points))==295 and len(points)==295)
cp={i:C.coeff(0,i) for i in range(10)};ap={i:AC.coeff(0,i) for i in range(16)}
for idx,v in enumerate(points):
 p0=[int(cp[i].evaluate([0,v,0])) for i in range(10)];q0=[int(ap[i].evaluate([0,v,0])) for i in range(16)]
 expected=az['factor_scalar']*v**48*(v-1)**70*(2*v*v-2*v+1)**8*(v*v-3*v+1)**16*int(P78.evaluate([v]))
 ck('A0 24x24 Sylvester identity y='+str(v),det_int(sylvester(p0,q0))==expected)
 if idx%50==0:announce('A0 full resultant identity: '+str(idx+1)+'/295 exact evaluations')
ck('P78 degree and leading modulo 11',P78.degree(0)==78 and int(P78.d[(78,)])%11==az['P78_lc_mod11']==8)
vals=[int(P78.evaluate([i]))%11 for i in range(11)]
ck('P78 full finite-field root obstruction',vals==az['P78_mod11_values'] and 0 not in vals)
announce('PASS: complete rational a=0 exception excluded (not only sampled)')
# Integer template of Res_L(F2,F4), reconstructed from every determinant term.
sp=rd(ROOT/'certificates/finite_exception_specialization.json');mat=[]
for j in range(4):mat.append([None]*j+[2,1,0]+[None]*(3-j))
for j in range(2):mat.append([None]*j+[7,6,5,4,3]+[None]*(1-j))
template={}
for perm in permutations(range(6)):
 if any(mat[i][perm[i]] is None for i in range(6)):continue
 m=[0]*8
 for i in range(6):m[mat[i][perm[i]]]+=1
 sign=(-1)**sum(perm[i]>perm[j] for i in range(6) for j in range(i+1,6));m=tuple(m)
 template[m]=template.get(m,0)+sign
template={m:c for m,c in template.items() if c}
ck('exact 22-term resultant template',template=={tuple(m):int(c) for m,c in sp['resultant_template']})
prime=sp['p'];uv=sp['u'];ck('specialization prime',prime==7 and all(prime%d for d in range(2,isqrt(prime)+1)))
def trim(a):
 while a and a[-1]==0:a.pop()
 return a
def padd(a,b):
 c=[0]*max(len(a),len(b))
 for i,v in enumerate(a):c[i]=(c[i]+v)%prime
 for i,v in enumerate(b):c[i]=(c[i]+v)%prime
 return trim(c)
def pmul(a,b):
 c=[0]*(len(a)+len(b)-1) if a and b else []
 for i,v in enumerate(a):
  for j,w in enumerate(b):c[i+j]=(c[i+j]+v*w)%prime
 return trim(c)
def prem(a,b):
 a=list(a);iv=pow(b[-1],-1,prime)
 while a and len(a)>=len(b):
  shift=len(a)-len(b);cf=a[-1]*iv%prime
  for i,v in enumerate(b):a[i+shift]=(a[i+shift]-cf*v)%prime
  trim(a)
 return a
def mpow(a,k,mod):
 result=[1]
 for _ in range(k):result=prem(pmul(result,a),mod)
 return result
def evspec(poly,power):
 co=[0]*(poly.degree(1)+1)
 for (uu,yy,ll),c in poly.d.items():
  if ll==power:co[yy]=(co[yy]+int(c.numerator)*pow(int(c.denominator),-1,prime)*pow(uv,uu,prime))%prime
 return trim(co)
def frompack(terms):
 co=[0]*(max((m[0] for m,c in terms),default=-1)+1)
 for m,c in terms:co[m[0]]=int(c)%prime
 return trim(co)
Cmod=evspec(C,0);F2,F4=pp['F2'],pp['F4'];vs=[prem(evspec(F2,i),Cmod) for i in range(3)]+[prem(evspec(F4,i),Cmod) for i in range(5)]
rr=[]
for m,c in template.items():
 term=[c%prime]
 for i,e in enumerate(m):
  if e:term=prem(pmul(term,mpow(vs[i],e,Cmod)),Cmod)
 rr=prem(padd(rr,term),Cmod)
ck('Ccurve full degree at specialization',len(Cmod)==11 and Cmod[-1]==1 and Cmod==frompack(sp['C']))
ck('full R4 resultant mod Ccurve',rr==frompack(sp['resultant_mod_C']))
ck('explicit Bezout identity proving coprimality',padd(pmul(frompack(sp['bezout_res']),rr),pmul(frompack(sp['bezout_C']),Cmod))==[1])
ck('Ccurve y-leading nonzero on u(u-1)!=0',C.coeff(1,10)==9*U**2*(U-1)**4)
ck('F2,F4 degrees',tuple(F2.degree(i) for i in range(3))==(15,20,2) and tuple(F4.degree(i) for i in range(3))==(29,42,4))
bounds=rd(ROOT/'certificates/finite_bounds.json');nc,n2,n4=(sum(abs(int(v)) for v in po.d.values()) for po in [C,F2,F4]);br=factorial(6)*n2**4*n4**2;be=factorial(174)*nc**164*br**10
ck('resultant degree bounds and finite tuple count',4*15+2*29==118 and 4*20+2*42==164 and 164*9+10*118==bounds['E_degree_u_bound']==2656 and 2656*10*2==bounds['normalized_rational_tuple_bound']==53120)
ck('complete eliminant height bound',nc==bounds['C_l1'] and n2==bounds['F2_l1'] and n4==bounds['F4_l1'] and br.bit_length()==bounds['R_bound_bit_length'] and be.bit_length()==bounds['E_bound_bit_length']==6420)
announce('PASS: explicit nonzero eliminant, <=53120 rational normalized exceptional tuples, height(u)<2^6420')
print(json.dumps({'status':'PASS','checks':len(checks),'elapsed_seconds':round(time.monotonic()-t0,3),'a0_resultant_exact_evaluations':295,'new_full_low_residuals_verified':5,'finite_normalized_tuple_bound':53120,'u_height_power2_exponent':6420,'proof_level':'author paper + exact stdlib checker; no Lean, no external independent review','not_established':['exception full emptiness','finite terminal enumeration','full REG4 emptiness','original n,j absolute height','new complete i index'],'checked':checks},ensure_ascii=False,indent=2),flush=True)
