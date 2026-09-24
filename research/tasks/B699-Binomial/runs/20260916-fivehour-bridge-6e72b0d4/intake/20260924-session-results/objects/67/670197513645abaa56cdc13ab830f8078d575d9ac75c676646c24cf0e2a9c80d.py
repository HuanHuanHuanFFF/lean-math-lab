#!/usr/bin/env python3
from __future__ import annotations
import argparse,json
from pathlib import Path
from arithmetic import models_h,prime

def build()->dict:
    three=models_h(3,0)
    five=[{'q_mod3':q,'models':[r for r in models_h(5,q) if r['C']==0]} for q in (0,2)]
    seven=models_h(7,0)
    phase5=[]
    for q in range(15):
      if q%3==1:continue
      for c0 in (1,3):
       for s in range(12):
        if c0==1 and s%6:continue
        if q%3==0:
            if q%15 or c0!=3 or s%4:continue
        else:
            if c0*pow(2,s,5)%5!=1:continue
        phase5.append([q,c0,s])
    boundary={'q':30,'c0':1,'s':2400,'V':867063118729}
    if not prime(boundary['V']):raise ArithmeticError('boundary V not prime')
    ws=[]
    for p in (3,5,7,11,13,17,19,37,61):
       targetV=boundary['V']%p;targetn=pow(2,boundary['s'],p)
       matches=[r for r in models_h(p,boundary['q']) if r['V']==targetV and r['n']==targetn]
       if not matches:raise ArithmeticError(('boundary has no model',p))
       ws.append({'p':p,'model':matches[0]})
    boundary['witnesses']=ws
    return {'schema':'B699-D-R27-origin-sevenfree-v1',
       'scope':'same original minimal critical two-base lambda=mu=1 balanced core',
       'local3':three,'local5_C0':five,'local7':seven,'phase5_q15_s12':phase5,
       'full_V_smallpart_exponents':{'2':[0,4,6],'3':[0,2],'5':[0,4,5]},
       'V3_unit_mod3':1,'V5_units':{'0':[4],'4':[1,2],'5':[3]},
       'boundary':boundary}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    d=build();a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(d,sort_keys=True,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
    print('ROUND27_CERTIFICATE_GENERATED=PASS')
if __name__=='__main__':main()
