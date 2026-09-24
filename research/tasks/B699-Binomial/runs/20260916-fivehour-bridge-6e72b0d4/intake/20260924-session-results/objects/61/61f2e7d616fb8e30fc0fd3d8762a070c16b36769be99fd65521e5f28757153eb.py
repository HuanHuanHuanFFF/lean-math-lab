from pathlib import Path
import sympy as sp,json,sys,itertools,time
root=Path('/mnt/data/B699-C22-positive-k12-48-closure-20260924')
sys.path.insert(0,str(root/'code'));import certify as c
terms=json.loads((root/'outputs/first_recovery.json').read_text())['QIG_terminals']
out=[];start=time.time()
for n in terms:
 candidates=[]
 for r in range(6):
  v=(n-r)//c.smallpart(n-r)
  fs=sp.factorint(v)
  for p,e in fs.items():
   p,e=int(p),int(e)
   assert p>=7 and sp.isprime(p)
   candidates.append(dict(p=p,e=e,r=r))
 candidates.sort(key=lambda z: (z['p']**z['e'])/(z['r']+1),reverse=True)
 found=None
 for size in (1,2,3):
  for cs in itertools.combinations(candidates,size):
   states=[(0,1)]
   for s in cs:
    nxt=[]
    for a,M in states:
     for b in range(s['r']+1):
      aa,MM=c.crt_merge(a,M,b,s['p']**s['e'])
      if c.touches(aa,MM,n):nxt.append((aa,MM))
    states=nxt
    if not states:break
   if not states:found={'n':n,'sources':cs};break
  if found:break
 if found is None:raise RuntimeError(('uncovered terminal',n,candidates))
 out.append(found);print(n,found['sources'],round(time.time()-start,2),flush=True)
(root/'sources/terminal_sources.json').write_text(json.dumps(out,indent=2)+'\n')
# reuse already-certified nodes only for the reachable subtree; create exact full-order certificates for all new primes
old=json.loads(Path('/mnt/data/c22_work/frozen/B699-C21-separated-two-prime-72-closure-20260924/sources/primality_certificates.json').read_text())
cache={d['n']:d for d in old['nodes']};used={}
def cert(n):
 if n in used:return
 if n==2:used[n]={'n':2,'base_case':True};return
 if n in cache:
  d=cache[n]
  for q,e in d['factors']:cert(q)
  used[n]=d;return
 fs=[[int(p),int(e)] for p,e in sorted(sp.factorint(n-1).items())]
 for q,e in fs:cert(q)
 a=2
 while not (pow(a,n-1,n)==1 and all(c.gcd(pow(a,(n-1)//q,n)-1,n)==1 for q,e in fs)):
  a+=1
  if a>=n:raise RuntimeError(('nonprime candidate',n))
 used[n]={'n':n,'factors':fs,'a':a}
for t in out:
 for s in t['sources']:cert(s['p'])
known=c.verify_prime_nodes([used[n] for n in sorted(used)])
(root/'sources/primality_certificates.json').write_text(json.dumps({'nodes':[used[n] for n in sorted(used)],'method':'recursive exact full-order criterion, N-1 completely factored'},indent=2)+'\n')
print('nodes',len(known),'seconds',time.time()-start,flush=True)
