#!/usr/bin/env python3
"""Fixed weak-shell checks, never a counterexample search or infinite proof."""
import json
from math import comb,gcd,isqrt
P,Q,v,nu,h=89,3,2,20,43
assert P==Q+h*v and h*Q==P+2*nu and v*nu*nu==P*Q*Q-1
assert v*(P+nu)**2==P*P*Q-1
E,F=P+nu,Q*Q+v*nu;n=P*Q*nu+2;j=E*Q*Q;k=F*P
assert E*F==n-1 and j+k==n and gcd(n,j)==1
witness=2671
assert all(witness%d for d in range(2,isqrt(witness)+1))
assert comb(n,3)%witness==0 and comb(n,j)%witness==0
assert n%4==2 and Q<11 and nu%6!=0
out={'status':'PASS_FIXED_FAILURE_DIAGNOSTICS','weak_input':[n,j],
     'common_prime':witness,'NC3_counterexample':False}
print(json.dumps(out,sort_keys=True))
