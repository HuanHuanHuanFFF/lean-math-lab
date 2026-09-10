#!/usr/bin/env python3
"""Diagnostic: test a p=3-only hypothesis for two necessary constraints; no universal conclusion."""
import json, math
from pathlib import Path
from local_digit_probe import spf_sieve, factor, carries, blocks

def run(N):
    spf=spf_sieve(N); results=[]; sample_not3=[]; sample_row0=[]
    total=0; total_not3=0; total_row0=0
    for n in range(8,N+1,4):
        D=n-1; M=D//math.gcd(D,3)
        residues=[0]; modulus=1
        for p,a,q in factor(M,spf):
            inv=pow(modulus,-1,q)
            residues=[v+modulus*((s-v)*inv%q) for v in residues for s in (0,1)]
            modulus*=q
        for v in residues:
            for j in range(v,n//2+1,modulus):
                if j<=3:continue
                if 6*j*(j-1)*(j-2)%(n-2):continue
                total+=1
                rec={'n':n,'j':j,'p3_common':bool(carries(n,3,3) and carries(n,j,3)),
                     'b0':j//math.gcd(n-1,j),'b1':(j-1)//math.gcd(n-1,j-1)}
                if len(results)<20:results.append(rec)
                if not rec['p3_common']:
                    total_not3+=1
                    if len(sample_not3)<10: sample_not3.append(rec)
                if all(j%q<=r for p,a,q,r,e in blocks(n,3,spf) if r==0):
                    total_row0+=1
                    if len(sample_row0)<20:sample_row0.append(rec)
    return {'N':N,'total_relaxed_survivors':total,'total_not_common_at_3':total_not3,'total_passing_bottom_row0':total_row0,'first_relaxed_survivors':results,'counterexamples_to_p3_only_claim':sample_not3,'first_also_passing_bottom_row0':sample_row0}
if __name__=='__main__':
    out=run(100000)
    p=Path(__file__).resolve().parents[1]/'evidence'/'relaxed_local_100000.json'
    p.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
