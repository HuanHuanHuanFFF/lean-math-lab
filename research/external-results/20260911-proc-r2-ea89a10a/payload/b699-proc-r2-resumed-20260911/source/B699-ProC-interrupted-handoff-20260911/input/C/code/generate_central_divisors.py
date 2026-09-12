#!/usr/bin/env python3
"""Generate optimized central-strip certificates from the proved divisor sieve.
The earlier complete-height certificate is used only to recycle witnesses;
its correctness is not trusted by the standalone verifier of this output.
"""
from pathlib import Path
import json,time
from central_kernel import factor,c,kernel
ROOT=Path(__file__).resolve().parents[1]

def divisors(M):
    ds=[1]
    for p,e in factor(M).items():
        ds=[x*p**k for x in ds for k in range(e+1)]
    return sorted(ds)

def main():
    ts=time.monotonic()
    baseline=json.loads((ROOT/'evidence/central-band-certificate.json').read_text())
    lookup={(i,d,n):(p,h) for i,d,n,p,h in baseline['witnesses']}
    rows=[];ws=[]
    for i in range(2,15):
        for d in range(9):
            M=c(i)*kernel(i,d)
            ds=[D for D in divisors(M) if D%2]
            candidates=sorted({D+a for D in ds for a in range(i)
                    if (D+a-d)%2==0 and D+a>=2*i+2+d})
            start=len(ws)
            for n in candidates:
                p,h=lookup[(i,d,n)];ws.append([i,d,n,p,h])
            rows.append({'i':i,'d':d,'c':c(i),'K':kernel(i,d),'M':M,
                         'witness_start':start,'witness_count':len(candidates)})
    cert={'status':'FINITE_DIVISOR_REMAINDERS_OF_PROVED_UNBOUNDED_DIVISIBILITY',
          'D':8,'rows':rows,'witnesses':ws,'total_checked':len(ws)}
    (ROOT/'evidence/central-divisor-certificate.json').write_text(json.dumps(cert,separators=(',',':'))+'\n')
    summary={'status':'GENERATED_FOR_STANDALONE_CHECK','cells':len(rows),'pairs':len(ws),
             'earlier_height_pairs':len(baseline['witnesses']),'seconds':time.monotonic()-ts}
    (ROOT/'evidence/central-divisor-generation.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(summary)
if __name__=='__main__':main()
