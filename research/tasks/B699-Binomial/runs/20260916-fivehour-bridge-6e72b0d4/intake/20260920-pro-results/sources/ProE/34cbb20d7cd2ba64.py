#!/usr/bin/env python3
from __future__ import annotations
import sys
sys.dont_write_bytecode = True
import json
from pathlib import Path
from check_primary import source_polys, factor, example_record

def generate():
    endpoints=[]
    for x in (2,4):
        f=factor(x**6-1)
        endpoints.append({'x':x,'factorization':[[p,e] for p,e in f.items()],
                          'eligible':sorted(p**e for p,e in f.items() if p%2 and p**e>=11)})
    cases=[(1,7,None,True,'C6'),(1,13,None,True,'C6'),(1,19,None,True,'C6'),
           (1,771,None,True,'CYC'),(1,911,910,True,'CYC'),(1,2171,None,True,'CYC'),
           (1,3,None,False,None),(1,5,None,False,None),(1,11,None,False,None),
           (1,71,None,False,None),(1,6,None,False,None),(3,771,None,False,None)]
    return {
      'version':'B699-BINARY-CYC-1',
      'contract':{'canonical_minimal_branch_only':True,'whole_row_claim':False,
                  'distinct_full_odd_prime_powers':True,'source_minimum':11,
                  'old_high_side_bound':'4*v>Q','D_squarefree_required':True,
                  'D_even_required':True,'D_coprime_to_3_required':True},
      'n_shift':2,'residual_degree_bounds':[3,4,2,1],
      'polynomials':source_polys(),
      'constants':{'infinite_product_lower':[147,512],'cyclotomic_upper_constant':4,
                   'totient_two_odd_min':[12,35],'D_gap_threshold':8,
                   'ramified_cofactor_minimum':70},
      'small_endpoints':endpoints,
      'examples':[example_record(p) for p in (11,13,17,19,23,29,31)],
      'diagnostics':{
         'cross_3':{'x':8,'factors':[7,9,73,57],'full_three_power':27},
         'without_coprime_3':{'x':6,'P':43,'Q':31,'product':1333,'cap':1295},
         'composite_blocks':{'x':8,'U':27,'V':9709},
         'm10':{'m':10,'M':1023,'P':31,'Q':11,'C_cube':39651821,'M_square':1046529,'nu':6,'v':[625,6]}
      },
      'consumer_tests':[{'c':c,'s':s,'D':D,'closed':closed,'theorem':thm} for c,s,D,closed,thm in cases]
    }
if __name__=='__main__':
    path=Path(__file__).parent/'certificates/evidence.json'
    path.write_text(json.dumps(generate(),ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(path.name)
