"""Direct parent reconstruction of the remaining non-dyadic b=3 cases."""
from math import gcd,isqrt
from pathlib import Path
import hashlib,json
import numpy as np
from mirror_period_sieve import primes_and_spf,order2,x_values
from mirror_cover_certificate import no_cubic_root

ROOT=Path(__file__).resolve().parent


def main():
    mod9=[]
    for m,h in ((7,1),(5,2)):
        for epsilon,xs in ((1,(2,5)),(-1,(4,7))):
            for x in xs:
                d=x-epsilon
                values=[(4*u*(m*m*u-3*d)*(m*m*u-6*d)-(h*d-9*u)*(x*x-2))%9 for u in range(9)]
                assert all(values)
                mod9.append({'m':m,'h':h,'epsilon':epsilon,'x_mod9':x,'values':values})
    L=2520
    ss=np.array([s for s in range(L) if s%6 in (3,5)],dtype=np.int64)
    ps,spf=primes_and_spf(1000)
    masks=[]
    for p in ps:
        if gcd(p,2*3*5*29)!=1:continue
        order=order2(p,spf)
        if L%order:continue
        good=x_values(p)
        allowed=np.array([good[-5*pow(2,r,p)%p] for r in range(order)],dtype=np.bool_)
        mask=int.from_bytes(np.packbits(~allowed[ss%order],bitorder='little').tobytes(),'little')
        masks.append((p,order,mask))
    remaining=(1<<len(ss))-1;covers=[]
    while remaining:
        p,order,mask=max(masks,key=lambda z:(z[2]&remaining).bit_count())
        new=remaining&mask
        assert new,'No complete finite cover; no theorem'
        indices=[]
        while new:
            bit=new&-new;indices.append(bit.bit_length()-1);new-=bit
        covers.append({'p':p,'m':order,'bad_exponent_residues':sorted({int(ss[i]%order) for i in indices})})
        remaining&=~mask
    live=set(map(int,ss));tests=0
    for rec in covers:
        p,order=rec['p'],rec['m']
        assert all(p%r for r in range(2,isqrt(p)+1)) and pow(2,order,p)==1 and L%order==0
        bad=set(rec['bad_exponent_residues'])
        for r in bad:
            assert no_cubic_root(-5*pow(2,r,p)%p,p)
            tests+=1
        live={s for s in live if s%order not in bad}
    assert not live
    output={'status':'PASS','scope':'All m7/h1 and m5/h2 sign cases by mod9; m5/epsilon=-/h1 by a complete exponent-period cover',
            'mod9_cases':mod9,'m5_minus_period':L,'m5_minus_prime_covers':covers,'direct_cubic_tests':tests,
            'surviving_exponent_classes':[],
            'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (ROOT/'b3_remaining_small_cases.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','mod9_tables':len(mod9),'period':L,'prime_covers':len(covers),'cubic_tests':tests,'survivors':0}))


if __name__=='__main__':main()
