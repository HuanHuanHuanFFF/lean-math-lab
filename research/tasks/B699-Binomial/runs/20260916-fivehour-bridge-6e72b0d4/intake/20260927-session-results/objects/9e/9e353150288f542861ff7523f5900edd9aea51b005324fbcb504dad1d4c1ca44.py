#!/usr/bin/env python3
"""Complete finite-prefix generator for the STRICT normalized coarse B system.

Not a global finite bound. Not an NC6 generator. Budget failure is explicit.
Use --min-a 41 --latest-gates to retain the frozen minimum exponent gates.
"""
from __future__ import annotations
import argparse,json,sys
from math import isqrt
from recover import vp
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def generate(X:int,min_a:int=2,budget:int=1_000_000,latest_gates:bool=False)->dict:
    if X<1 or min_a<2:raise ValueError('X>=1 and min_a>=2 required')
    plans=[];alpha=3;r=1;a=1
    while alpha<=X//130:
        if a>=min_a:
            G=1570*pow(pow(3,a-2,2000),-1,2000)%2000
            if G*alpha<=X:
                Z=isqrt(alpha*alpha//(40*(G*alpha-1)))
                plans.append((a,alpha,r,G,Z))
        r=next(r+c*alpha for c in range(3) if ((r+c*alpha)**2-10)%(3*alpha)==0)
        alpha*=3;a+=1
    count=sum(p[4] for p in plans)
    if budget and count>budget:
        return {'status':'NOT_RUN_BUDGET','X':X,'planned_z_slots':count,'budget':budget,
                'complete':False,'candidates':[]}
    candidates=[];tested=0
    for a,alpha,r,G,Z in plans:
        for z in range(1,Z+1):
            if z%3==0:continue
            tested+=1;b=r*z%alpha;b=min(b,alpha-b)
            s=b*(alpha-b);den=10*z*z
            if not b or s%den:continue
            N=s//den
            if (N+1)%alpha:continue
            g=(N+1)//alpha;n=g*alpha;j=g*b
            if g<G or n>X or n%18000!=14130 or j<7:continue
            if latest_gates and not (a>=41 and vp(n-2,2)>=65 and vp(n-5,5)>=27):continue
            candidates.append({'n':n,'j':j,'g':g,'a':a,'alpha':alpha,'beta':b,'z':z})
    return {'status':'COMPLETE_PREFIX_ONLY','X':X,'min_a':min_a,'latest_gates':latest_gates,
            'planned_z_slots':count,'tested_unit_z':tested,'complete':True,'candidates':candidates,
            'global_height_proved':False}

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('X',type=int)
    p.add_argument('--min-a',type=int,default=2);p.add_argument('--budget',type=int,default=1_000_000)
    p.add_argument('--latest-gates',action='store_true');args=p.parse_args()
    print(json.dumps(generate(args.X,args.min_a,args.budget,args.latest_gates),indent=2))
if __name__=='__main__':main()
