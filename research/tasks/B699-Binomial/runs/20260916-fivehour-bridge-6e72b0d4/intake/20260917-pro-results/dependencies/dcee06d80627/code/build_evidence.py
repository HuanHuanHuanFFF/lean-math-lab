"""Discovery/regression evidence; universal statements are proved in notes/PROOFS.md."""
import argparse,json,random,hashlib
from pathlib import Path
from itertools import product
from math import gcd,comb
from fractions import Fraction as F
from algebra import *

def main(out):
    out.mkdir(parents=True,exist_ok=True);rng=random.Random(6990316)
    def write(n,o):(out/n).write_text(json.dumps(o,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    weighted=[]
    for z in range(360):
        p=rng.choice([2,3,5,7]);k=rng.randrange(1,9);f=rng.randrange(1,6)
        a=trim([F(rng.randrange(-9,10),p**rng.randrange(3)) for _ in range(rng.randrange(1,9))])
        b=trim([F(rng.randrange(-9,10),p**rng.randrange(3)) for _ in range(rng.randrange(1,9))])
        if a==[0] or b==[0]:continue
        ea=extremal(a,p,k,f);eb=extremal(b,p,k,f);ec=extremal(mul(a,b),p,k,f)
        assert ec==[ea[i]+eb[i] for i in range(3)]
        weighted.append({'p':p,'k':k,'f':f,'a':list(map(str,a)),'b':list(map(str,b)),'extremal_product':ec})
    write('weighted-products.json',weighted)
    counts={'exhaustive_templates':0,'proper_partitions':0,'nonzero_pseudo_remainders':0,'coprime_resultants':0}
    transcript=hashlib.sha256()
    for p,f in [(3,1),(3,2),(5,1)]:
        T=p**f
        for k in range(1,4):
            for aa in product(range(3),repeat=k+1):
                if not aa[0] or not aa[-1] or aa[-1]%p==0:continue
                counts['exhaustive_templates']+=1
                ff=sub(scale(aa,T),[1]);S=sum(aa);S2=sum(x*x for x in aa)
                bound=3*S*(T*S+1)*(T*S)**(k+1)
                for bb in product(*(range(c+1) for c in aa)):
                    if not any(bb) or tuple(bb)==aa:continue
                    counts['proper_partitions']+=1
                    jj=scale(bb,T);gg=scale(mul(bb,sub(jj,[1])),3)
                    r,q=pseudorem(gg,ff,k+1)
                    assert r!=[0] and len(r)<len(ff) and norm1(r)<=bound
                    assert add(mul(q,ff),r)==scale(gg,ff[-1]**(k+1))
                    assert divrem_q(mul(jj,sub(jj,[1])),ff)[1]!=[0]
                    counts['nonzero_pseudo_remainders']+=1
                    if gcd(k,f)==1:
                        rr=3**k*resultant(ff,bb)*resultant(ff,sub(aa,bb))
                        assert rr and 2**k*abs(rr)<=(3*T*T*S2*S2)**k
                        counts['coprime_resultants']+=1
                    transcript.update(str((p,f,aa,bb,r)).encode())
    counts['transcript_sha256']=transcript.hexdigest();write('template-regression.json',counts)
    rows=[]
    configurations=[(5,1,[1,2,1]),(7,1,[1,2,1,1]),(5,2,[1,3,2]),
       (3,2,[1,2,1]),(5,2,[2,1,2,1]),(5,3,[1,3,2,1]),
       (7,2,[1,0,2,1,1]),(5,1,[1,1,1,1,1,1,1,1,1]),
       (5,2,[24,24,24]),(7,3,[342,342,342,342,342])]
    for p,f,aa in configurations:
        T=p**f;k=len(aa)-1;S=sum(aa);S2=sum(a*a for a in aa)
        generic=6*S*(T*S+1)*(T*S)**(k+1)
        fast=(3*T*T*S2*S2+1)//2
        route='fast' if gcd(k,f)==1 else 'general'
        cutoff=fast if route=='fast' else generic
        X=1;e=0
        while X<cutoff:X*=p;e+=1
        n=T*ev(aa,X)
        # Enumerate all numerical block subvectors only for small coefficients.
        volume=1
        for a in aa:volume*=a+1
        if volume<=1024:
            bs=[list(b) for b in product(*(range(a+1) for a in aa)) if any(b) and list(b)!=aa]
            scope='all numerical block subvectors, a superset of digitwise-admissible ones'
        else:
            bs=[[0]*(k+1) for _ in range(4)]
            bs[0][0]=1;bs[1][-1]=1
            bs[2]=[a//2 for a in aa];bs[3]=[a-(a//2) for a in aa]
            scope='four selected block subvectors; not a completeness certificate'
        ff=sub(scale(aa,T),[1]);records=[]
        for bb in bs:
            j=T*ev(bb,X)
            assert 0<j<n
            qrem=3*j*(j-1)%(n-1)
            assert qrem
            # Full common divisor is certified only on legal even-row inputs.
            witness=None
            if n%4==0 and 4<=min(j,n-j)<=n//2:
                jj=min(j,n-j)
                z=(n-1)//gcd(n-1,3*jj*(jj-1))
                assert z>1 and z%2==1 and (n*(n-1)*(n-2)//6)%z==0
                witness=str(z)
            item={'b':bb,'j':str(j),'first_remainder':str(qrem),'odd_divisor_Z1':witness}
            if route=='fast':
                rr=3**k*resultant(ff,bb)*resultant(ff,sub(aa,bb))
                assert rr and abs(rr)<n-1 and 2**k*abs(rr)<=(3*T*T*S2*S2)**k
                item['resultant_product']=str(rr)
            else:
                gg=scale(mul(bb,sub(scale(bb,T),[1])),3)
                r,q=pseudorem(gg,ff,k+1)
                assert r!=[0] and 0<abs(ev(r,X))<n-1
                item['pseudo_remainder']=r
            records.append(item)
        rows.append({'p':p,'f':f,'k':k,'a':aa,'e':e,'n':str(n),'route':route,
                     'cutoff':str(cutoff),'scope':scope,'records':records})
    write('row-examples.json',rows)
    # Full original binomial regression for the source valuation/divisor bridge.
    zchecks=0;pchecks=0;prime_list=[p for p in range(3,100) if prime(p)]
    for n in range(8,401,4):
        c3=comb(n,3)
        for j in range(4,n//2+1):
            cj=comb(n,j)
            z=(n-1)//gcd(n-1,3*j*(j-1))
            assert gcd(c3,cj)%z==0 and z%2==1;zchecks+=1
            for p in prime_list:
                if c3%p:continue
                a=carry_valuation(n,j,p)
                aa=0;cc=cj
                while cc%p==0:aa+=1;cc//=p
                assert a==aa;pchecks+=1
    write('original-regression.json',{'binomial_pairs':zchecks,'complete_odd_prime_valuations':pchecks,'prime_range_upper':97,
          'non_example':{'n':1180,'j':525,'p':5,'digits_n_over_p':[1,2,4,1],
          'digits_j_over_p':[0,1,4,0],'W1':True,'W2_remainder':662,
          'actual_gcd':gcd(comb(1180,3),comb(1180,525))}})
    print(json.dumps({'weighted':len(weighted),**counts,'row_examples':len(rows),
      'row_partition_checks':sum(len(r['records']) for r in rows),'binomial_pairs':zchecks,'prime_checks':pchecks},sort_keys=True))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);args=p.parse_args();main(args.out)
