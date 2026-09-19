#!/usr/bin/env python3
"""Small original-binomial regressions; not a proof of unrestricted consumers."""
from __future__ import annotations
from math import comb,gcd
from pathlib import Path
import json, importlib.util
spec=importlib.util.spec_from_file_location('consumer',Path(__file__).with_name('consumer.py'))
c=importlib.util.module_from_spec(spec);spec.loader.exec_module(c)

def qualified_gcd(n,j,i):
    a=gcd(comb(n,i),comb(n,j))
    for p in (2,3,5):
        if p>=i:continue
        while a%p==0:a//=p
    return a>1

assert c.small_part(125,5)==1
assert c.small_part(25,5)==1
assert c.small_part(5,5)==5
assert c.small_part(125,6)==125
assert not c.certify_pair(1280,6,6)['certified']
assert not c.certify_pair(100,20,5)['certified']
checked=accepted=0
for n in range(12,601):
    if n%72 not in (18,56):continue
    for j in range(6,n//2+1):
        checked+=1;v=c.certify_pair(n,j,5)
        if v['certified']:
            assert qualified_gcd(n,j,5)
            accepted+=1
for n in (1280,1530):
    for j in (7,11,n//3,n//2):
        assert qualified_gcd(n,j,6)
        v=c.certify_pair(n,j,6)
        if v['certified']:accepted+=1
        checked+=1
root=Path(__file__).resolve().parents[1]
e=json.loads((root/'evidence/verification.json').read_text())['example']
for i in (5,6):
    assert c.certify_pair(e['n'],e['j'],i)['certified']
print(json.dumps({'status':'PASS_BOUNDED_REGRESSIONS','checked_original_inputs':checked,
                  'consumer_acceptances_in_bounded_tests':accepted,'large_example_consumer_tests':2,
                  'meaning':'bounded implementation tests, not unrestricted mathematical coverage'},indent=2))
