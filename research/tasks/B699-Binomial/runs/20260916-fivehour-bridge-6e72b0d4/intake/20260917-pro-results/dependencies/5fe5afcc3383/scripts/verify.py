#!/usr/bin/env python3
"""Reproduce exact algebra certificates and bounded original-binomial regressions.
The unrestricted statements are proved in PROOFS.md, not inferred from these tests.
"""
from __future__ import annotations
import json, math, platform, time
from pathlib import Path
import sympy as sp

OUT = Path(__file__).resolve().parents[1] / 'verification'
OUT.mkdir(exist_ok=True)
t0=time.monotonic()
res={'python':platform.python_version(), 'sympy':sp.__version__}

h,A,u,L,Q=sp.symbols('h A u L Q')
w=u*(A-u); d=2*u-A
f=(h+u)*(h+u-A)
f2=(h+2*u)*(h+2*u-A)*(h+2*u-2*A)
R=(Q-3*L*w)*h+2*d*(Q-L*w)
assert sp.expand(L*f2-(h+4*u-2*A)*(L*f-Q)-R)==0
T,x=sp.symbols('T x')
a=T-1
C=6*((sp.Rational(3,4)*a*a+a)*T*a+2*(a*a/4+a))
poly=sp.expand(2*(T**5-C))
shift=sp.Poly(poly.subs(T,x+5),x)
assert all(c>0 for c in shift.all_coeffs())
res['algebra']={'elimination_identity':'PASS','positivity_polynomial':str(poly),
 'shift_at_5_coefficients_descending':[int(c) for c in shift.all_coeffs()]}

zero_cases=0
for t in range(5,102,2):
 for a in range(1,t):
  for uu in range(1,a//2+1):
   ww=uu*(a-uu); dd=2*uu-a
   for lam in (1,3):
    for qq in range((lam*ww)%t or t,lam*a,t):
     coef=qq-3*lam*ww; const=2*dd*(qq-lam*ww)
     assert coef != 0
     root=sp.Rational(-const,coef)
     assert 0 <= root < t
     assert not (root.q==1 and int(root)!=0 and int(root)%t==0)
     zero_cases+=1
res['zero_branch_scalar_regression']={'odd_T':'5..101','cases':zero_cases,'status':'PASS'}

# A direct original-definition check: no carrying oracle is used here.
pairs=0
for n in range(8,1001):
 c3=math.comb(n,3)
 cj=1
 for j in range(1,n//2+1):
  cj=cj*(n-j+1)//j
  if j>=4:
   gg=math.gcd(c3,cj)
   while gg%2==0: gg//=2
   assert gg>1,(n,j)
   pairs+=1
res['direct_original_binomials']={'n':'8..1000','j':'all 4..floor(n/2)',
 'pairs':pairs,'status':'PASS'}

def factor_c3(n:int)->list[int]:
 fs:dict[int,int]={}
 for z in (n,n-1,n-2):
  for p,e in sp.factorint(z).items(): fs[int(p)]=fs.get(int(p),0)+int(e)
 fs[2]=fs.get(2,0)-1;fs[3]=fs.get(3,0)-1
 return sorted(p for p,e in fs.items() if p>=3 and e>0)

def vp_binomial(n:int,j:int,p:int)->int:
 q=p;ans=0
 while q<=n:
  ans+=n//q-j//q-(n-j)//q
  q*=p
 return ans

rows={}
for t in (3,5,7,9,11,25,27):
 digits=range(1,t) if t<=11 else sorted({1,2,t//2,t-1})
 for e in range(2,7):
  for fexp in range(1,e):
   for a in digits:
    for b in digits:
     n=a*t**e+b*t**fexp
     rows.setdefault(n,(t,a,b,e,fexp))
rr=0;pp=0;maxn=0;exact=0
for n,(t,a,b,e,ff) in rows.items():
 if n<8:continue
 ps=factor_c3(n)
 if n<=1600:
  js=range(4,n//2+1)
 else:
  # All integer digit-box candidates, a superset of carry-free base-p candidates.
  js={t**ff*(uu*t**(e-ff)+vv) for uu in range(a+1) for vv in range(b+1)}
  js.update([4,5,6,7,n//2,max(4,n//3),max(4,n//5)])
  js=sorted(j for j in js if 4<=j<=n//2)
 for j in js:
  witness=next((p for p in ps if vp_binomial(n,j,p)>0),None)
  assert witness is not None,(n,j,t,a,b,e,ff)
  if n<=1600:
   assert math.comb(n,3)%witness==0 and math.comb(n,j)%witness==0
   exact+=1
  pp+=1
 rr+=1;maxn=max(maxn,n)
res['prime_power_base_family_regression']={
 'bases':[3,5,7,9,11,25,27],'E':'2..6','F':'1..E-1',
 'digits':'all for T<=11; {1,2,floor(T/2),T-1} for T=25,27',
 'distinct_rows':rr,'tested_pairs':pp,'pairs_also_checked_by_direct_comb':exact,
 'max_n':maxn,'status':'PASS',
 'scope':'For n<=1600 all legal j. Otherwise all digit-box j plus deterministic extra samples. Finite regression, not the infinite proof.'}

# Exact two-window first-window models: X is not required to be a power of T.
models=[];modelcount=0
for t in (5,7,9,11,13):
 for a in range(1,t):
  for b in range(1,t):
   for uu in range(a//2+1):
    for vv in range(b+1):
     hh=t*(a*vv-b*uu)
     if hh==0:continue
     fval=(hh+uu)*(hh+uu-a)
     for lam in (1,3):
      for qq in range(1,lam*a):
       if lam*fval%qq:continue
       n=lam*fval//qq+1
       if n%t or n%4 or (n//t-b)%a:continue
       xx=(n//t-b)//a
       if xx<t**3:continue
       j=t*(uu*xx+vv)
       if not 4<=j<=n//2:continue
       lam_real=3 if (n-1)%3==0 and (n-1)%9!=0 else 1
       if lam!=lam_real:continue
       mu=3 if ((n-2)//2)%3==0 and ((n-2)//2)%9!=0 else 1
       if (lam*j*(j-1))%(n-1):continue
       # The actual second source-window condition must fail.
       w2=(mu*2*j*(j-1)*(j-2))%(n-2)
       assert w2!=0,(t,a,b,xx,n,j)
       modelcount+=1
       if len(models)<10:models.append({'T':t,'A':a,'B':b,'X':xx,'u':uu,'v':vv,'n':n,'j':j,'lambda':lam,'mu':mu,'Q':qq,'second_window_remainder':w2})
res['first_window_models']={'count':modelcount,'examples':models,'status':'PASS',
 'note':'These are not original counterexamples. All tested first-window models fail the second necessary window.'}
res['elapsed_seconds']=round(time.monotonic()-t0,3)
(OUT/'results.json').write_text(json.dumps(res,indent=2,ensure_ascii=False)+'\n')
print(json.dumps(res,indent=2,ensure_ascii=False))
