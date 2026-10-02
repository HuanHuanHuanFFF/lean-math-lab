#!/usr/bin/env python3
"""Generate full terminal witnesses, or save every unresolved row explicitly."""
from pathlib import Path
import sys,json,math,time,functools,resource
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'vendor'))
from crt_bound_probe import params,primes
from extra_terminal_probe import explicit_cover

def merge(iv):
 ans=[]
 for a,b in sorted(iv):
  if a>b:continue
  if ans and a<=ans[-1][1]+1:ans[-1][1]=max(ans[-1][1],b)
  else:ans.append([a,b])
 return ans
@functools.lru_cache(maxsize=200000)
def prime(n):
 if n<2:return False
 if n%2==0:return n==2
 return all(n%d for d in range(3,math.isqrt(n)+1,2))
def main():
 targets=list(map(int,sys.argv[1:])) if len(sys.argv)>1 else [11,16,21]
 for i in targets:
  ts=time.monotonic();row=json.loads((ROOT/'results'/f'block_summary_{i}.json').read_text());par=params(row)
  stages=json.loads((ROOT/'results'/f'crt_stages_{i}.json').read_text());H=int(stages[-1]['next_H'])
  cost=json.loads((ROOT/'results'/f'terminal_cost_{i}.json').read_text())
  if cost['event_upper_bytes']>128*1024**2:raise RuntimeError('Event memory budget exceeded')
  terminal=explicit_cover(row,H);terminal['ell']=2
  terminal['rows']=sum(b-a+1 for a,b in terminal['segments'])
  terminal['next_H']=max(terminal['start'],terminal['segments'][-1][1]+1 if terminal['segments'] else terminal['start'])
  assert terminal['next_H']==H and terminal['raw_intervals']==cost['raw_intervals']
  candidate=merge([[2*i+2,terminal['start']-1]]+terminal['segments'])
  top=[];large=[];unresolved=[];ps=primes(i)
  for a,b in candidate:
   n=a
   while n<=b:
    p=next((p for p in range(n,n-i,-1) if prime(p)),None)
    if p is not None:
     end=min(b,p+i-1);top.append([n,end,p]);n=end+1
    else:
     D=math.comb(n,i)
     for q in ps:
      while D%q==0:D//=q
     if par['K']*D**par['lam']>n**par['E']:large.append([n,str(D)])
     else:unresolved.append(n)
     n+=1
  special=[]
  if i==11 and unresolved==[330]:
   special=[dict(n=330,intervals=[[12,162,163],[163,165,109]])]
   for sp in special:
    for a,b,p in sp['intervals']:
     assert prime(p) and p>=i and math.comb(sp['n'],i)%p==0
     assert all(math.comb(sp['n'],j)%p==0 for j in range(a,b+1))
   unresolved=[]
  summary=dict(i=i,total_rows=sum(b-a+1 for a,b in candidate),candidate_intervals=len(candidate),
   max_candidate_n=candidate[-1][1],top_prime_intervals=len(top),top_prime_rows=sum(b-a+1 for a,b,_ in top),
   large_divisor_rows=len(large),special_n_rows=len(special),special_j_checks=sum(b-a+1 for sp in special for a,b,p in sp['intervals']),unresolved=len(unresolved),seconds=time.monotonic()-ts,
   peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
  out=dict(i=i,height_bits=row['destination_height_bits'],r=row['r'],s=row['s'],
   bound_stages=stages,terminal_cover=terminal,candidate_intervals=candidate,
   top_prime_intervals=top,large_divisor_rows=large,unresolved_rows=unresolved,special_binomial_rows=special,summary=summary,
   prime_witnesses=sorted({x[2] for x in top}))
  (ROOT/'results'/f'terminal_certificate_{i}.json').write_text(json.dumps(out,separators=(',',':')))
  (ROOT/'results'/f'terminal_summary_{i}.json').write_text(json.dumps(summary,indent=2))
  print(json.dumps(summary),flush=True)
if __name__=='__main__':main()
