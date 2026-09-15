"""Unused constant-optimization probe; never run by reproduce.py."""
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
p=11;cycle=[1];x=p%400
while x!=1:cycle.append(x);x=x*p%400
rows=[]
for h in range(len(cycle)):
    for K in range(len(cycle)):
        for b in range(1,p):
            C=(-cycle[(h+K)%len(cycle)]-b*cycle[K])%400
            if 1<=C<p:rows.append([h,K,b,C])
out={'status':'UNUSED_DISCOVERY_NOT_A_PROOF_INPUT','p':11,'modulus':400,'period':len(cycle),'residue_rows':rows,'count':len(rows)}
(ROOT/'evidence/unused_p11_probe.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({k:v for k,v in out.items() if k!='residue_rows'}))
