#!/usr/bin/env python3
from __future__ import annotations
import json, math
from pathlib import Path


def conv(a,b,p):
    out=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b): out[i+j]=(out[i+j]+x*y)%p
    while len(out)>1 and out[-1]==0: out.pop()
    return out

def low(high): return list(reversed(high))

def horner(high,x,p):
    v=0
    for c in high: v=(v*x+c)%p
    return v

def nonsquare(n): return math.isqrt(n)**2!=n

def main():
    root=Path(__file__).resolve().parents[1]
    a=json.loads((root/'outputs'/'replay_no211.json').read_text())
    b=json.loads((root/'outputs'/'probe_022.json').read_text())
    assert a['status']=='PASS OCTIC-NO211'
    assert a['remaining_directed_slot_patterns']==[[0,2,2],[2,0,2]]
    assert nonsquare(a['graph_112']['C_zero_discriminant'])
    h9=a['graph_112']['h9_coefficients_high_to_low']; vals=[horner(h9,x,19) for x in range(19)]
    assert vals==a['graph_112']['h9_mod19_values'] and all(vals) and h9[0]%19!=0
    assert nonsquare(a['graph_121']['ratio_quadratic_discriminant'])
    # Exact mod-7 Bezout certificate for graph (1,1,2), E=0.
    P1=low([1,4,4,2,0,3,0,6,0]); P2=low([6,5,5,0,1,6,2,5,2])
    S=[2,-1,3,1,2,2,2,-2]; T=[-3,-2,-3,3,-2,3,-2,-2]
    z=conv(S,P1,7); w=conv(T,P2,7); n=max(len(z),len(w)); z+= [0]*(n-len(z)); w+=[0]*(n-len(w))
    assert [(z[i]+w[i])%7 for i in range(n)]==[1]+[0]*(n-1)
    # Exact mod-7 Bezout certificate for graph (1,2,1), D=0.
    P1b=low([1,5,2,1]); P2b=low([1,5,2,0,5,4,2])
    Sb=[3,1,-2,1,-2,2]; Tb=[-1,2,-2]
    z=conv(Sb,P1b,7); w=conv(Tb,P2b,7); n=max(len(z),len(w)); z += [0]*(n-len(z)); w += [0]*(n-len(w))
    assert [(z[i]+w[i])%7 for i in range(n)]==[1]+[0]*(n-1)
    assert b['status']=='PASS DISTINCT-CENTER GENERIC 022 CLOSED'
    assert nonsquare(b['quadratic_discriminant'])
    qvals=b['quartic_mod13_values']; assert len(qvals)==13 and all(qvals)
    assert b['p_equals_q_cross_difference']!=0
    same=b['same_center_generic']
    assert same['status']=='FORMAL_FAMILY_REPLAYED_NOT_CLOSED'
    assert 'x**2' in same['positive_weak_subfamily_p_minus14_q111']
    out={
      'h9_mod19':'PASS',
      'graph112_mod7_bezout':'PASS',
      'graph121_mod7_bezout':'PASS',
      'discriminant_checks':'PASS',
      'probe022_mod13':'PASS',
      'same_center_failure_boundary':'PASS',
      'status':'PASS independent arithmetic checker',
    }
    (root/'outputs'/'independent_check.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(json.dumps(out,indent=2,sort_keys=True))
if __name__=='__main__': main()
