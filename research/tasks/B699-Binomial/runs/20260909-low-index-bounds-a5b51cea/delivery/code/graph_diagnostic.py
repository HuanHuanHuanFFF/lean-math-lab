"""Exact finite optimization of the max-cofactor inequalities in the two BFT tables.
The source theorems, especially their height thresholds, are external inputs.
"""
import itertools,json,math
from fractions import Fraction as F
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PRIMES=[2,3,5,7,11,13]
EXPLICIT={(2,3):285,(2,5):258,(2,7):259,(2,11):59,(2,13):54,
 (3,5):216,(3,7):38,(3,11):329,(3,13):231,(5,7):227,(5,11):199,(5,13):163,(7,13):98,(11,13):37}
EFFECTIVE={(2,3):2921,(2,5):2679,(2,7):2757,(2,11):698,(2,13):798,
 (3,5):2238,(3,7):505,(3,11):3453,(3,13):2372,(5,7):2667,(5,11):2091,(5,13):1838,(7,13):1243,(11,13):729}

def optimize(ps,edges,den):
    best=None;winner=None;vec=None;count=0
    for order in itertools.permutations(ps):
        z=[]
        for p in order:
            threshold=max([0]+[edges.get(tuple(sorted((p,q))),0) for q in order[:len(z)]])
            z.append(max(threshold,z[-1] if z else 0))
        count+=1
        if best is None or sum(z)<best:best=sum(z);winner=list(order);vec=z
    if not ps:return {'sigma':'0','permutations':1,'witness_order':[],'witness_numerators':[]}
    zz=dict(zip(winner,vec))
    assert all(max(zz[a],zz[b])>=w for (a,b),w in edges.items() if a in ps and b in ps)
    return {'sigma':str(F(best,den)),'permutations':count,'witness_order':winner,'witness_numerators':vec,'denominator':den}

def isprime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def best_ratio(i):
    return min((F(s*(s+1)+(i-r-1)*(i-r)//2,2*s-r),r,s)
        for r in range(i) for s in range(1,i) if 2*s>r)

def main():
    tables={}
    for name,E,den in [('Theorem_2_1',EXPLICIT,1000),('Corollary_2_3',EFFECTIVE,10000)]:
        tables[name]=[optimize(PRIMES[:m],E,den) for m in range(1,7)]
    rows=[]
    R=list(range(3,28))+[30,32,33]
    for i in R:
        ps=[p for p in PRIMES if p<i];t=sum(isprime(p) for p in range(2,i))
        ratio,r,s=best_ratio(i)
        sexp=F(optimize(ps,EXPLICIT,1000)['sigma'])
        seff=F(optimize(ps,EFFECTIVE,10000)['sigma'])
        rows.append({'i':i,'t':t,'best_two_cutoff_ratio':str(ratio),'r':r,'s':s,
          'needed_sigma_strictly_above':str(t-i+ratio),'explicit_table_sigma':str(sexp),
          'effective_table_sigma':str(seff),'positive_with_explicit_table':i-t+sexp-ratio>0,
          'positive_with_effective_table':i-t+seff-ratio>0})
    out={'scope':'Exact max-constraint relaxation; Corollary 2.3 threshold x0(32) is NOT numerically instantiated',
         'tables':tables,'index_classification':rows}
    (ROOT/'outputs/graph_diagnostic.json').write_text(json.dumps(out,indent=2)+'\n')
    print('Explicit table, 6 primes:',tables['Theorem_2_1'][-1])
    print('Effective table, 6 primes:',tables['Corollary_2_3'][-1])
    print('Positive explicit:',[r['i'] for r in rows if r['positive_with_explicit_table']])
    print('Positive effective:',[r['i'] for r in rows if r['positive_with_effective_table']])
if __name__=='__main__':main()
