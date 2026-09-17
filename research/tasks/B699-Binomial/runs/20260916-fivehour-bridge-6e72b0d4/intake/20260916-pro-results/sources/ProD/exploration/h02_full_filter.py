import json,math,time
from pathlib import Path
from sympy import factorint
root=Path(__file__).resolve().parents[1]
rows=json.loads((root/'exploration/H02_denominator_probe.json').read_text())['post_qig']
def vp(n,p):
 e=0
 while n%p==0:e+=1;n//=p
 return e

def s5(x):
 s=1
 for p in [2,3]:
  while x%p==0:x//=p;s*=p
 if x%5==0 and x%25:s*=5
 return s

def roots(al,fac):
 v=[0];m=1
 for p,e in fac.items():
  Q=p**e;inv=pow(m,-1,Q)
  v=[z+m*((t-z)*inv%Q)for z in v for t in (0,al)]
  m*=Q
 return m,v

stats={'rows':len(rows),'alpha_templates':0,'bound_pass':0,'crt_roots':0,'legal_betas':0,'norm_pass':0};out=[];full=[];st=time.time()
for n in rows:
 p=2 if n%72==56 else 3
 cs=([1,5]if p==2 else[1,2,5,10]);templates=[]
 for c in cs:
  if n%c:continue
  if c%5==0 and vp(n,5)!=1:continue
  for a in range(vp(n,p)+1):
   al=c*p**a
   if al<2 or n%al:continue
   g=n//al;stats['alpha_templates']+=1
   if not(g**7<(1<<22)*n and 8*g**5<625*n):continue
   s1=s5(n-1)
   if 4*(n-1)>s1*al*al:continue
   templates.append((al,g))
 stats['bound_pass']+=len(templates)
 if not templates:continue
 q1=(n-1)//s5(n-1);fa={int(p):int(e)for p,e in factorint(q1).items()};detail={'n':n,'q1':q1,'factorization':fa,'templates':[]}
 for al,g in templates:
  mod,rs=roots(al,fa);stats['crt_roots']+=len(rs);rr=[]
  for z in rs:
   lo=max(1,6//g+(1 if 6%g else 0))
   for beta in range(z+max(0,(lo-z+mod-1)//mod)*mod,al//2+1,mod):
    if math.gcd(al,beta)!=1:continue
    stats['legal_betas']+=1;j=g*beta
    bad=[]
    for r in range(1,5):
     q=(n-r)//s5(n-r);A=math.prod(r*beta-b*al for b in range(r+1))
     if A%q:bad.append(r)
    rr.append([beta,bad])
    if not bad:stats['norm_pass']+=1;out.append([n,al,g,beta,j])
  detail['templates'].append({'alpha':al,'g':g,'betas':rr})
 full.append(detail)
 print('n',n,'templates',len(templates),'bits',n.bit_length(),'beta',sum(len(t['betas'])for t in detail['templates']),flush=True)
res={'stats':stats,'remaining':out,'rows':full,'seconds':time.time()-st};(root/'exploration/H02_full_filter.json').write_text(json.dumps(res,indent=2));print('RESULT',stats,'remaining',out,'sec',res['seconds'])
