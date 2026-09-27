import sympy as sp,math,json
from pathlib import Path
for a in range(3,10):
 al=3**a
 for E in range(3, min(30,2*a+5)):
  s=5**E
  for u in range(0,a+5):
   for sign in [1,-1]:
    b=(-sign*pow(2,u,al)*pow(s,-1,al))%al
    if b==0 or 2*b>=al or b%3==0:continue
    d=5*b-al
    if d*sign<=0 or abs(d)%(2**u):continue
    q=abs(d)//2**u
    if q<31 or q%2==0 or not sp.isprime(q):continue
    if sp.legendre_symbol(10,q)!=1:continue
    n=s*q+5
    if n%al:continue
    g=n//al;j=g*b;k=n-j
    if math.gcd(n,j)!=g:continue
    def rough(x):
     for p in [2,3,5]:
      while x%p==0:x//=p
     return x
    C=math.gcd(rough(n-4),j-2);E4=math.gcd(rough(n-4),j*k)
    if sp.jacobi_symbol(3,C)!=-1 or math.isqrt(E4)**2!=E4 or math.gcd(C,rough(n-4)//C)>1:continue
    ncand=[p for p in sp.factorint(math.gcd(n-1,j*k)) if p>=7 and sp.legendre_symbol(3,p)==sp.legendre_symbol(10,p)==-1]
    rec={'a':a,'beta':b,'g':g,'n':n,'j':j,'E':E,'q5':q,'C':C,'E4':E4,'neg_first_primes':list(map(int,ncand)), 'Ndivjk':j*k%(n-1)==0,'j_modq5':j%q,'delta':al-2*b}
    print(rec,flush=True)
    Path('/mnt/data/r4_work/allnear_weak_seed.json').write_text(json.dumps(rec,indent=2))
    raise SystemExit
