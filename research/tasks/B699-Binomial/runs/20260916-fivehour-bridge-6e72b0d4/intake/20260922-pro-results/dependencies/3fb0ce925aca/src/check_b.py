#!/usr/bin/env python3
import json, sys
from pathlib import Path

def eval_poly(cs,x):
    s=0
    for c in reversed(cs): s=s*x+c
    return s

def binom5_shift(y): return 48*(y+1)**5

def main(path):
    c=json.loads(Path(path).read_text())
    F=c['F5_coeff_ascending']
    if F != [2,25,150,280,200,48]: raise SystemExit('F5 mismatch')
    if c['lower_gap_coeff_ascending'] != [2,25,150,280,200]: raise SystemExit('lower gap mismatch')
    if c['upper_gap_coeff_ascending'] != [46,215,330,200,40]: raise SystemExit('upper gap mismatch')
    # independent value checks on a broad exact integer set, plus coefficient reconstruction via finite differences
    vals=[eval_poly(F,i) for i in range(6)]
    # recover degree<=5 coefficients from values using exact forward differences / Newton basis evaluation check
    cur=vals[:]; diffs=[]
    while cur:
        diffs.append(cur[0]); cur=[cur[i+1]-cur[i] for i in range(len(cur)-1)]
    if len(diffs)!=6 or diffs[-1] != 48*120: raise SystemExit('degree/lead mismatch')
    for y in list(range(0,80))+[127,255,1024,10**6+6]:
        Fy=eval_poly(F,y)
        if not 48*y**5 < Fy < binom5_shift(y): raise SystemExit(f'gap fail y={y}')
    r=c['residual_exponent']
    # algebraically the entire arithmetic progression is 4 mod 5
    if r['offset']%5 != 4 or r['step']%5 != 0: raise SystemExit('bad class mod5')
    print('PASS check_b')
if __name__=='__main__': main(sys.argv[1])
