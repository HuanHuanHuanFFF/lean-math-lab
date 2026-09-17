"""Finite implementation diagnostics; none of these scans proves an infinite statement."""
import json,math,time,argparse
from pathlib import Path
from common import *

def main(out):
    start=time.monotonic();stats={'legal_target_configurations':0,'missing_slot_accepted_and_true_gcd':0,'small_row_consumers':0,'canonical_two_base_examples':0,'canonical_noninteger_examples':0}
    for i in (5,6):
        for n in range(2*(i+1),1001):
            if not scope(n,i):continue
            q3=(n-3)//small_part(n-3,i)
            if len(factor_small(q3))<=3:stats['small_row_consumers']+=1
            for j in range(i+1,n//2+1):
                stats['legal_target_configurations']+=1
                accepted=missing_slot_consumer(n,j,i)
                if accepted:
                    assert has_common(n,j,i);stats['missing_slot_accepted_and_true_gcd']+=1
                g=math.gcd(n,j);s=small_part(n-1,i);num=s*j*(n-j);den=g*g*(n-1)
                if num%den:
                    assert has_common(n,j,i);stats['canonical_noninteger_examples']+=1
                else:
                    t=num//den
                    eligible=sum((p>=7)or(i==5 and p==5 and e>=2) for p,e in factor_small(t))
                    if eligible<=2:
                        assert has_common(n,j,i);stats['canonical_two_base_examples']+=1
    certs=json.loads((ROOT/'evidence/polynomials.json').read_text());partial=0;divchecks=0
    for n in range(12,111):
        qs=[(n-r)//small_part(n-r,5)for r in range(5)]
        fs=[factor_small(q)for q in qs]
        for j in range(6,n//2+1):
            k=n-j;g=math.gcd(n,j)
            for cert in certs:
                m=cert['missing'];D=1;nontrivial=False
                for r,w in ((1,29),(3,20),(4,12)):
                    q=1
                    for p,e in fs[r]:
                        Q=p**e;b=j%Q
                        if b<=r and not(r==3 and b==m):q*=Q
                    if q>1:nontrivial=True
                    D*=q**w
                if nontrivial:
                    F=value(polynomial(cert['poly']),j,k)
                    assert F>0 and F%(g**cert['origin_order']*D)==0
                    partial+=1;divchecks+=1
    # Exact family: multiplication by any base^20 preserves the full congruences.
    for p in (7,11,13):
        assert pow(p,20,24)==1 and pow(p,20,25)==1
    family=[]
    for u,v,w in ((0,0,0),(1,0,0),(0,1,0),(0,0,1),(1,1,1),(2,3,1)):
        Q=7**(20*u+3)*11**(20*v+1)*13**(20*w+8);n=3*Q+3
        assert n%72==18 and n%25==2
        for i in (5,6):
            assert scope(n,i) and (n-3)//small_part(n-3,i)==Q
            for j in (i+1,i+2,12,n//3,n//2):assert missing_slot_consumer(n,j,i)
            for j in (i+1,i+2,12):assert has_common(n,j,i)
        family.append({'u':u,'v':v,'w':w,'n_bits':n.bit_length(),'n':n})
    # Four occupied slots pass the new saturation condition, yet still have actual witnesses.
    n=552831282;j=112305403;q=math.prod((343,11,169,289))
    blocks=[math.gcd(q,j-b)for b in range(4)];assert blocks==[343,11,169,289]
    for i in (5,6):
        assert scope(n,i) and not missing_slot_consumer(n,j,i)
        assert valuation_choose(n,i,7)==3 and valuation_choose(n,j,7)==2
    # Original endpoint p=i=5; reducing Q=125 to 25 loses its carry.
    assert scope(128,5) and valuation_choose(128,5,5)==2 and valuation_choose(128,25,5)==1
    assert 25%125>128%125 and not(25%25>128%25)
    assert not missing_slot_consumer(128,25,4)
    assert not missing_slot_consumer(56,12,6) # D6's mod 5 restriction is essential.
    result={'status':'PASS_REGRESSION','statistics':stats,'partial_avoiding_cases':partial,'complete_power_polynomial_checks':divchecks,'family':family,'four_occupied_slots_boundary':{'n':n,'j':j,'blocks':blocks,'prime_witness':7,'source_valuations':[3,3],'target_valuation':2},'endpoint5':{'n':128,'j':25,'Q':125,'source_v':2,'target_v':1},'seconds':time.monotonic()-start}
    Path(out).write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(json.dumps({k:v for k,v in result.items()if k!='family'},ensure_ascii=False))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',default=str(ROOT/'evidence/regression.json'));a=ap.parse_args();main(a.output)
