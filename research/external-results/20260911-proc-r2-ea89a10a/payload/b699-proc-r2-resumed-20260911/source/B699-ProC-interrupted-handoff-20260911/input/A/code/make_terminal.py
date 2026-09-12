"""Finite all-j consumers. Default largepart check is re-run for every unlisted row.
The certificate records only exceptions to this deterministic integer consumer;
no probabilistic primality and no undisclosed n or j sampling is used.
"""
from pathlib import Path
import json,math,sys,time,resource,hashlib
R=Path(__file__).resolve().parents[1];sys.path.insert(0,str(R/'code/vendor'))
from crt_bound_probe import params

def prime(n):
 if n<2:return False
 if n%2==0:return n==2
 return all(n%d for d in range(3,math.isqrt(n)+1,2))
def main():
 candidates=json.loads((R/'evidence/candidates.json').read_text());row=json.loads((R/'input/crt_parameters.json').read_text());par=params(row);st=time.monotonic();large=0;processed=0;top=[];unresolved=[];digest=hashlib.sha256()
 for a,b in candidates['candidate_intervals']:
  for n in range(a,b+1):
   V=math.comb(n,10)
   for p in [2,3,5,7]:
    while V%p==0:V//=p
   if par['K']*V**par['lam']>n**par['E']:
    large+=1;digest.update(f'{n}:{V}\n'.encode())
   else:
    p=next((p for p in range(n,n-10,-1) if prime(p)),None)
    if p is None:unresolved.append(n)
    else:top.append([n,p])
   processed+=1
   if processed%100000==0:
    checkpoint=dict(status='PARTIAL_FINITE_CONSUMERS',processed=processed,total=candidates['rows'],large=large,top=len(top),unresolved=unresolved,seconds=time.monotonic()-st)
    (R/'evidence/terminal_progress.json').write_text(json.dumps(checkpoint,indent=2)+'\n');print(json.dumps(checkpoint),flush=True)
 assert processed==candidates['rows']
 out=dict(status='FULL_FINITE_CONSUMER_SCAN',i=10,r=row['r'],s=row['s'],candidate_rows=processed,default_consumer='Compute full >=10 prime-power part V of binom(n,10); check K*V^lambda > n^E for every candidate n not in exceptions.',large_rows=large,large_rows_sha256=digest.hexdigest(),top_prime_rows=top,unresolved_rows=unresolved,seconds=time.monotonic()-st,peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (R/'evidence/terminal_certificate.json').write_text(json.dumps(out,indent=2)+'\n');print('SUMMARY',json.dumps({k:v for k,v in out.items() if k!='top_prime_rows'}),flush=True)
 print('TOP_ROWS',len(top),'distinct primes',len(set(p for n,p in top)),'max',max((p for n,p in top),default=0),flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
