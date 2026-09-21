#!/usr/bin/env python3
"""Exploratory, NOT a theorem: finite exponent-period sieve of F5(y)=3*2^S.
Optional replay uses SymPy. The universal mirror proof is in PROOFS §11.
"""
import json,argparse,math
from pathlib import Path
import sympy as s

def value(x,m):
    z=48
    for c in (200,280,150,25,2):z=(z*x+c)%m
    return z

def main():
    p=argparse.ArgumentParser();p.add_argument('--output',required=True);a=p.parse_args()
    out=Path(a.output)
    if out.exists():raise SystemExit('Refusing overwrite')
    cache={};rows=[]
    for period in [15000,30000,60000,120000,22500,67500,202500,607500,180000,540000,1620000,4860000,14580000]:
        primes=[int(d+1) for d in s.divisors(period) if d>1 and d+1<=300000 and d+1!=5 and s.isprime(d+1)]
        states={7494+i*7500 for i in range(period//7500)};trace=[]
        for q in primes:
            if q not in cache:cache[q]={value(y,q) for y in range(q)}
            new={ex for ex in states if 3*pow(2,ex,q)%q in cache[q]}
            if len(new)!=len(states):trace.append({'prime':q,'before':len(states),'after':len(new)})
            states=new
        rows.append({'period':period,'remaining_residues':sorted(states),'trace':trace})
    result={'status':'EXPLORATORY_ONLY','original_n_enumeration':False,
            'interpretation':'The surviving -6 classes are explained by F5(-5/4)=3/64; no closure.',
            'rows':rows}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(json.dumps({'status':'RECORDED','periods':len(rows),'max_period':max(r['period'] for r in rows)}))
if __name__=='__main__':main()
