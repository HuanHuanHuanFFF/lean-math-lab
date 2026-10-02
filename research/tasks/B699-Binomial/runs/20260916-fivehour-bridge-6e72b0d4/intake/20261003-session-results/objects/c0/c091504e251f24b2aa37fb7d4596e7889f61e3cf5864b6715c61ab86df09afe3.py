#!/usr/bin/env python3
"""Regression guards. Examples test implementation, not the infinite theorems."""
import sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
from fractions import Fraction as F
import json
from consume import filter_base,audit_base
from original_pair_audit import audit
T=[]
def test(name,condition):
    if not condition:raise AssertionError(name)
    T.append(name)
for x in [(0,2,1),(1,2,1),(2,0,1),(2,1,1),(2,2,0)]:
    test('basic domain '+str(x),filter_base(*x)['status']=='INVALID_BASIC_NONZERO_DOMAIN')
for v in [F(0),F(2),F(-2),F(3),F(1,2)]:
    u=(1-v*v)/4;y=(v+1)**2/(2*(v-1));a=filter_base(u,y,1)
    test('entire J branch parameter '+str(v),a['status']=='EXCLUDED_J_REAL_BASE' and not a['NC3_certified'])
for v in [F(0),F(1),F(2),F(3),F(5),F(-1)]:
    u=(v**3-30*v+65)/(2*v-5)**2;y=-5*(v-4)**2/((2*v-5)*(v*v-10));a=filter_base(u,y,1)
    test('entire A5 branch parameter '+str(v),a['status'] in ['EXCLUDED_A5_RATIONAL_BASE','EXCLUDED_J_REAL_BASE'])
for x in [(2,2,1),(-3,2,2),(F(3,2),F(4,3),F(5,7))]:
    a=audit_base(*x)
    test('generic not called NC or full closure '+str(x),a['status']=='UNRESOLVED_BY_R5_BRANCH_FILTERS' and not a['NC3_certified'] and not a['inherited_full_recovery_audit']['NC3_certified'])
for x in [2.0,True,complex(2,0)]:
    try:filter_base(x,2,1)
    except TypeError:ok=True
    else:ok=False
    test('inexact input rejected '+repr(x),ok)
a=filter_base('1/4','-1/2','1/999999999999999999999999999999')
test('arbitrary rational r denominator retained',a['status']=='EXCLUDED_J_REAL_BASE')
a=audit(36,4,[[0,3,2]])
test('p=i complete 3^2 retained',a['sources'][0]['actual_full_exponent']==2 and a['sources'][0]['status']=='FULL_SOURCE_POWER_VERIFIED')
a=audit(36,4,[[0,3,1]])
test('truncated source power rejected',a['sources'][0]['status']=='REJECT_NOT_ACTUAL_COMPLETE_SOURCE_POWER')
test('source audit not complete NC certificate',not a['NC3_certified'] and not a['complete_source_coverage'])
print(json.dumps({'status':'PASS','checks':len(T),'checked':T,'examples_not_theorem_proofs':True},ensure_ascii=False,indent=2))
