"""Alternative finite-prefix check, directly in the original n,j variables."""
from math import gcd
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]

def run():
    pairs=0; shape=0; projections=0; selected=[]
    for n in range(12,4097,4):
        M=n//2-1
        la=3 if (n-1)%3==0 and (n-1)%9 else 1
        mu=3 if M%3==0 and M%9 else 1
        N=(n-1)//la;K=M//mu
        for j in range(4,n//2):
            pairs+=1
            g=gcd(n,j);al=n//g
            odd=al//(al&-al)
            if odd not in (1,3) or (odd==3 and g%3==0):continue
            shape+=1
            if j*(j-1)%N or j*(j-1)*(j-2)%K:continue
            projections+=1
            Cs=[gcd(K,j-r) for r in range(3)]
            if any(C in (5,7) for C in Cs):selected.append([n,j,Cs])
    assert selected==[]
    return {'status':'PASS','n_max':4096,'multiples_of_four_only':True,'legal_strict_center_pairs':pairs,'alpha_shape_pairs':shape,'projection_pairs':projections,'C5_or_C7_remaining':selected,'scope':'finite completeness for small allocation consumer, not a universal noCommon equivalence'}
if __name__=='__main__':
    o=run();(ROOT/'outputs/prefix-independent-check.json').write_text(json.dumps(o,indent=2)+'\n');print(json.dumps(o))
