#!/usr/bin/env python3
"""New exact acceptance, Python standard library only.
Does NOT import discovery code. Complete gates use different interpolation pivots,
Newton forward differences reconstruct H0; finite-field witnesses only certify
NONZERO integer minors, and every surviving rational affine solution is checked.
"""
from __future__ import annotations
import argparse,json,math,time
from pathlib import Path
from fractions import Fraction as Q
from itertools import combinations_with_replacement,product
from collections import Counter,defaultdict
ROOT=Path(__file__).resolve().parents[1]
RR=tuple(range(3,9));VV={r:tuple(s*(r-s) for s in range(r//2+1)) for r in RR}
FD=(-1,5,-10,10,-5,1)
PIV={3:(4,5,7),4:(3,6,7),5:(3,4,8),6:(3,5,8),7:(3,4,6),8:(3,5,7)}
def need(b,msg):
 if not b:raise AssertionError(msg)
def write(p,obj):p.write_text(json.dumps(obj,separators=(',',':'),sort_keys=True)+'\n')
def mul(A,B):
 C=defaultdict(int)
 for (a,b),v in A.items():
  for (c,d),w in B.items():C[a+c,b+d]+=v*w
 return {k:v for k,v in C.items() if v}
def add(A,B):
 C=dict(A)
 for k,v in B.items():C[k]=C.get(k,0)+v
 return {k:v for k,v in C.items() if v}
def enc(v):return [[Q(x).numerator,Q(x).denominator] for x in v]
def key(c):return (c['h'],tuple(tuple(x) for x in c['roots']),c['lambda'])
def row_poly(rt):
 c=[1]
 for v in rt:
  d=[0]*(len(c)+1)
  for i,x in enumerate(c):d[i]-=v*x;d[i+1]+=x
  c=d
 return c

def all_gates(q,rows):
 """Finite complete root gate, indexed by S and E2; independent pivot choices."""
 tables={}
 for r in RR:
  dd=defaultdict(list)
  for rt in combinations_with_replacement(VV[r],q):
   S=sum(rt);E=(S*S-sum(x*x for x in rt))//2
   dd[S].append((rt,E,len(set(rt))))
  tables[r]=dd
 result=set();stats=[]
 for h in rows:
  good=tuple(r for r in RR if r!=h);piv=PIV[h];weights={}
  need(h not in piv and len(set(piv))==3,'bad independent pivots')
  for r in RR:
   ww=[Q(math.prod(r-t for t in piv if t!=s),math.prod(s-t for t in piv if t!=s)) for s in piv]
   den=math.lcm(*(x.denominator for x in ww));weights[r]=(den,tuple(int(x*den) for x in ww))
  low=[]
  for rt in combinations_with_replacement(VV[h],q-1):
   S=sum(rt);low.append((rt,S,(S*S-sum(x*x for x in rt))//2,len(set(rt))))
  cache={};cnt=Counter();forced=Counter()
  for ss in product(*(tuple(tables[r]) for r in piv)):
   sums={}
   for r in RR:
    den,ww=weights[r];val,rem=divmod(sum(a*b for a,b in zip(ss,ww)),den)
    if rem or (r!=h and val not in tables[r]):break
    sums[r]=val
   if len(sums)!=6:continue
   sh=sums[h]
   if sh not in cache:
    dd=defaultdict(list)
    for rt,S,E,z in low:
     lam=sh-S
     # A new distinct source root would force ordinary capacity >=q.
     if lam in VV[h] and lam not in rt:continue
     dd[E+lam*S].append((rt,z,lam))
    cache[sh]=dd
   for choices in product(*(tables[r][sums[r]] for r in good)):
    zsum=sum(x[2] for x in choices)
    if zsum+len(VV[h])<14:continue
    target,rem=divmod(-sum(FD[r-3]*x[1] for r,x in zip(good,choices)),FD[h-3])
    if rem:continue
    for rt,z,lam in cache[sh].get(target,()):
     if zsum+z<14:continue
     rd=dict(zip(good,(x[0] for x in choices)));rd[h]=rt
     roots=tuple(rd[r] for r in RR);cnt['complete_gates']+=1
     sumsline=[sum(row.count(t*(r-t)) for r,row in zip(RR,roots)) for t in range(5)]
     t=next((t for t,s in enumerate(sumsline) if s>2*q),None)
     if t is not None:forced[t]+=1;continue
     kk=(h,roots,lam);need(kk not in result,'duplicate full residual gate');result.add(kk);cnt['residuals']+=1
  stats.append({'h':h,**dict(cnt),'forced':dict(forced),'pivots':piv})
 return result,stats

class Model:
 def __init__(self,q):
  self.q=q;D=2*q-6
  self.mons=tuple((a,b) for b in range(D//2+1) for a in range(D-2*b+1));self.nc=len(self.mons)
  self.W={(0,0):1}
  for r in RR:self.W=mul(self.W,{(1,0):1,(0,0):-r})
  self.basis=[{(a+i,b+j):v for (i,j),v in self.W.items()} for a,b in self.mons]
  self.cache={};self.rowcache={};self.NB=[];p={(0,0):1}
  for k in range(6):
   need(120%math.factorial(k)==0,'Newton denominator')
   self.NB.append({z:c*(120//math.factorial(k)) for z,c in p.items()})
   p=mul(p,{(1,0):1,(0,0):-(3+k)})
 def H0(self,roots):
  vals=[]
  for rt in roots:
   if rt not in self.rowcache:self.rowcache[rt]=row_poly(rt)
   vals.append(self.rowcache[rt])
  H={}
  for b in range(self.q+1):
   seq=[v[b] for v in vals]
   for k in range(6):
    if seq[0]:H=add(H,{(a,b):c*seq[0] for (a,_),c in self.NB[k].items()})
    seq=[seq[i+1]-seq[i] for i in range(len(seq)-1)]
  need(H.get((0,self.q))==120,'monic normalization')
  need(max(a+2*b for a,b in H)==2*self.q,'weighted coefficient interpolation')
  return H
 @staticmethod
 def jet(poly,label):
  r,v,i,j=label
  return sum(c*math.comb(a,i)*math.comb(b,j)*r**(a-i)*v**(b-j) for (a,b),c in poly.items() if a>=i and b>=j)
 def build(self,c):
  roots=tuple(tuple(sorted((*rt,c['lambda']))) if r==c['h'] else tuple(rt) for r,rt in zip(RR,c['roots']))
  H0=self.H0(roots);labels=[];mat=[]
  for r,rt in zip(RR,c['roots']):
   for v,m in sorted(Counter(rt).items()):
    for i in range(1,m):
     for j in range(m-i):
      z=(r,v,i,j);labels.append(z)
      if z not in self.cache:self.cache[z]=[self.jet(p,z) for p in self.basis]
      mat.append(self.cache[z]+[-self.jet(H0,z)])
  return labels,mat,H0
 def assemble(self,H0,x):
  p=dict(H0)
  for v,b in zip(x,self.basis):
   if v:p=add(p,{k:v*c for k,c in b.items()})
  return p

def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def det_mod(A,p):
 n=len(A);need(all(len(r)==n for r in A),'minor not square');a=[[x%p for x in row] for row in A];d=1
 for k in range(n):
  i=next((i for i in range(k,n) if a[i][k]),None)
  if i is None:return 0
  if i!=k:a[i],a[k]=a[k],a[i];d=-d
  piv=a[k][k];d=d*piv%p;iv=pow(piv,-1,p)
  for i in range(k+1,n):
   if not a[i][k]:continue
   z=a[i][k]*iv%p
   for j in range(k+1,n):a[i][j]=(a[i][j]-z*a[k][j])%p
 return d%p

def bareiss(A):
 a=[r[:] for r in A];n=len(a);prev=1;sgn=1
 for k in range(n-1):
  i=next((i for i in range(k,n) if a[i][k]),None)
  if i is None:return 0
  if i!=k:a[k],a[i]=a[i],a[k];sgn=-sgn
  piv=a[k][k]
  for i in range(k+1,n):
   for j in range(k+1,n):
    v=a[i][j]*piv-a[i][k]*a[k][j];z,rem=divmod(v,prev);need(rem==0,'Bareiss exact division');a[i][j]=z
   a[i][k]=0
  prev=piv
 return sgn*a[-1][-1] if n else 1

def subline(P,t):
 o=defaultdict(int)
 for (a,b),c in P.items():
  for j in range(b+1):o[a+j]+=c*math.comb(b,j)*t**j*(-t*t)**(b-j)
 return {k:v for k,v in o.items() if v}
def primitive(P):
 den=math.lcm(*(Q(c).denominator for c in P.values()));p={k:int(c*den) for k,c in P.items()};g=math.gcd(*p.values())
 return {k:c//g for k,c in p.items()}
def profile(P,q):
 """All source zeros, actual ordinary multiplicities, not specialized substitutes."""
 rows=[];nz=0
 for r in RR:
  points=[]
  for v in VV[r]:
   if Model.jet(P,(r,v,0,0)):
    points.append([v,0]);continue
   e=None
   for m in range(1,q+1):
    if any(Model.jet(P,(r,v,i,m-i)) for i in range(m+1)):e=m;break
   need(e is not None,'multiplicity exceeds nonzero degree-q specialization');points.append([v,e]);nz+=1
  rows.append({'r':r,'points':points,'mu':sum(x[1] for x in points)})
 return {'z':nz,'mu':sum(row['mu'] for row in rows),'rows':rows}
def bernstein(P,q):
 norm=sum(abs(x) for x in P.values());a=[Q(P.get((2*q-2*i,i),0),4**i) for i in range(q+1)]
 B=[sum(a[i]*Q(math.comb(j,i),math.comb(q,i)) for i in range(j+1)) for j in range(q+1)]
 sign=1 if all(x>0 for x in B) else -1 if all(x<0 for x in B) else 0
 need(sign!=0,'no uniform sign certificate');low=min(sign*x for x in B)
 bound=0
 while low*2**bound<=norm:bound+=1
 need(bound<14000001,'cannot close original NC entry')
 # Independent polynomial re-expansion of Bernstein basis.
 coeff=[Q(0)]*(q+1)
 for j,b in enumerate(B):
  for i in range(q-j+1):coeff[i+j]+=b*math.comb(q,j)*math.comb(q-j,i)*(-1)**i
 need(coeff==a,'Bernstein identity mismatch')
 return {'l1':norm,'bernstein':enc(B),'sign':sign,'leading_abs_lower':[low.numerator,low.denominator],'n_threshold_exponent':bound}

def verify_one(q,part,out):
 start=time.monotonic();rows=(3,4,5) if part=='front' else (6,7,8)
 name=f'nf{6*q-1}_{"front" if part=="front" else "z14"}'
 cert=json.loads((ROOT/f'evidence/{name}_certificate.json').read_text());actual,stats=all_gates(q,rows)
 keys=[key(c) for c in cert];need(len(keys)==len(set(keys)),'duplicate certificate');need(set(keys)==actual,'root gate omission/insertion')
 m=Model(q);counts=Counter();res=[];detdata=[];exact=[];maxrows=0
 for index,c in enumerate(cert):
  labs,A,H0=m.build(c);maxrows=max(maxrows,len(A));rr=c['pivot_rows'];cc=c['pivot_columns'];n=len(cc)
  need(len(set(rr))==len(rr)==n and len(set(cc))==n,'bad minor indices')
  need(all(0<=i<len(A) for i in rr) and all(0<=j<=m.nc for j in cc),'minor out of bounds')
  minor=[[A[i][j] for j in cc] for i in rr]
  p=1000033;need(prime(p),'prime modulus');d=det_mod(minor,p)
  if d==0:p=1000003;need(prime(p),'fallback prime');d=det_mod(minor,p)
  need(d!=0,'not a NONZERO integer minor witness');detdata.append([index,n,p,d])
  if len(exact)<1 or n<m.nc+1:
   det=bareiss(minor);need(det%p==d and det!=0,'integer-minor crosscheck');exact.append({'index':index,'order':n,'determinant':str(det)})
  if n==m.nc+1:
   need(cc==list(range(m.nc+1)),'full augmented column set');need('base' not in c,'inconsistent affine data');counts['inconsistent']+=1;continue
  need(all(j<m.nc for j in cc),'singular unresolved augmented pivot')
  if 'base' not in c:
   # The sole tail exception is a fully explicit polynomial, no CAS needed.
   need(q==9 and part=='tail' and index==1246 and n==m.nc,'unresolved exact system')
   P=mul({(0,1):1,(2,0):-1,(1,0):9,(0,0):-20},{(0,0):1})
   for t in range(4):
    ell={(0,1):1,(1,0):-t,(0,0):t*t};P=mul(P,mul(ell,ell))
   full=tuple(tuple(sorted((*rt,c['lambda']))) if r==c['h'] else tuple(rt) for r,rt in zip(RR,c['roots']))
   for r,rt in zip(RR,full):
    spec=[sum(x*r**a for (a,j),x in P.items() if j==b) for b in range(q+1)];need(spec==row_poly(rt),'tail explicit row mismatch')
   need(all(m.jet(P,z)==0 for z in labs),'tail explicit jets');pr=profile(P,q);need(pr['mu']==53 and pr['z']>=14,'tail exact profile');counts['explicit_reducible']+=1
   res.append({'index':index,'kind':'Lstar times ell0^2 ell1^2 ell2^2 ell3^2','profile':pr});continue
  base=[Q(*x) for x in c['base']];directions=[[Q(*v) for v in x] for x in c['directions']]
  need(len(base)==m.nc and all(len(v)==m.nc for v in directions),'affine width')
  need(n+len(directions)==m.nc,'affine dimension mismatch')
  free=[j for j in range(m.nc) if j not in cc]
  need([[v[j] for j in free] for v in directions]==[[int(i==j) for j in range(len(free))] for i in range(len(free))],'affine directions not independent')
  for a in A:
   need(sum(Q(x)*y for x,y in zip(a[:-1],base))==a[-1],'affine base does not solve ALL equations')
   for v in directions:need(sum(Q(x)*y for x,y in zip(a[:-1],v))==0,'affine direction not in complete kernel')
  counts['rational_row_equations']+=len(A)*(1+len(directions))
  P=m.assemble(H0,base);dirs=[m.assemble({},v) for v in directions]
  fs=[t for t in range(5) if not subline(P,t) and all(not subline(p,t) for p in dirs)]
  need(fs==c['line_factors'],'common factor verification mismatch')
  if fs:
   counts['reducible_affine_families']+=1;res.append({'index':index,'kind':'reducible_affine','dimension':len(directions),'common_linear_factors':fs});continue
  if directions:
   need(q==9 and part=='front' and index==3715 and len(directions)==1,'unexpected free irreducible boundary')
   # Its six fixed specializations have lambda=18 outside V3, hence all
   # parameters have exactly the prescribed ordinary capacity (no genericity).
   need(c['h']==3 and c['lambda']==18,'new family source boundary')
   P={k:v/Q(120) for k,v in P.items()};D={k:v/Q(120) for k,v in dirs[0].items()}
   # Checking two members + fixed jets records structure, not universal irred.
   pr0=profile(P,q);pr1=profile(add(P,D),q)
   need(pr0['mu']==53 and pr1['mu']==53 and pr0['z']>=14 and pr1['z']>=14,'q9 family sample inconsistency')
   item={'index':index,'kind':'one_rational_parameter_boundary','base_terms':[[a,b,Q(v).numerator,Q(v).denominator] for (a,b),v in sorted(P.items())],'direction_terms':[[a,b,Q(v).numerator,Q(v).denominator] for (a,b),v in sorted(D.items())],'profile_at_0':pr0,'profile_at_1':pr1}
   counts['unclosed_parameter_families']+=1;res.append(item);continue
  P=primitive(P);pr=profile(P,q);need(pr['z']>=14 and pr['mu']==6*q-1,'isolated exception actual source profile')
  B=bernstein(P,q);counts['isolated_large_point_nonvanishing']+=1
  res.append({'index':index,'kind':'fixed_large_point_nonvanishing','terms':[[a,b,x] for (a,b),x in sorted(P.items())],'profile':pr,**B})
 summary={'q':q,'part':part,'gates':stats,'residual_systems':len(cert),'parameters':m.nc,'maximum_rows':maxrows,'counts':dict(counts),'exception_details':res,'modular_nonzero_minors':detdata,'integer_minor_crosschecks':exact}
 write(out/f'{name}_accepted.json',summary)
 print('ACCEPT',name,'systems',len(cert),'counts',dict(counts),'seconds',round(time.monotonic()-start,3),flush=True)
 return summary

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--q',nargs='+',type=int,default=[6,7,8,9]);args=ap.parse_args();args.out.mkdir(parents=True,exist_ok=True)
 for q in args.q:
  verify_one(q,'front',args.out)
  if q!=6:verify_one(q,'tail',args.out)
if __name__=='__main__':main()
