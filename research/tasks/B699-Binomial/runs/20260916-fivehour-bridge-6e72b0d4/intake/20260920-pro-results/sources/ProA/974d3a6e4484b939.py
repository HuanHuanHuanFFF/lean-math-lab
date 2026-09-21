"""Exact auxiliary counterexample to the NF77 kappa6>=1 proposal.
Irreducibility is certified by a degree-preserving finite-field specialization.
This is NOT a binomial-conjecture counterexample, nor a claim H divides G.
"""
from fractions import Fraction as F
import json,math
from pathlib import Path
from accept_core import loadpoly,packpoly,isprime,enc,tangent_jet
from check_families import combine
PTH=Path(__file__).resolve().parents[1]
def trim(a):
 while a and a[-1]==0:a.pop()
 return a

def rem(a,b,p):
 a=trim([x%p for x in a]);b=trim([x%p for x in b]);iv=pow(b[-1],-1,p)
 while len(a)>=len(b):
  c=a[-1]*iv%p;k=len(a)-len(b)
  for j,x in enumerate(b):a[k+j]=(a[k+j]-c*x)%p
  trim(a)
 return a

def mul(a,b,f,p):
 c=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%p
 return rem(c,f,p)

def pw(a,n,f,p):
 z=[1]
 while n:
  if n&1:z=mul(z,a,f,p)
  a=mul(a,a,f,p);n//=2
 return z

def gcd(a,b,p):
 while b:a,b=b,rem(a,b,p)
 return [x*pow(a[-1],-1,p)%p for x in a]

def subx(a,p):
 a=a+[0]*max(0,2-len(a));a[1]=(a[1]-1)%p;return trim(a)

def rabin(f,p):
 n=len(f)-1;x=[0,1];a=x;powers=[];divs=[l for l in range(2,n+1) if n%l==0 and isprime(l)]
 for k in range(1,n+1):
  a=pw(a,p,f,p);powers.append(a)
  if any(k==n//l for l in divs) and gcd(f,subx(a[:],p),p)!=[1]:return None
 if a!=x:return None
 return powers

def specialize(P,N0,p,q):
 f=[0]*(q+1)
 for (a,b),c in P.items():f[b]=(f[b]+c.numerator*pow(c.denominator,-1,p)*pow(N0,a,p))%p
 return trim(f)

def discover():
 fs=json.loads((PTH/'evidence/nf13_candidate_families.json').read_text())['solutions'];fam=next(x for x in fs if x['index']==4599);Ps=list(map(loadpoly,fam['polynomials']))
 t=F(-9041328,34375);params=[F(-29304,625)+F(3,10)*t,t,F(162864,625),F(-4572,5)];H=combine(Ps,params);q=13
 for N0 in range(10):
  for p in range(2,501):
   if not isprime(p) or any(c.denominator%p==0 for c in H.values()):continue
   f=specialize(H,N0,p,q)
   if len(f)!=q+1:continue
   powers=rabin(f,p)
   if powers is None:continue
   out={'family_index':4599,'parameter_t':enc(t),'parameters':[enc(x) for x in params],'polynomial':packpoly(H),'q':q,'N_specialization':N0,'prime':p,'finite_field_polynomial':f,'frobenius_chain':powers,'claim':'Q[N,X]-irreducible NF77 member; kappa6=0; not NC9 or H|G'}
   (PTH/'evidence/nf77_irreducible_low6_boundary.json').write_text(json.dumps(out,sort_keys=True,separators=(',',':'))+'\n');print('EXACT_IRREDUCIBLE_NF77_LOW6',N0,p,params,flush=True);return
 raise RuntimeError('No finite-field irreducibility witness in this explicitly bounded search; no claim.')

def verify(cert):
 H=loadpoly(cert['polynomial']);q=cert['q'];p=cert['prime'];assert isprime(p) and H.get((0,q))==1 and max(a+2*b for a,b in H)==2*q
 fs=json.loads((PTH/'evidence/nf13_candidate_families.json').read_text())['solutions'];fam=next(x for x in fs if x['index']==cert['family_index']);Ps=list(map(loadpoly,fam['polynomials']));params=[F(*x) for x in cert['parameters']];assert combine(Ps,params)==H
 f=specialize(H,cert['N_specialization'],p,q);assert len(f)==q+1 and f==cert['finite_field_polynomial'];assert rabin(f,p)==cert['frobenius_chain']
 ms=[];ws=[]
 for s in (2,3,4):
  m=fam['record']['roots'][2*s-3].count(s*s);ms.append(m)
  w=next(w for w in range(m,2*m+1) if any(tangent_jet(H,s,w-2*j,j) for j in range(w//2+1)));ws.append(w)
 assert [2*m-w for m,w in zip(ms,ws)]==[4,0,1]
 return {'status':'PASS_EXACT_AUXILIARY_IRREDUCIBLE_COUNTEREXAMPLE','index':cert['family_index'],'prime':p,'N0':cert['N_specialization'],'kappa':[4,0,1],'ordinary_diagonal':ms,'weighted_diagonal':ws,'not_a_B699_counterexample':True,'H_divides_G_not_asserted':True}
if __name__=='__main__':discover()
