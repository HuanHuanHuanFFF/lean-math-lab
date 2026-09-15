"""Exact demonstrations of new nonzero coverage; not global historical comparison."""
from pathlib import Path
from math import gcd
import json,time,argparse
from math_core import make_n,coefficient,coefficient_recurrence,second_numerator,vp,phi
ROOT=Path(__file__).resolve().parents[1]
def run():
    start=time.perf_counter();out=[]
    for name in ['giant_row.json','resonant_row.json']:
        c=json.loads((ROOT/'evidence'/name).read_text());p,e,K,h,b,C=(c[k] for k in ['p','e','K','h','b','C']);Q=p**e;Y=p**K;n=make_n(p,e,K,h,b,C);d=p**h+b
        for B,S in [(2,1),(4,512)]:
            j=Q*(B*Y+S);g=gcd(n,j);alpha=n//g;beta=j//g;T=alpha*B**9-beta*(B**9+(d-B)**9);L=B*n-d*j
            k9=coefficient(n,j,B,d);k9b=coefficient_recurrence(n,j,B,d)
            assert phi(b,C,B,S)==0 and k9==k9b and k9!=0
            row={'row':name,'B':B,'S':S,'g_over_Q':g//Q,'old_edge_sufficient':2**213*j**7<=n**6*g**4,'chosen_old_d8_entrance':2**37*d**8<=n,'chosen_new_d6_entrance':2**26*d**6<=n,'distance':128*abs(L)**9<=n**6,'old_W_nonzero_test':T%Q!=0,'K9_full_p_valuation':vp(k9,p)}
            if name=='giant_row.json':
                assert not row['old_edge_sufficient'] and not row['chosen_old_d8_entrance'] and row['chosen_new_d6_entrance'] and row['distance'] and not row['old_W_nonzero_test']
                assert row['K9_full_p_valuation']==28
            else:
                delta=h-e;Td=second_numerator(b,C,B,S)-2520*p**delta*S*(b-B)**8
                assert row['K9_full_p_valuation']==2*e+vp(Td,p)
            out.append(row)
    return {'status':'PASS_NEW_EXACT_COMPARISONS_NO_CLAIM_ALL_OLD_METHODS','cases':out,'seconds':time.perf_counter()-start}
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',default=str(ROOT/'logs/boundaries.json'));a=ap.parse_args();out=run();Path(a.output).parent.mkdir(parents=True,exist_ok=True);Path(a.output).write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
