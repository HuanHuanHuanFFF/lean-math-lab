"""Pure degree/source ledger after SAT36. No new Mahler prices needed.
A: positive weighted-X excess (>=1), min weight7.
B/C/D: zero excess at weights8/10/12, Gamma>=2/2/1.
E: zero excess and weight>=14, Gamma>=0.
"""
from discover_excess_budget import all_bounds
from discover_source_budget import ROOT
import json,time

def main():
 start=time.monotonic();tab=all_bounds(160,60);out=[]
 for K in [28,27,26,25,24,23,22]:
  count=0;one=None
  for a in range(K+1):
   for b in range(K-a+1):
    for c in range(K-a-b+1):
     for d in range(K-a-b-c+1):
      e=K-a-b-c-d;weight=7*a+8*b+10*c+12*d+14*e
      if weight>305:continue
      need=2*b+2*c+d
      for V in range(306-weight):
       dx=(305-V-a)//2
       assert V<=160 and dx>=60
       cap=tab[dx][V]
       if cap is None or need>cap:continue
       count+=1
       if one is None:one={'a':a,'b':b,'c':c,'d':d,'e':e,'weight':weight,'need':need,'V':V,'dmax':dx,'capacity':cap}
  out.append({'K':K,'feasible_records':count,'one':one});print(out[-1],flush=True)
 (ROOT/'evidence/sextic_budget.json').write_text(json.dumps({'vmax':160,'dmin':60,'capacities':tab,'optimization':out},separators=(',',':')))
 print('seconds',round(time.monotonic()-start,2))
if __name__=='__main__':main()
