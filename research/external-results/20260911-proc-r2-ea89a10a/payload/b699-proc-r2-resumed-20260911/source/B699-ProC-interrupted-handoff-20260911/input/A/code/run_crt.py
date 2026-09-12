"""Exact symbolic CRT descent, i10. No initial huge cofactor grid is expanded."""
from pathlib import Path
import json,sys,time,resource
R=Path(__file__).resolve().parents[1];sys.path.insert(0,str(R/'code/vendor'))
from crt_bound_probe import params,primes,vp,get_M
from crt_fast import bound

def estimate(row,H):
 p=params(row);i=row['i'];M=get_M(p,H);start=max(i*(i-1),M+1);raw=0;colors=[]
 for prime in primes(i):
  v=vp(i,prime);Q=prime**(v+1);cap=M//prime**v;cnt=0
  while Q<H:
   lo=max(1,(start-i+Q)//Q);hi=min(cap,(H-1)//Q)
   if lo<=hi:raw+=hi-lo+1;cnt+=1
   Q*=prime
  colors.append(cnt)
 pairs=sum(a*b for k,a in enumerate(colors) for b in colors[k+1:])
 return dict(i=i,H=str(H),M=str(M),start=str(start),power_families=sum(colors),pairs=pairs,displacement_tests=(2*i-1)*pairs,raw_intervals=raw,event_upper_bytes=raw*2*192,low_rows=max(0,min(H,start)-(2*i+2)))
def main():
 row=json.loads((R/'input/crt_parameters.json').read_text());bs=json.loads((R/'evidence/blocks_summary.json').read_text());assert row['i']==10 and row['source_height_bits']==bs['destination_height_bits']==184
 par=params(row);assert par['lam']>0 and par['delta']>=0
 for a in range(10):
  for b in range(a+1):assert max(a-row['r'],0)+max(row['s']-b,0)+max(row['s']-(a-b),0)>=par['lam']
 H=1<<184;st=time.monotonic();steps=[]
 while True:
  ts=time.monotonic();z=bound(row,H);z['seconds']=time.monotonic()-ts;steps.append(z)
  (R/'evidence/crt_stages.json').write_text(json.dumps(steps,indent=2)+'\n');print('STEP',len(steps),'H',H,'next',z['next_H'],'pairs',z['prime_power_pairs'],'seconds',z['seconds'],flush=True)
  nxt=int(z['next_H']);assert 0<nxt<=H
  if nxt==H:break
  H=nxt
 cost=estimate(row,H);cost.update(CRT_stages=len(steps),total_pairs=sum(x['prime_power_pairs'] for x in steps),seconds=time.monotonic()-st,peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (R/'evidence/terminal_cost.json').write_text(json.dumps(cost,indent=2)+'\n');print('FINAL',json.dumps(cost),flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
