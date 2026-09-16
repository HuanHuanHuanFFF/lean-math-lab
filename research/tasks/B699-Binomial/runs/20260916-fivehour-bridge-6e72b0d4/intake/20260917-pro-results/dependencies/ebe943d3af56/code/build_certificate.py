"""Discovery/serialization of the NEW finite obligations; no old replay."""
from pathlib import Path
from fractions import Fraction as Q
from itertools import product
import json
from algebra import uadd, umul, uscale, ueval, coefficients_case
ROOT=Path(__file__).resolve().parents[1]


def lagrange(values):
    out=[Q(0)]
    for r,v in zip(range(3,8),values):
        poly=[Q(1)]; den=1
        for s in range(3,8):
            if s!=r:
                poly=umul(poly,[-s,1]); den*=r-s
        out=uadd(out,uscale(poly,Q(v,den)))
    return out+[Q(0)]*(5-len(out))


def make_certificate():
    table=[]
    for seed in product(*(range(r//2+1) for r in range(3,8))):
        roots=[s*(r-s) for r,s in zip(range(3,8),seed)]
        p=lagrange([x*x for x in roots])
        hits=[s for s in range(5) if ueval(p,8)==(s*(8-s))**2]
        table.append({'seed':list(seed),'coeffs':[[c.numerator,c.denominator] for c in p], 'hits8':hits})
    pp=[1]
    for r in range(3,9): pp=umul(pp,[-r,1])
    aa=[100,0,0,0,100];bb=[1,1,0,0,1];cc=uscale(umul([0,0,1],pp),-1)
    disc=uadd(umul(bb,bb),uscale(umul(aa,cc),-4))
    return {'schema':'B699-A-COMPONENT-OBSTRUCTIONS-v1',
      'constants':{'entry_bits':14000001,'factor_norm_bits':1290000,
        'content_norm_bits':1291000,'joint_constant_bits':155000,
        'joint_n_power':26,'joint_J_power':14,'lower_J_power':[7,4],
        'runge_threshold_coefficient':4096,'runge_threshold_norm_power':10,
        'approx_error_constant':128,'approx_error_H_power':6,
        'denominator_H_power':4,'remainder_H_power':9,
        'source_value_bits':915,'source_cost_bits':11,
        'source_degree_cap':305,'X_degree_cap':152},
      'quartic_graph_table':table,
      'canonical_integer_tuples':{
        'case0':{'variables':['c','d','b','f','e','h'],
          'D':[[1,[1,3,0,0,0,0]]], 'U':[[-1,[0,4,0,0,0,0]]],
          'V':[[-1,[0,3,1,0,0,0]],[1,[1,2,0,0,1,0]]],
          'W':[[-1,[0,3,0,1,0,0]],[1,[1,2,0,0,0,1]],[-1,[1,1,1,0,1,0]],[1,[2,0,0,0,2,0]]]},
        'case1':{'variables':['c','c0','d','b','f','e'],
          'D':[[1,[3,0,1,0,0,0]]], 'U':[[-1,[2,0,2,0,0,0]]],
          'V':[[1,[1,1,2,0,0,0]],[-1,[2,0,1,1,0,0]]],
          'W':[[-1,[2,0,1,0,1,0]],[-1,[0,2,2,0,0,0]],[1,[1,1,1,1,0,0]],[1,[3,0,0,0,0,1]]]}},
      'unresolved_test_curve':{'A':aa,'B':bb,'C':cc,'discriminant':disc,'prime':101},
      'boundary_degree4':{'coefficients':[[16,[0,2]],[-8,[2,1]],[1,[4,0]],[-1,[1,0]]],
        's_slope':110,'s_intercept':90,'v_start':10000,'common_prime':11}}

if __name__=='__main__':
    target=ROOT/'evidence/new_certificate.json'
    target.write_text(json.dumps(make_certificate(),indent=2))
    print('BUILT',target.name)
