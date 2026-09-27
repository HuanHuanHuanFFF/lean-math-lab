#!/usr/bin/env python3
"""Bounded diagnostics on four frozen old inputs; NOT a frontier search."""
import json,sys
from pathlib import Path
sys.set_int_max_str_digits(0)
R=Path(__file__).resolve().parents[1]
sieve=bytearray(b'\1')*20000;sieve[:2]=b'\0\0'
for i in range(2,142):
    if sieve[i]:sieve[i*i::i]=b'\0'*len(sieve[i*i::i])
ps=[p for p in range(7,20000) if sieve[p]]
rows=[]
for d in json.loads((R/'sources/R8_canonical_factor_pairs.json').read_text()):
    found=[]
    for r in (3,4):
        for p in ps:
            if (d['n']-r)%p:continue
            if pow(3,(p-1)//2,p)!=1 or (r==4 and pow(2,(p-1)//2,p)!=1):continue
            if all(pow(d[key]%p,(p-1)//2,p)==p-1 for key in ['alpha_X','alpha_Y']):found.append({'r':r,'p':p})
    rows.append({'frozen_a':d['a'],'n_bit_length':d['n'].bit_length(),'found':found})
print(json.dumps({'prime_bound_exclusive':20000,'frozen_original_inputs':4,'current_frontier_scan':False,
    'historical_net_deletion':0,'results':rows},sort_keys=True,indent=2))
