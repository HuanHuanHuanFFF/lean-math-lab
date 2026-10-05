"""Independent F257 polynomial specialization and Rabin checks; no SymPy used."""
from pathlib import Path
import json,hashlib,time,sys
root=Path.cwd();cont=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin';exp=cont/'experiments/main/kernel107';out=cont/'reviews/specialization107';p=257;start=time.monotonic()
assert all(p%d for d in range(2,17))
poly=exp/'basis.poly.tsv';data=poly.read_bytes();assert hashlib.sha256(data).hexdigest()=='eca754a4695ac7cd9a9bc35f22f62c195b235272c5a872fc2e4dba1ccce5c5fe'
lines=data.decode('ascii').splitlines();assert lines.pop(0)=='a\tb\tcoefficient'
terms=[tuple(map(int,line.split())) for line in lines];assert len(terms)==21401 and len({(a,b) for a,b,v in terms})==21401
assert all(a>=0 and b>=0 and a+2*b<=305 and 0<v<p for a,b,v in terms)
ss=[0]*108
for a,b,v in terms:ss[b]=(ss[b]+v*pow(17,a,p))%p
assert ss[-1]!=0
specdata=(exp/'specializations.json').read_bytes();assert hashlib.sha256(specdata).hexdigest()=='1d0706dbc1f11afb9de56829651fcb77d296b86bf9d5906f73381877a6c37b25'
d=json.loads(specdata);assert d['prime']==p and d['polynomial_sha256']==hashlib.sha256(data).hexdigest();r=next(z for z in d['results'] if z['c']==17)
assert r['degree']==107 and ss==list(reversed(r['specialization_high']))
def trim(a):
 a=list(a)
 while a and not a[-1]:a.pop()
 return a
def add(a,b,sgn=1):return trim([((a[i] if i<len(a) else 0)+sgn*(b[i] if i<len(b) else 0))%p for i in range(max(len(a),len(b)))])
def mul(a,b):
 c=[0]*max(0,len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%p
 return trim(c)
def rem(a,b):
 a=trim(a);inv=pow(b[-1],p-2,p)
 while len(a)>=len(b) and a:
  shift=len(a)-len(b);z=a[-1]*inv%p
  for j,v in enumerate(b):a[shift+j]=(a[shift+j]-z*v)%p
  a=trim(a)
 return a
def gcd(a,b):
 while b:a,b=b,rem(a,b)
 return [(x*pow(a[-1],p-2,p))%p for x in a] if a else []
def powmod(a,e,f):
 result=[1]
 while e:
  if e&1:result=rem(mul(result,a),f)
  e//=2
  if e:a=rem(mul(a,a),f)
 return result
def prime_divisors(n):
 result=[];q=2
 while q*q<=n:
  if n%q==0:
   result.append(q)
   while n%q==0:n//=q
  q+=1
 if n>1:result.append(n)
 return result
factors=[];product=[r['unit']]
for f in r['factors']:
 n=f['degree'];z=list(reversed(f['coeffs_high']));assert n in [1,17,88] and len(z)==n+1 and z[-1]==1 and f['multiplicity']==1 and all(0<=v<p for v in z)
 product=mul(product,z)
 checkpoints={n//q:q for q in prime_divisors(n)};a=[0,1];checks=[]
 for j in range(1,n+1):
  a=powmod(a,p,z)
  if j in checkpoints:
   gg=gcd(z,add(a,[0,1],-1));assert gg==[1]
   checks.append({'degree_prime_divisor':checkpoints[j],'frobenius_iterate':j,'gcd':[1]})
 assert rem(add(a,[0,1],-1),z)==[]
 factors.append({'degree':n,'multiplicity':1,'prime_divisors':prime_divisors(n),'rabin_gcd_checks':checks,'x_p_to_d_equals_x':True,'coefficients_low':z})
 print('RABIN',n,'PASS',flush=True)
assert product==ss
assert sorted(z['degree'] for z in factors)==[1,1,17,88]
for i in range(4):
 for j in range(i):assert gcd(factors[i]['coefficients_low'],factors[j]['coefficients_low'])==[1]
result={'verifier':'/root/verify_reg3_module','method':'independent standard-library modular arithmetic, direct coefficient specialization, factor product and Rabin criterion','prime':p,'N_specialization':17,'specialization_degree':107,'specialization_leading_coefficient':ss[-1],'unit':r['unit'],'specialization_coefficients_low':ss,'factor_product_exact':True,'pairwise_gcd_one':True,'irreducible_factors':factors,'omega':4,'all_multiplicities_one':True,'polynomial_sha256':hashlib.sha256(data).hexdigest(),'specializations_sha256':hashlib.sha256(specdata).hexdigest(),'python':sys.version,'seconds':time.monotonic()-start}
(out/'factor17-independent-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8');print('PASS',json.dumps({'degree':107,'factor_degrees':[v['degree'] for v in factors],'omega':4,'seconds':result['seconds']}),flush=True)
