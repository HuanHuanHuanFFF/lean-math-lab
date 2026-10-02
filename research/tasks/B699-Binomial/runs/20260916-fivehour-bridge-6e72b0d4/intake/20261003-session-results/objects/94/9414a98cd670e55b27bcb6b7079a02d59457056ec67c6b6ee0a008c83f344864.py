import json,sympy as s,math
from pathlib import Path
n,j,X,D=s.symbols('n j X D')
data=json.loads(Path('/mnt/data/c_r8_work/cubic_probe.json').read_text())
def rough(a):
 a=abs(int(a))
 if not a:return 0
 for p in (2,3,5):
  while a%p==0:a//=p
 return a
summary={};bad=[];cert=[]
for r in data:
 if any(c['sign'] for c in r['cubics']): continue
 proof=[]
 for c in r['cubics']:
  f=sum(v*n**int(ab.split(',')[0])*j**int(ab.split(',')[1]) for ab,v in c['coeffs'].items())
  factors=s.factor_list(f)[1]
  rr=[]
  for fac,e in factors:
   cs=s.Poly(fac.subs({n:14+2*X+D,j:7+X}),X,D).coeffs()
   sg=all(t>=0 for t in cs) or all(t<=0 for t in cs)
   vals=[[int(fac.subs({n:h,j:b})) for b in range(h+1)] for h in range(3)]
   rootless=any(all(v!=0 for v in vs) and all(rough(v)==1 for v in vs) for vs in vals)
   rr.append(dict(f=str(fac),e=int(e),sign=sg,smooth_zero_obstruction=rootless,vals=vals))
  good=all(x['sign'] or x['smooth_zero_obstruction'] for x in rr)
  proof.append(dict(factors=rr,good=good))
 if any(p['good'] for p in proof): summary['good']=summary.get('good',0)+1
 else:bad.append(dict(pairs=r['pairs'],proof=proof));summary['bad']=summary.get('bad',0)+1
 cert.append(dict(pairs=r['pairs'],proof=proof))
Path('/mnt/data/c_r8_work/zero_probe.json').write_text(json.dumps(cert,indent=2))
Path('/mnt/data/c_r8_work/zero_bad.json').write_text(json.dumps(bad,indent=2))
print(summary)
for b in bad[:20]:print(b)
