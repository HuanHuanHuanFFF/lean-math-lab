"""Cheap sufficient condition: four gcds, no factorization of a large integer."""
import argparse,json
from common import scope,missing_slot_consumer,small_part
import math
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('n',type=int);p.add_argument('j',type=int);p.add_argument('--i',type=int,required=True,choices=(5,6));a=p.parse_args()
    legal=scope(a.n,a.i)and a.i<a.j<=a.n//2
    q=(a.n-3)//small_part(a.n-3,a.i)if legal else None
    print(json.dumps({'in_scope':legal,'author_theorem_sufficient':missing_slot_consumer(a.n,a.j,a.i),'row3_blocks':[math.gcd(q,a.j-b)for b in range(4)]if legal else None,'not_a_Lean_certificate':True}))
