"""Reject corrupt explicit sharp-kernel certificates by direct Taylor expansion.
This is an implementation safety check, not an independent proof of the all-degree theorem.
"""
import argparse, json
from pathlib import Path
from math import comb, gcd
from fractions import Fraction

POINTS=((0,0),(1,0),(0,1),(2,0),(1,1),(0,2))
BASE=[(2,2,1),(2,3,-1),(3,2,-1),(3,3,1)]

def check(terms, degree, orders):
    assert len(orders)==6 and all(type(v) is int and v>=0 for v in orders)
    assert type(degree) is int and degree>=0
    assert terms and len({(a,b) for a,b,c in terms})==len(terms)
    assert all(type(a) is int and type(b) is int and a>=0 and b>=0 for a,b,c in terms)
    assert any(c for a,b,c in terms)
    assert max(a+b for a,b,c in terms if c)<=degree
    for (x,y),order in zip(POINTS,orders):
        for u in range(order):
            for v in range(order-u):
                coefficient=sum(Fraction(c)*comb(a,u)*comb(b,v)*x**(a-u)*y**(b-v)
                   for a,b,c in terms if a>=u and b>=v)
                assert coefficient==0


def run():
    check(BASE,6,(4,3,3,2,2,2))
    bad=[
      ('zero_polynomial',[(0,0,0)],6,(4,3,3,2,2,2)),
      ('deleted_term',BASE[:-1],6,(4,3,3,2,2,2)),
      ('changed_coefficient',BASE[:-1]+[(3,3,2)],6,(4,3,3,2,2,2)),
      ('too_small_degree',BASE,5,(4,3,3,2,2,2)),
      ('too_large_origin_order',BASE,6,(5,3,3,2,2,2)),
      ('too_large_first_row',BASE,6,(4,4,4,2,2,2)),
      ('too_large_second_row',BASE,6,(4,3,3,3,3,3)),
      ('omitted_middle_condition',BASE,6,(4,3,3,2,2)),
      ('duplicate_monomial',BASE+[(3,3,1)],6,(4,3,3,2,2,2)),
      ('negative_exponent',[(-1,0,1)],6,(4,3,3,2,2,2)),
    ]
    rejected=[]
    for name,terms,d,orders in bad:
        try:check(terms,d,orders)
        except (AssertionError,ValueError):rejected.append(name)
        else:raise AssertionError('accepted corrupt witness: '+name)
    # Counterexamples to deleting assumptions are kept separate from certificate mutations.
    assert gcd(36,15)**4<3*36 and (3*15*14)%35==0
    assert 3*9>5
    assert (12*11*10//6)%3!=0
    return {'status':'PASS','valid_explicit_witnesses':1,'corrupt_witnesses_rejected':rejected,
            'count':len(rejected),'counterexample_scope':'W1+G4 do not replace ROW; the lone 3 in n=12 is cancelled'}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args()
    result=run();Path(a.out).write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'count':result['count']}))
