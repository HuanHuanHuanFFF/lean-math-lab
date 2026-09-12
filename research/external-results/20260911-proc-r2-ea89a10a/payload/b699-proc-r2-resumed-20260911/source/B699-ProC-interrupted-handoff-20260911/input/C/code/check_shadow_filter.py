#!/usr/bin/env python3
"""Small exhaustive cross-check of the C++ i=3 candidate filter."""
from pathlib import Path
from math import comb,gcd
import argparse,subprocess,json
ROOT=Path(__file__).resolve().parents[1]

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--binary',type=Path,default=ROOT/'_build/probe_content_shadow');ap.add_argument('--N',type=int,default=500)
    args=ap.parse_args();N=args.N
    if not 8<=N<=5000:raise ValueError('small cross-check requires 8 <= N <= 5000')
    count=0;filtered=0;shadows=[]
    for n in range(8,N+1):
        odd=n
        while odd%2==0:odd//=2
        step=odd//gcd(odd,3)
        listed=set(range(((4+step-1)//step)*step,n//2+1,step))
        direct=set()
        for j in range(4,n//2+1):
            d=n//gcd(n,3*j)
            if d&(d-1)==0:direct.add(j)
        assert listed==direct
        filtered+=len(listed)
        for j in range(4,n//2+1):
            k=n-j;C=comb(n,3)
            H=gcd(gcd(comb(j,3),comb(k,3)),gcd(j*comb(k,2),k*comb(j,2)))
            L=C//H;count+=1
            if L&(L-1)==0:
                assert j in listed;shadows.append([n,j,H,L])
    log=subprocess.check_output([str(args.binary.resolve()),str(N),str(ROOT/'evidence/i3-content-shadow-small.tsv')],text=True).strip()
    assert f'tested={filtered} ' in log and f'shadow_survivors={len(shadows)}' in log
    out={'status':'PASS_SMALL_EXHAUSTIVE_VS_FILTERED_CPP','n_max':N,'unfiltered_pairs':count,'filtered_pairs':filtered,'survivors':shadows,'cpp_output':log}
    (ROOT/'evidence/content-shadow-crosscheck.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()
