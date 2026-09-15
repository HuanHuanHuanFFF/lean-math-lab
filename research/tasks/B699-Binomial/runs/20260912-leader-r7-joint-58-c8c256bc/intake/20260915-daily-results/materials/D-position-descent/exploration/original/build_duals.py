from dual_probe import *
from math import lcm
ROOT=Path('/mnt/data/prod_20260915_work')

def vp(a,p):
 assert a>0
 e=0
 while a%p==0:a//=p;e+=1
 return e

def intcert(ans,m):
 vals=list(ans['rows'].values())+[q[0] for q in ans['polynomials']]
 scale=lcm(*(Fraction(x).denominator for x in vals))
 rows={int(r):int(Fraction(w)*scale) for r,w in ans['rows'].items()}
 polys=[{'weight':int(Fraction(q[0])*scale),'degree':q[1],'coeffs':q[2]} for q in ans['polynomials']]
 W=sum(rows.values());D=sum(f['weight']*f['degree'] for f in polys);gap=W-D
 H=ans['H'];ps={4:[2,3],6:[2,3,5],7:[2,3,5],8:[2,3,5,7]}[m]
 exps={p:max(sum(w*vp(abs(r-h),p) for r,w in rows.items()) for h in H) for p in ps}
 if m==7:exps[7]=max(rows.values())
 K=W+sum(e*(p-1).bit_length() for p,e in exps.items())
 K+=sum(f['weight']*(sum(abs(v) for v in f['coeffs'])-1).bit_length() for f in polys)
 return {'d':ans['d'],'target':m,'H':H,'row_weights':rows,'polynomials':polys,'W':W,'degree_weight':D,'gap':gap,'small_exponents':exps,'K':K,'height_exponent':K//gap+1}

out=[];fail=[]
for d,hcnt in [(4,2),(6,2),(8,3)]:
 for H in combinations(range(d),hcnt):
  ans=solve(d,H,positive_only=True)
  if Fraction(ans['gap'])>0:
   for m in([6,7] if d==6 else[d]):out.append(intcert(ans,m))
  else:fail.append((d,H,ans['gap']))
 print(d,'accepted',sum(x['d']==d for x in out),'fail',[h for dd,h,g in fail if dd==d],flush=True)
for m in[4,6,7,8]:
 cs=[q for q in out if q['target']==m]
 print('target',m,'ncert',len(cs),'maxE',max(c['height_exponent'] for c in cs),'maxW',max(c['W'] for c in cs),'maxterms',max(len(c['polynomials']) for c in cs),flush=True)
ROOT.joinpath('exploration/dual_certificates.json').write_text(json.dumps({'certificates':out,'failed':fail},indent=2))
