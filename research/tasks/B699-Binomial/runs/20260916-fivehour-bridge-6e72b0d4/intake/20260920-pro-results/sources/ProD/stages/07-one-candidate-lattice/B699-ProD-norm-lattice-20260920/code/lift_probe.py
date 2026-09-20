#!/usr/bin/env python3
"""Optional bounded z=1 diagnostic; not a theorem about arbitrary exponents."""
from __future__ import annotations
import json

def run(limit:int=600)->dict:
    root,alpha=1,3;found=[]
    for a in range(1,limit+1):
        if a>1:
            digit=(-(root*root-10)//alpha)*pow(2*root,-1,3)%3
            root+=digit*alpha;alpha*=3
        assert (root*root-10)%alpha==0
        beta=min(root,alpha-root)
        num=beta*(alpha-beta)+10
        if beta>0 and num%(10*alpha)==0:
            g=num//(10*alpha)
            if g>0 and g%3==0 and (g*alpha)%9000==5130:
                found.append({'a':a,'g':g,'n':g*alpha,'j':g*beta,'beta':beta,'z':1});break
    return {'scope':'bounded falsification diagnostic for max-exponent-only recovery; no exponent bound theorem','a_limit':limit,'solutions':found}

if __name__=='__main__':print(json.dumps(run(),indent=2))
