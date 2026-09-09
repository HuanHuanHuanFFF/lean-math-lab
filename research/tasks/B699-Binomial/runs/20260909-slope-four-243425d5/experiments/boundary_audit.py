"""Optional exact audit: p=i witnesses need not be the only common primes.
These prime-base lists are NOT used in any full-prime-power transfer proof.
"""
from pathlib import Path
from math import comb,gcd,isqrt
import json
ROOT=Path(__file__).resolve().parent
w=json.loads((ROOT/'witnesses.json').read_text())
out=[]
for a in w['witnesses']:
    if a['p']==a['i']:
        i,j,n=a['i'],a['j'],a['n']; g=gcd(comb(n,i),comb(n,j))
        fs=[p for p in range(2,n+1)
            if all(p%d for d in range(2,isqrt(p)+1)) and g%p==0]
        out.append(dict(i=i,j=j,n=n,gcd=str(g),all_common_prime_bases=fs,
                        common_prime_bases_ge_i=[p for p in fs if p>=i]))
(ROOT/'boundary-audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
