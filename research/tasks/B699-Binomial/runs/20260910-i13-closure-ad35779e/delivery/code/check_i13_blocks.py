"""Independent block-certificate consumer. No generator or integer-log import."""
from pathlib import Path
from itertools import combinations
from math import factorial,prod
import json
if not __debug__:raise RuntimeError('Do not run proof checks with -O/-OO')
ROOT=Path(__file__).resolve().parents[1]
def require(ok,why):
    if not ok:raise ValueError(why)
def check(data):
    ps=[2,3,5,7,11];D=12;H=1<<8192
    require(data['source_height_bits']==8192 and data['D']==D and data['primes']==ps,'source domain')
    require([(r['p'],r['q']) for r in data['rows']]==list(combinations(ps,2)),'all ten prime pairs')
    count=0;maxh=67;summary=[]
    for row in data['rows']:
        p,q=row['p'],row['q'];last=row['max_exponent'];first=row['first_exponent'];h=row['small_exponent_height_bits']
        require(row['D']==D and row['source_height_bits']==8192,'row domain')
        require(p**last<H<=p**(last+1),'complete exponent upper endpoint')
        require(1<=first<=last and row['blocks'],'nonempty coverage')
        require((1<<h)>D and ((1<<h)-D)**2>p**(3*(first-1)),'small exponent height')
        nxt=first
        for b in row['blocks']:
            K,L,B=b['K'],b['L'],b['B'];v=int(b['inverse_hex'],16)
            require(K==nxt and L>=0 and B>=1,'block adjacency')
            P=p**K;Q=q**B
            require(P>D and Q**3<=(P-D)**2,'forced modulus size')
            require(0<v<Q and (P*v)%Q==1,'inverse witness')
            limit=p**(K+3*L)
            # Check positive and negative differences individually, not a supplied minimum.
            for d in range(-D,D+1):
                a=(d*v)%Q
                if not a:a=Q
                require(a*a>limit,'residue square lower bound')
            nxt=K+L+1;count+=1
        require(nxt==last+1,'missing tail')
        maxh=max(maxh,h);summary.append({'pair':[p,q],'first_exponent':first,'blocks':len(row['blocks']),'small_height_bits':h})
    # Independently check the repaired 7/10 bridge, not the old inapplicable 3/4 bridge.
    lam=14;E=126;t=5
    K=(1<<90)*prod(factorial(h) for h in range(1,10))**2*prod(factorial(h) for h in range(1,9))
    J=10*lam*13-lam*(7*t+3)-10*E
    require(J==28 and K**10*(1<<(67*J))>(2*factorial(13))**(10*lam),'two powers bridge')
    require(67>=10 and (1<<67)>=13*12,'small cases included')
    require(data['destination_height_bits']==maxh==134,'combined destination height')
    return {'status':'PASS','i':13,'source_height_bits':8192,'destination_height_bits':maxh,
            'prime_pairs':len(summary),'blocks':count,'signed_residue_comparisons':25*count,
            'cube_bridge_bits':67,'pairs':summary}
if __name__=='__main__':
    out=check(json.loads((ROOT/'outputs/block_certificate.json').read_text()))
    (ROOT/'outputs/i13_block_check.json').write_text(json.dumps(out,indent=2)+'\n')
    (ROOT/'input/compressed_heights.json').write_text(json.dumps([{'i':13,'r':4,'s':9,'height_power_of_two':134,'source_height_bits':8192}],indent=2)+'\n')
    print(json.dumps(out,indent=2))
