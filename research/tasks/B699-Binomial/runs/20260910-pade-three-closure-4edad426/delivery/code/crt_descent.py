#!/usr/bin/env python3
"""Exact CRT maxima after block compression. Save each stage; estimate terminal memory only."""
from pathlib import Path
import sys,json,time,resource
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'vendor'))
from crt_fast import bound
from crt_bound_probe import params,primes,vp,get_M

def estimate(row,H):
 par=params(row);i=row['i'];M=get_M(par,H);start=max(i*(i-1),M+1)
 raw=0;fc=0
 for p in primes(i):
  v=vp(i,p);Q=p**(v+1);cap=M//p**v
  while Q<H:
   lo=max(1,(start-i+1+Q-1)//Q);hi=min(cap,(H-1)//Q)
   if lo<=hi:raw+=hi-lo+1;fc+=1
   Q*=p
 return dict(i=i,H=str(H),M=str(M),start=str(start),power_families=fc,
   raw_intervals=raw,event_upper_bytes=raw*2*192,
   low_rows=max(0,min(H,start)-(2*i+2)))

def main():
 targets=list(map(int,sys.argv[1:])) if len(sys.argv)>1 else [11,16,21]
 for i in targets:
  row=json.loads((ROOT/'results'/f'block_summary_{i}.json').read_text());H=1<<row['destination_height_bits'];stages=[]
  for k in range(32):
   t=time.monotonic();stage=bound(row,H);stages.append(stage)
   (ROOT/'results'/f'crt_stages_{i}.json').write_text(json.dumps(stages,indent=2))
   print(json.dumps(dict(i=i,step=k,H=str(H),M=stage['M'],next_H=stage['next_H'],pairs=stage['prime_power_pairs'],seconds=round(time.monotonic()-t,3))),flush=True)
   Hn=int(stage['next_H'])
   if Hn==H:break
   assert Hn<H;H=Hn
  else:raise RuntimeError('No fixed point within stage budget')
  est=estimate(row,H);est['peak_rss_kib']=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss
  (ROOT/'results'/f'terminal_cost_{i}.json').write_text(json.dumps(est,indent=2))
  print(json.dumps(dict(cost=est)),flush=True)
if __name__=='__main__':main()
