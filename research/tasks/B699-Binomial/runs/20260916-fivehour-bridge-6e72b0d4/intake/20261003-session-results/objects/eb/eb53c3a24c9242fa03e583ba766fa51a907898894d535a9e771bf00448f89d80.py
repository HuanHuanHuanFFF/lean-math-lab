"""Certificate checking only: no import of block generator or its integer-log routine."""
from pathlib import Path
from itertools import combinations
from math import factorial,prod
import json,time
ROOT=Path(__file__).resolve().parents[1]

def require(x,msg):
    if not x:raise ValueError(msg)

def check(data):
    ps=[2,3,5,7,11,13,17,19,23]
    require(data['source_height_bits']==11001 and data['D']==24 and data['primes']==ps,'source domain')
    require([(r['p'],r['q']) for r in data['rows']]==list(combinations(ps,2)),'pair coverage')
    H=1<<11001;count=0
    for row in data['rows']:
        p,q,D=row['p'],row['q'],row['D'];last=row['max_exponent'];first=row['first_exponent'];h=row['small_exponent_height_bits']
        require(D==24 and row['source_height_bits']==11001,'pair domain')
        require(p**last<H<=p**(last+1),'large-exponent endpoint')
        require(1<=first<=last and row['blocks'],'nonempty exponent cover')
        require((1<<h)>D and ((1<<h)-D)**2>p**(3*(first-1)),'small exponent absolute bound')
        nxt=first
        for b in row['blocks']:
            K,L,B=b['K'],b['L'],b['B'];require(K==nxt and L>=0 and B>=1,'block gap or reversed range')
            P=p**K;Q=q**B;v=int(b['inverse_hex'],16)
            require(P>D and Q**3<=(P-D)**2,'modulus below forced q-power')
            require(0<v<Q and (P*v)%Q==1,'modular inverse witness')
            # Different than the generator: verify the bound separately for EVERY residue,
            # rather than trusting a computed minimum or an attainer.
            threshold=p**(K+3*L)
            for shift in range(-D,D+1):
                residue=(shift*v)%Q
                if residue==0:residue=Q
                require(residue*residue>threshold,'positive residue too small')
            nxt=K+L+1;count+=1
        require(nxt==last+1,'missing tail exponents')
    per=[]
    for i,r,s in [(19,6,13),(22,7,15),(24,7,16),(25,8,17)]:
        t=sum(p<i for p in ps);lam=2*s-r;ell=i-r-1
        E=s*(s+1)+ell*(ell+1)//2
        K=(1<<(s*(s+1)))*prod(factorial(h) for h in range(1,s+1))**2*prod(factorial(h) for h in range(1,ell+1))
        J=4*lam*i-lam*(3*t+1)-4*E
        require(J>0 and K**4*(1<<(49*J))>(2*factorial(i))**(4*lam),'two large powers beyond 2^49')
        require((1<<49)>=max(16,i*(i-1)),'two large powers small branch')
        h=max([49]+[x['small_exponent_height_bits'] for x in data['rows'] if x['q']<i])
        per.append(dict(i=i,height_power_of_two=h,r=r,s=s,
            source_height_bits=11001,verified_pair_count=sum(x['q']<i for x in data['rows'])))
    require(max(p['height_power_of_two'] for p in per)==data['destination_height_bits'],'destination max')
    return dict(status='PASS',blocks_checked=count,residue_inequalities=count*49,
       profiles=per,independence='Checks inverse witnesses and every signed residue; no integer logarithms; no generator imports')
if __name__=='__main__':
    ts=time.monotonic();data=json.loads((ROOT/'outputs/block_certificate.json').read_text());out=check(data)
    (ROOT/'outputs/block_check.json').write_text(json.dumps(out,indent=2))
    (ROOT/'input/compressed_heights.json').write_text(json.dumps(out['profiles'],indent=2))
    print(json.dumps(dict(**out,seconds=time.monotonic()-ts),indent=2))
