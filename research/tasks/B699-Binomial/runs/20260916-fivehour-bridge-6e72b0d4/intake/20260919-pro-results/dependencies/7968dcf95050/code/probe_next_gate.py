"""Conditional route valuation ONLY: SAT48 has NOT been executed or proved.
For K=22,21 the existing DP table covers every required d,V.
"""
import json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def main():
 tab={int(k):v for k,v in json.loads((ROOT/'evidence/septic_budget.json').read_text())['capacities'].items()};out=[]
 for K in (22,21):
  count=0;one=None
  for a in range(K+1):
   for b in range(K-a+1):
    for c in range(K-a-b+1):
     for d in range(K-a-b-c+1):
      e=K-a-b-c-d;w=7*a+8*b+10*c+12*d+18*e
      if w>305:continue
      for V in range(306-w):
       dx=(305-V-a)//2
       assert V<=160 and dx>=60
       cap=tab[dx][V]
       if cap is not None and 2*b+2*c+d<=cap:
        count+=1
        if one is None:one=[a,b,c,d,e,V,dx,cap]
  out.append({'K':K,'feasible_records':count,'one':one});print(out[-1])
 (ROOT/'evidence/next_sat48_conditional.json').write_text(json.dumps({'status':'CONDITIONAL_ONLY_SAT48_NOT_RUN','assumption':'Every weight16 Xdegree8 z>=14 ordinary-mu48 polynomial is reducible','optimization':out},indent=2))
if __name__=='__main__':main()
